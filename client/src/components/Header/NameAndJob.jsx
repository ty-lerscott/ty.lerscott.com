import React from "react";
import { useQueryClient } from "react-query";
import { Heading, Box, Text } from "@chakra-ui/react";

const headingStyles = {
  as: "h1",
  fontSize: {
    lg: "7xl",
    md: "6xl",
    base: "5xl",
  },
  lineHeight: 1,
  letterSpacing: 6,
  fontWeight: "bold",
  flexDirection: "column",
  display: {
    lg: "flex",
    base: "flex",
  },
};
const NameAndJob = () => {
  const { firstName, lastName, jobTitle } = useQueryClient().getQueryData(
    "configs"
  );

  return (
    <Box>
      <Heading {...headingStyles}>
        <Text as="span">{firstName}</Text> <Text as="span">{lastName}</Text>
      </Heading>
      <Heading mt={2} as="h2" fontSize="lg" color="theme.secondaryTextColor">
        {jobTitle}
      </Heading>
    </Box>
  );
};

export default NameAndJob;
