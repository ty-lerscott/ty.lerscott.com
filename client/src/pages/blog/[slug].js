import Head from "next/head";
import { dehydrate } from "react-query/hydration";
import { Grid, GridItem, Box } from "@chakra-ui/react";
import { QueryClient, useQueryClient } from "react-query";

import { getMainMenu } from "api/menu/get-menu";
import { GenericHeader } from "components/Header";
import { uniqueWords } from "utils/normalizations";
import { getConfig } from "api/config/get-config";
import { getBlogPostBySlug } from "api/posts/get-posts";
import BlogExcerpt from "components/BlogExcerpt/BlogExcerpt";
import BlogPostHeader from "components/BlogPostHeader/BlogPostHeader";
import BlogFeaturedImage from "components/BlogFeaturedImage/BlogFeaturedImage";

const getPost = (slug) => () => getBlogPostBySlug(slug);
const getEssentialConfigs = () =>
  getConfig(["lastName", "metaTags", "firstName"]);
const createMarkup = (content) => ({ __html: content });

const BlogPost = ({ slug, dehydratedState }) => {
  const {
    tags,
    title,
    content,
    excerpt,
    featuredImage,
    ...headerProps
  } = useQueryClient().getQueryData(`blog-${slug}`);

  const { firstName, lastName, metaTags } = useQueryClient().getQueryData(
    `configs`
  );

  const name = `${firstName} ${lastName}`;

  const keywords = uniqueWords(
    `${tags.map(({ name }) => name).join(",")},${metaTags}`
  );
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
        <meta name="author" content={name} />
        <meta property="og:site_name" content={name} />
        <meta property="og:image" content={featuredImage.large} />
        {/* // TODO: GRAB this from env file instead */}
        <link rel="canonical" href={canonical} />
        <meta name="description" content={excerpt} />
      </Head>
      <Grid gridTemplateColumns="1fr auto" gap={12}>
        <GridItem>
          <BlogPostHeader title={title} {...headerProps} />
          <BlogExcerpt excerpt={excerpt} />
          <BlogFeaturedImage image={featuredImage} />
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
  await queryClient.prefetchQuery("configs", getEssentialConfigs);
  await queryClient.prefetchQuery(`blog-${slug}`, getPost(slug));

  return {
    props: {
      slug,
      dehydratedState: dehydrate(queryClient),
    },
  };
}

export default BlogPost;
