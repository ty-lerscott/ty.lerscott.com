import { Box } from "@chakra-ui/react";
import PropTypes from "prop-types";

const BlogExcerpt = ({ excerpt, ...props }) => (
  <Box
    as="blockquote"
    dangerouslySetInnerHTML={{ __html: excerpt }}
    {...props}
  />
);

BlogExcerpt.propTypes = {
  excerpt: PropTypes.string,
};

export default BlogExcerpt;
