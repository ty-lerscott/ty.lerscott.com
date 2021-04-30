import Head from "next/head";
import { dehydrate } from "react-query/hydration";
import { Grid, GridItem, Box } from "@chakra-ui/react";
import { QueryClient, useQueryClient } from "react-query";

import { getMainMenu } from "api/menu/get-menu";
import { GenericHeader } from "components/Header";
import { getBlogPostBySlug } from "api/posts/get-posts";
import BlogExcerpt from "components/BlogExcerpt/BlogExcerpt";
import BlogPostHeader from "components/BlogPostHeader/BlogPostHeader";

const getPost = (slug) => () => getBlogPostBySlug(slug);

const createMarkup = (content) => ({ __html: content });

const BlogPost = ({ slug, dehydratedState }) => {
  const {
    tags,
    title,
    content,
    excerpt,
    ...headerProps
  } = useQueryClient().getQueryData(`blog-${slug}`);

  const keywords = tags.map(({ name }) => name).join(",");
  const canonical = `https://ty.lerscott.com/blog/${slug}`;

  return (
    <>
      <Head>
        <title>{title}</title>
        <meta name="keywords" content={keywords} />
        <meta property="og:type" content="article" />
        <meta property="og:title" content={title} />
        <meta property="og:description" content={excerpt} />
        <meta property="og:url" content={canonical} />
        {/* TODO: Put this site name in wordpress */}
        <meta name="author" content="Tyler Scott" />
        <meta property="og:site_name" content="Tyler Scott" />
        {/* TODO: add some sort of unsplash image or something */}
        {/* <meta property="og:image" content="LINK TO THE IMAGE FILE" /> */}
        {/* // TODO: GRAB this from env file instead */}
        <link rel="canonical" href={canonical} />
        <meta name="description" content={excerpt} />
      </Head>
      <Grid gridTemplateColumns="1fr auto" gap={12}>
        <GridItem>
          <BlogPostHeader title={title} {...headerProps} />
          <BlogExcerpt excerpt={excerpt} />
          <Box
            as="main"
            mt={6}
            className="wp-content"
            dangerouslySetInnerHTML={createMarkup(content)}
          />
        </GridItem>
        <GridItem>
          <GenericHeader />
        </GridItem>
      </Grid>
    </>
  );
};

export async function getServerSideProps({ params: { slug } }) {
  const queryClient = new QueryClient();

  await queryClient.prefetchQuery("main-menu", getMainMenu);
  await queryClient.prefetchQuery(`blog-${slug}`, getPost(slug));

  return {
    props: {
      slug,
      dehydratedState: dehydrate(queryClient),
    },
  };
}

export default BlogPost;
