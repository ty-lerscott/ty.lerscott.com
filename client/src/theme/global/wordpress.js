const wordpress = {
  ".wp-content": {
    ":first-child": {
      mb: 8,
    },
    "* + *": {
      mt: 4,
    },
    "h2 ~ p": {
      mb: 8,
    },
    h2: {
      color: "theme.secondaryHeaderTextColor",
    },
    "h3, h4, h5, h6": {
      color: "theme.tertiaryHeaderTextColor",
    },
    figure: {
      textAlign: "center",
      a: {
        display: "inline-block",
      },
    },
  },
  ".FeaturedImageCaption": {
    textAlign: "center",
    fontSize: "xs",
    letterSpacing: "1px",
    color: "theme.secondaryTextColor",
    a: {
      color: "theme.textColor",
      _hover: {
        color: "theme.secondaryTextColor",
      },
    },
  },
};

export default wordpress;
