import PropTypes from "prop-types";
import React, { forwardRef } from "react";
import { Container as ChakraContainer } from "@chakra-ui/react";

import styleProps from "./Container.styles";

const Container = forwardRef(({ fullContainerHeight, ...props }, ref) => (
  <ChakraContainer {...styleProps(fullContainerHeight)} {...props} ref={ref} />
));

Container.propTypes = {
  fullContainerHeight: PropTypes.bool,
};

export default Container;
