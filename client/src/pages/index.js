import Head from "next/head";
import { QueryClient } from "react-query";
import { dehydrate } from "react-query/hydration";

import Header from "components/Header";
import { getMainMenu } from "api/menu/get-menu";

const Home = ({ dehydratedState }) => {
  return (
    <>
      <Head>
        <title>Tyler Scott | Javascript Software Engineer</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <Header />
    </>
  );
};

export async function getServerSideProps(context) {
  const queryClient = new QueryClient();

  await queryClient.prefetchQuery("main-menu", getMainMenu);

  return {
    props: {
      dehydratedState: dehydrate(queryClient),
    },
  };
}

export default Home;
