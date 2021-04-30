import Head from "next/head";
import PropTypes from "prop-types";
import React, { forwardRef } from "react";
import { Container as ChakraContainer, useToken } from "@chakra-ui/react";

import styleProps from "./Container.styles";

const Container = forwardRef(
  ({ fullContainerHeight, children, ...props }, ref) => {
    const background = useToken("colors", "theme.bgColor");
    return (
      <ChakraContainer
        {...styleProps(fullContainerHeight)}
        {...props}
        ref={ref}
      >
        <Head>
          <meta name="theme-color" content={background} />
        </Head>
        {children}
      </ChakraContainer>
    );
  }
);

Container.propTypes = {
  children: PropTypes.node,
  fullContainerHeight: PropTypes.bool,
};

export default Container;
