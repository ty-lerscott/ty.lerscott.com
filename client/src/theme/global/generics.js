const generics = {
  svg: {
    display: "inline-block",
  },
  body: {
    bgColor: "theme.bgColor",
    color: "theme.textColor",
  },
  blockquote: {
    py: 2,
    px: 4,
    borderLeftWidth: 2,
    fontStyle: "italic",
    color: "theme.secondaryTextColor",
  },
  "h1,h2,h3,h4,h5,h6": {
    fontFamily: "Montserrat",
    color: "theme.headerTextColor",
  },
  h2: {
    fontSize: "xl",
  },
  h3: {
    fontSize: "lg",
  },
  h4: {
    fontSize: "base",
  },
  h5: {
    fontSize: "sm",
  },
  h6: {
    fontSize: "xs",
  },
};

export default generics;
