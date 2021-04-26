import React from "react";
import PropTypes from "prop-types";
import { Box, Tag, Heading, Text, useTheme } from "@chakra-ui/react";

const BlogHeader = ({ title, date, category }) => {
  return (
    <Box mb={8}>
      <Tag>{category.name}</Tag>
      <Heading as="h1" fontSize="5xl" mt={4} mb={2}>
        {title}
      </Heading>
      <Text fontSize="sm" color="theme.secondaryTextColor">
        {date}
      </Text>
    </Box>
  );
};

BlogHeader.propTypes = {};

export default BlogHeader;
