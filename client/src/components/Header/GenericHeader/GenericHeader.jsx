import React from "react";
import PropTypes from "prop-types";
import { Grid, GridItem } from "@chakra-ui/react";

import Navigation from "../Navigation";

const GenericHeader = ({ children, ...props }) => {
  return (
    <Grid gap={12} {...props}>
      {children}
      <GridItem>
        <Navigation />
      </GridItem>
    </Grid>
  );
};

GenericHeader.propTypes = {
  children: PropTypes.node,
};

export default GenericHeader;
