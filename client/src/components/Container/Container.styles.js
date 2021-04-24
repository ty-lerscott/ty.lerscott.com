const styles = (fullContainerHeight) => ({
  px: 10,
  py: 10,
  mx: "auto",
  h: fullContainerHeight ? "100vh" : "auto",
  maxW: {
    base: "container.base",
    md: "container.tablet",
    lg: "container.desktop",
  },
});

export default styles;
