import { useQuery } from "react-query";

import { request, gql } from "graphql-request";

/**
 * @param {[String]} configs
 * @returns {Configs}
 */
export const getConfig = async (configurations = []) => {
  try {
    const { configs } = await request(
      process.env.NEXT_PUBLIC_WORDPRESS_API_URL,
      gql`
        {
          configs {
            ${configurations.join(" ")}
          }
        }
      `
    );

    return configs || {};
  } catch (err) {
    console.log(err);
  }
};

export const useGetConfig = (configurations = []) =>
  useQuery("config", async () => {
    const config = await getConfig(configurations);

    return config;
  });
