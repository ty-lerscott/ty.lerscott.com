import React from "react";
import { GridItem, Flex, Text } from "@chakra-ui/react";

import Link from "components/NextChakraLink";

import { categories } from "constants/index";

const postGridItemStyles = {
  p: 4,
  display: "grid",
  alignItems: "center",
  bgColor: "theme.primary.999",
  gridTemplateRows: "auto auto 1fr",
};

const linkStyles = {
  mt: 10,
  mb: 14,
  textAlign: "center",
  justify: "center",
  alignItems: "center",
  _hover: {
    color: "theme.secondary.60",
  },
};

const PostGridItem = (post) => {
  const {
    slug,
    date,
    title,
    category: { name: categoryName },
  } = post;

  return (
    <GridItem {...postGridItemStyles}>
      <Text
        fontSize="xs"
        letterSpacing="1px"
        fontWeight="semibold"
        textTransform="uppercase"
        color={categories[categoryName]}
      >
        {categoryName}
      </Text>
      <Text fontSize="sm" color="theme.secondaryTextColor">
        {date}
      </Text>
      <Flex>
        <Link as={`/blog/${slug}`} href="/blog/[slug]" {...linkStyles}>
          {title}
        </Link>
      </Flex>
    </GridItem>
  );
};

export default PostGridItem;
