import { request, gql } from "graphql-request";

export const getMainMenu = async () => {
  try {
    const { menu } = await request(
      process.env.NEXT_PUBLIC_WORDPRESS_API_URL,
      gql`
        {
          menu(id: "Main Menu", idType: NAME) {
            menuItems {
              nodes {
                url
                label
                target
              }
            }
          }
        }
      `
    );

    return menu?.menuItems?.nodes || [];
  } catch (err) {
    console.log(err);
  }
};
