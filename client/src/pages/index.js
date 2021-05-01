import Head from "next/head";
import { QueryClient } from "react-query";
import { dehydrate } from "react-query/hydration";

import Blog from "components/Blog";
import { HomeHeader } from "components/Header";
import { stripHtml } from "utils/normalizations";
import { getMainMenu } from "api/menu/get-menu";
import { getBlogPosts } from "api/posts/get-posts";
import { getConfig } from "api/config/get-config";
import getImageBySlug from "api/images/get-image-by-slug";

const getProfileImage = () => getImageBySlug("profile-photo");
const getEssentialConfigs = () =>
  getConfig([
    "github",
    "twitter",
    "lastName",
    "jobTitle",
    "location",
    "metaTags",
    "linkedin",
    "firstName",
    "metaDescription",
  ]);
const getPosts = () => getBlogPosts();

const Home = ({ metaContent }) => {
  const { twitter, metaTags, lastName, firstName, metaDescription, ...rest } =
    metaContent || {};

  const name = `${firstName} ${lastName}`;

  return (
    <>
      <Head>
        <title>{name}</title>
        <meta property="og:title" content={name} />
        {/* <meta name="twitter:card" content="summary" /> */}
        <meta name="twitter:title" content={name} />
        <meta name="keywords" content={metaTags} />
        <meta name="twitter:creator" content={twitter} />
        <meta name="description" content={metaDescription} />
        <meta property="og:description" content={metaDescription} />
        <meta name="twitter:description" content={metaDescription} />
      </Head>
      <HomeHeader />
      <Blog mt={8} />
    </>
  );
};

const getMetaContent = (dehydratedState) => {
  const { queries } = dehydratedState;

  const configs = queries.find((query) => query.queryKey === "configs");

  if (!configs) {
    throw new Error("No configs were found from dehydrated state");
  }

  return {
    ...configs.state.data,
    metaDescription: stripHtml(configs.state.data.metaDescription),
  };
};

export async function getServerSideProps(context) {
  const queryClient = new QueryClient();

  // TODO: Move query keys to a constant file within api domain so both api hook and prefetch can utilize it
  await queryClient.prefetchQuery("blog", getPosts);
  await queryClient.prefetchQuery("main-menu", getMainMenu);
  await queryClient.prefetchQuery("configs", getEssentialConfigs);
  await queryClient.prefetchQuery("image-profile", getProfileImage); // TODO: is this __really__ required for prerendering?

  const dehydratedState = dehydrate(queryClient);

  return {
    props: {
      dehydratedState,
      metaContent: getMetaContent(dehydratedState),
    },
  };
}

export default Home;
