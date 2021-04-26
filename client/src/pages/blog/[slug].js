import Head from "next/head";
import { dehydrate } from "react-query/hydration";
import { Grid, GridItem, Box } from "@chakra-ui/react";
import { QueryClient, useQueryClient } from "react-query";

import { BlogHeader } from "./components";
import { getMainMenu } from "api/menu/get-menu";
import { GenericHeader } from "components/Header";
import { getBlogPostBySlug } from "api/posts/get-posts";

const getPost = (slug) => () => getBlogPostBySlug(slug);

const createMarkup = (content) => ({ __html: content });

const BlogPost = ({ slug, dehydratedState }) => {
  const { content, title, ...headerProps } = useQueryClient().getQueryData(
    `blog-${slug}`
  );
  return (
    <>
      <Head>
        <title>{title}</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <Grid gridTemplateColumns="1fr auto" gap={12}>
        <GridItem>
          <BlogHeader title={title} {...headerProps} />
          <Box
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
