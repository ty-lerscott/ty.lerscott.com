import clone from "clone";
import { useQuery } from "react-query";
import { request, gql } from "graphql-request";

import { formatDateString } from "utils/Date";

const GENERIC_POST_TYPE = `
  title,
  date,
  content(format: RENDERED)
  category: categories(first: 1, where: {orderby: TERM_ORDER}) {
    nodes {
      name
      slug
    }
  }
`;

const normalizePost = (post) => {
  const clonedPost = clone(post);
  clonedPost.category = clonedPost.category.nodes[0];
  clonedPost.date = formatDateString(clonedPost.date, "MMM d");

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
            ${GENERIC_POST_TYPE}
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

const postQuery = gql`
  query getPost($slug: ID!){
    post(id: $slug, idType: SLUG) {
      ${GENERIC_POST_TYPE}
    }
  }
`;

export const getBlogPostBySlug = async (slug) => {
  try {
    const variables = { slug };

    const { post } = await request(
      process.env.NEXT_PUBLIC_WORDPRESS_API_URL,
      postQuery,
      variables
    );

    return normalizePost(post);
  } catch (err) {
    console.log(err);
  }
};

export const useGetBlogPosts = () =>
  useQuery("blog", async () => {
    const posts = await getBlogPosts();

    return posts;
  });

export const useGetBlogPostBySlug = (slug) =>
  useQuery(`blog-${slug}`, async () => {
    const post = await getBlogPostBySlug(slug);

    return post;
  });
