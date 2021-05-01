import React from "react";
import PropTypes from "prop-types";
import { Box, Image } from "@chakra-ui/react";

const BlogFeaturedImage = ({ image }) => {
  return (
    <Box>
      <Image
        src={image.large}
        fallbackSrc={image.thumbnail}
        alt={image.alt}
        w="100%"
        mt={8}
        mb={6}
        mx="auto"
        objectFit="cover"
      />
      <Box
        dangerouslySetInnerHTML={{ __html: image.caption }}
        className="FeaturedImageCaption"
      />
    </Box>
  );
};
BlogFeaturedImage.propTypes = {
  image: PropTypes.shape({
    alt: PropTypes.string,
    large: PropTypes.string,
    medium: PropTypes.string,
    caption: PropTypes.string,
    thumbnail: PropTypes.string,
  }),
};

export default BlogFeaturedImage;
