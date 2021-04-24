import React from "react";
import Link from "next/link";
import PropTypes from "prop-types";
import { GridItem, Flex, Text, Box } from "@chakra-ui/react";

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
      <Flex {...linkStyles}>
        <Link href={`/blog/${slug}`}>
          <Box as="a" textAlign="center" cursor="pointer">
            {title}
          </Box>
        </Link>
      </Flex>
    </GridItem>
  );
};

export default PostGridItem;
