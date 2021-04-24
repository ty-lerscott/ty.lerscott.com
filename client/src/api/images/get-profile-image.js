import { useQuery } from "react-query";

import getImageBySlug from "./get-image-by-slug";

export const useGetProfileImage = () =>
  useQuery("image-profile", async () => {
    const url = await getImageBySlug("profile-photo");

    console.log("WHAT IS THE RESPONSE TYLER", url);

    return url;
  });
