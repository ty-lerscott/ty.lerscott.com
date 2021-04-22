import Head from "next/head";
import { Box, Container, Heading, Text } from "@chakra-ui/react";

const styles = {};

const Home = () => {
  return (
    <Container h="100vh" w="100vw">
      <Head>
        <title>Tyler Scott | Javascript Software Engineer</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <Box
        h="100%"
        as="main"
        bg="#1a221b"
        display="flex"
        color="#e0d6c6"
        alignItems="center"
        flexDirection="column"
        justifyContent="center"
      >
        <Heading as="h1" fontSize="2xl">
          ty.lerscott.com
        </Heading>

        <Text>Coming Soon</Text>
      </Box>
    </Container>
  );
};

export default Home;
