import React from "react";
import { useQueryClient } from "react-query";
import { Img as Image } from "@chakra-ui/react";

const boxStyles = {
  base: "0",
  lg: "215px",
};

const displayStyles = {
  base: "none",
  lg: "block",
};

const ProfileImage = () => {
  const profileImageSrc = useQueryClient().getQueryData("image-profile");

  return (
    <Image
      alt="Profile Photo"
      boxSize={boxStyles}
      src={profileImageSrc}
      display={displayStyles}
    />
  );
};

export default ProfileImage;
