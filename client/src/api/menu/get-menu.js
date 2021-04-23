import { useQuery } from "react-query";

import { request, gql } from "graphql-request";

export const getMainMenu = async () => {
  try {
    const { menus } = await request(
      process.env.NEXT_PUBLIC_WORDPRESS_API_URL,
      gql`
        {
          menus(where: { slug: "main-menu" }) {
            nodes {
              menuItems {
                nodes {
                  url
                  label
                  target
                  path
                }
              }
            }
          }
        }
      `
    );

    return menus?.nodes?.[0]?.menuItems?.nodes || [];
  } catch (err) {
    console.log(err);
  }
};

export const useGetMainMenu = () =>
  useQuery("main-menu", async () => {
    const menu = await getMainMenu();

    return menu;
  });
