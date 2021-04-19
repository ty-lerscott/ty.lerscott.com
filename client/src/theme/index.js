import global from "./global";
import * as base from "./base";
import { extendTheme } from "@chakra-ui/react";
import chakraDefaultTheme from "@chakra-ui/theme";

import * as components from "components/styles";

// use this to extend the base theme of chakra, this adds on top of what is defined in baseConfig
const extendedTheme = {
  initialColorMode: "dark",
  useSystemColorMode: false,
  styles: {
    global,
  },
  remToPixels: (rem, baseSize = 16) =>
    !rem ? 0 : `${baseSize * Number(rem.replace("rem", ""))}`,
};

// use this to override base themes from Chakra
const baseConfig = {
  ...chakraDefaultTheme,
  ...base,
  components,
};

export default extendTheme(extendedTheme, baseConfig);
