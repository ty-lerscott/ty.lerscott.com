import clone from "clone";
import { useQuery } from "react-query";
import { request, gql } from "graphql-request";

import { formatDateString } from "utils/Date";

const normalizePost = (post) => {
  const clonedPost = clone(post);
  clonedPost.category = clonedPost.category.nodes[0];
  clonedPost.date = formatDateString(clonedPost.date, "MMM d, yyyy");

  return clonedPost;
};

export const getBlogPosts = async ({ last = 50 } = { last: 50 }) => {
  try {
    const { posts } = await request(
      process.env.NEXT_PUBLIC_WORDPRESS_API_URL,
      gql`
      {
        posts(last: ${last}, where: {orderby: {field: DATE, order: DESC}}) {
          nodes {
            slug
            date
            title
            category: categories(first: 1, where: {orderby: TERM_ORDER}) {
              nodes {
                id
                name
                slug
              }
            }
          }
        }
      }
      `
    );

    return (posts?.nodes || []).map(normalizePost);
  } catch (err) {
    console.log(err);
  }
};

export const useGetBlogPosts = () =>
  useQuery("blog", async () => {
    const posts = await getBlogPosts();

    return posts;
  });
