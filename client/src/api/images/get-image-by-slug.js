import { request, gql } from "graphql-request";

const getImageBySlug = async (slug) => {
  try {
    const { image } = await request(
      process.env.NEXT_PUBLIC_WORDPRESS_API_URL,
      gql`
        {
          image: mediaItem(id: "${slug}", idType: SLUG) {
            url: sourceUrl(size: LARGE)
          }
        }
      `
    );

    return image?.url || "";
  } catch (err) {
    console.log(err);
  }
};

export default getImageBySlug;
