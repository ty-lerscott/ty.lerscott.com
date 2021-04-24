import React from "react";
import { Grid, GridItem } from "@chakra-ui/react";

import NameAndJob from "./NameAndJob";
import Navigation from "./Navigation";
import ProfileImage from "./ProfileImage";

const gridTemplateColumnStyles = {
  base: "auto 1fr auto",
};

const Header = () => {
  return (
    <Grid templateColumns={gridTemplateColumnStyles} gap={12}>
      <GridItem>
        <ProfileImage />
      </GridItem>
      <GridItem>
        <NameAndJob />
      </GridItem>
      <GridItem>
        <Navigation />
      </GridItem>
    </Grid>
  );
};

export default Header;
