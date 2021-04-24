import { useQuery } from "react-query";

import getImageBySlug from "./get-image-by-slug";

//TODO: not in use currently, can be used if not needed for SSR
export const useGetProfileImage = () =>
  useQuery("image-profile", async () => {
    const url = await getImageBySlug("profile-photo");

    // console.log("WHAT IS THE RESPONSE TYLER", url);

    return url;
  });
