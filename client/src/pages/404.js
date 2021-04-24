import React from "react";
import { Flex, Box, Heading, Text, useToken } from "@chakra-ui/react";

const Custom404Page = () => {
  const [primary200, primary300] = useToken("colors.theme", [
    "primary.200",
    "primary.300",
  ]);

  return (
    <Flex justify="center" alignItems="center" h="100%">
      <Heading as="h1" fontSize="xl">
        404
      </Heading>
      <Box
        w="1px"
        h="1.25rem"
        m={4}
        bgColor={primary200}
        borderRightWidth="1px"
        borderRightColor="white"
      />
      <Text fontSize="sm" color={primary300}>
        This page could not be found.
      </Text>
    </Flex>
  );
};

export const getStaticProps = (context) => ({
  props: {
    fullContainerHeight: true,
  }, // will be passed to the page component as props
});

export default Custom404Page;
