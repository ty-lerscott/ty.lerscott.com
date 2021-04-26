import React from "react";
import NextLink from "next/link";
import { Link as ChakraLink } from "@chakra-ui/react";

//  Has to be a new component because both chakra and next share the `as` keyword
const NextChakraLink = ({
  as,
  href,
  scroll,
  replace,
  shallow,
  prefetch,
  children,
  ...chakraProps
}) => (
  <NextLink
    as={as}
    href={href}
    passHref={true}
    scroll={scroll}
    shallow={shallow}
    replace={replace}
    prefetch={prefetch}
  >
    <ChakraLink {...chakraProps}>{children}</ChakraLink>
  </NextLink>
);

export default NextChakraLink;
