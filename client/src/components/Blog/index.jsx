import React from "react";
import { useQueryClient } from "react-query";
import { Box, Grid } from "@chakra-ui/react";

import PostGridItem from "./PostGridItem";

const gridStyleProps = {
  templateColumns: "repeat(4, 1fr)",
  gap: 0.5,
};

const Blog = (props) => {
  const posts = useQueryClient().getQueryData("blog");

  return (
    <Box
      p={0.5}
      as="main"
      {...props}
      bgGradient="linear(to-br, theme.primary.400, theme.primary.999)"
    >
      <Grid {...gridStyleProps}>
        {posts.map((post) => (
          <PostGridItem key={post.slug} {...post} />
        ))}
      </Grid>
    </Box>
  );
};

export default Blog;
