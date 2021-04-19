import { createBreakpoints } from "@chakra-ui/theme-tools";

const breakpoints = createBreakpoints({
  sm: "30rem", // 480px
  md: "48rem", // 768px
  lg: "62rem", // 992px
  xl: "80rem", // 1280px
  "2xl": "96rem", // 1536px;
});

export default breakpoints;
