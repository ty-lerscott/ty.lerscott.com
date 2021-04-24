import Head from "next/head";
import { QueryClient } from "react-query";
import { dehydrate } from "react-query/hydration";

import Blog from "components/Blog";
import Header from "components/Header";
import { getMainMenu } from "api/menu/get-menu";
import { getBlogPosts } from "api/posts/get-posts";
import { getConfig } from "api/config/get-config";

import getImageBySlug from "api/images/get-image-by-slug";

const getProfileImage = () => getImageBySlug("profile-photo");
const getEssentialConfigs = () =>
  getConfig(["firstName", "lastName", "jobTitle"]);
const getPosts = () => getBlogPosts();

const Home = ({ dehydratedState }) => {
  return (
    <>
      <Head>
        <title>Tyler Scott | Javascript Software Engineer</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <Header />
      <Blog mt={8} />
    </>
  );
};

export async function getServerSideProps(context) {
  const queryClient = new QueryClient();

  // TODO: Move query keys to a constant file within api domain so both api hook and prefetch can utilize it
  await queryClient.prefetchQuery("main-menu", getMainMenu);
  await queryClient.prefetchQuery("configs", getEssentialConfigs);
  await queryClient.prefetchQuery("image-profile", getProfileImage); // TODO: is this __really__ required for prerendering?
  await queryClient.prefetchQuery("blog", getPosts);

  return {
    props: {
      dehydratedState: dehydrate(queryClient),
    },
  };
}

export default Home;
