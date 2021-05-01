import clone from "clone";
import { useQuery } from "react-query";
import { request, gql } from "graphql-request";

import { formatDateString } from "utils/Date";
import { stripHtml } from "utils/normalizations";

const FEATURED_IMAGE_TYPES = `
featuredImage {
  node {
    alt: altText
    caption(format: RENDERED)
    large: sourceUrl(size: LARGE)
    medium: sourceUrl(size: MEDIUM)
    thumbnail: sourceUrl(size: THUMBNAIL)
  }
}
`;

const CATEGORY_TYPE = `
  category: categories(first: 1, where: {orderby: TERM_ORDER}) {
    nodes {
      name
      slug
    }
  }
`;

const TAG_TYPE = `
  tags {
    nodes {
      name,
      slug
    }
  }
`;

const GENERIC_POST_TYPE = `
  date,
  title,
  excerpt(format: RENDERED),
  content(format: RENDERED),
`;

const normalizePost = (post) => {
  const clonedPost = clone(post);
  clonedPost.tags = clonedPost.tags.nodes || [];
  clonedPost.category = clonedPost.category.nodes[0] || {};
  clonedPost.date = formatDateString(clonedPost.date, "MMM d");
  clonedPost.excerpt = stripHtml(clonedPost?.excerpt);
  clonedPost.featuredImage = clonedPost.featuredImage.node;

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
            ${CATEGORY_TYPE}
            ${TAG_TYPE}
            ${FEATURED_IMAGE_TYPES}
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
      ${CATEGORY_TYPE}
      ${TAG_TYPE}
      ${FEATURED_IMAGE_TYPES}
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
