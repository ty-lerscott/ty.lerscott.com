const activeStyles = {
  color: "theme.bgColor",
  bgColor: "theme.linkHoverColor",
};

const baseStyle = {
  px: 0.5,
  d: "inline-block",
  transition: `all 0.15s ease-out`,
  _hover: activeStyles,
  _focus: {
    boxShadow: "none",
    outline: "1px solid",
    outlineColor: "theme.linkHoverColor",
  },
  "& svg": {
    d: "inline-block",
    verticalAlign: "initial",
  },
};

const variants = {
  active: activeStyles,
};

export default {
  baseStyle,
  variants,
};
