import React from "react";
import { useQueryClient } from "react-query";
import { Heading, Box, useTheme } from "@chakra-ui/react";
// ,
//
//
//   0.4rem 0.4rem ${theme.headerColors[4]},
const headingStyles = (theme) => ({
  as: "h1",
  fontSize: {
    lg: "7xl",
    md: "6xl",
    base: "5xl",
  },
  lineHeight: 1,
  letterSpacing: 12,
  fontWeight: "bold",
  color: theme.headerColors[0],
  textShadow: `
    0.1rem 0.1rem 0.025rem ${theme.headerColors[1]},
    0.2rem 0.2rem 0.05rem ${theme.headerColors[2]},
    0.3rem 0.3rem 0.075rem ${theme.headerColors[3]},
    0.4rem 0.4rem 0.1rem ${theme.headerColors[4]};
  // 0.65rem 0.65rem 0.2rem rgba(0,0,0, 0.25);
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
      <Heading mt={4} as="h2" fontSize="lg" color="theme.secondaryTextColor">
        {jobTitle}
      </Heading>
    </Box>
  );
};

export default NameAndJob;
