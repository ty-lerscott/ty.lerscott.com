const wordpress = {
  ".wp-content": {
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
  },
};

export default wordpress;
