import React, { useRef } from "react";
import { Hydrate } from "react-query/hydration";
import { ChakraProvider } from "@chakra-ui/react";
import { ReactQueryDevtools } from "react-query/devtools";
import { QueryClient, QueryClientProvider } from "react-query";

import Container from "components/Container";

import theme from "theme";

const isDev = process.env.NODE_ENV === "development";

import "@fontsource/montserrat/100.css";
import "@fontsource/montserrat/200.css";
import "@fontsource/montserrat/300.css";
import "@fontsource/montserrat/400.css";
import "@fontsource/montserrat/500.css";
import "@fontsource/montserrat/600.css";
import "@fontsource/montserrat/700.css";
import "@fontsource/montserrat/800.css";
import "@fontsource/montserrat/900.css";
import "@fontsource/courier-prime/400.css";
import "@fontsource/courier-prime/700.css";

const MyApp = ({ Component, pageProps }) => {
  const queryClientRef = useRef();

  if (!queryClientRef.current) {
    queryClientRef.current = new QueryClient();
  }

  return (
    <QueryClientProvider client={queryClientRef.current}>
      <Hydrate state={pageProps.dehydratedState}>
        <ChakraProvider theme={theme}>
          <Container>
            <Component {...pageProps} />
          </Container>
        </ChakraProvider>
        {isDev && <ReactQueryDevtools initialIsOpen />}
      </Hydrate>
    </QueryClientProvider>
  );
};

export default MyApp;
