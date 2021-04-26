import clone from "clone";
import theme from "@chakra-ui/theme";

const defaultTagStyles = theme.components.Tag;

const baseStyle = {
  bgColor: "teal",
  // px: 0.5,
  // d: "inline-block",
  // transition: `all 0.15s ease-out`,
  // _hover: activeStyles,
  // _focus: {
  //   boxShadow: "none",
  //   outline: "1px solid",
  //   outlineColor: "theme.linkHoverColor",
  // },
  // "& svg": {
  //   d: "inline-block",
  //   verticalAlign: "initial",
  // },
};

const tag1 = {
  bgColor: "teal",
};

const tag2 = {};

const variants = {
  tag1,
  tag2,
};

export default {
  baseStyle,
  variants,
  defaultProps: tag1,
};
