import React, { forwardRef } from "react";
import { Container as ChakraContainer } from "@chakra-ui/react";

import styleProps from "./Container.styles";

const Container = forwardRef((props, ref) => (
  <ChakraContainer {...styleProps} {...props} ref={ref} />
));

export default Container;
