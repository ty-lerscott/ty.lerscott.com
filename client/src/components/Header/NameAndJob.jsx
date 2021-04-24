import React from "react";
import { useQueryClient } from "react-query";
import { Heading, Box, useTheme } from "@chakra-ui/react";

const headingStyles = (theme) => ({
  as: "h1",
  fontSize: {
    lg: "7xl",
    md: "6xl",
    base: "5xl",
  },
  lineHeight: 1,
  letterSpacing: 6,
  fontWeight: "bold",
  textShadow: `
  0.1rem 0.1rem ${theme.primary["200"]},
  0.2rem 0.2rem ${theme.primary["300"]},
  0.3rem 0.3rem ${theme.primary["400"]},
  0.4rem 0.4rem ${theme.primary["500"]},
  0.65rem 0.65rem 0.2rem rgba(0,0,0, 0.25);
  `,
});

const NameAndJob = () => {
  const { colors } = useTheme();
  const { firstName, lastName, jobTitle } = useQueryClient().getQueryData(
    "configs"
  );

  const name = `${firstName} ${lastName}`;

  return (
    <Box>
      <Heading {...headingStyles(colors.theme)} data-name={name}>
        {name}
      </Heading>
      <Heading mt={2} as="h2" fontSize="lg" color="theme.secondaryTextColor">
        {jobTitle}
      </Heading>
    </Box>
  );
};

export default NameAndJob;
