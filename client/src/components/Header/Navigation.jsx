import React from "react";
import { useRouter } from "next/router";
import { useQueryClient } from "react-query";
import { Box, List, ListItem } from "@chakra-ui/react";

import Link from "components/NextChakraLink";

const Navigation = (props) => {
  const { asPath } = useRouter();
  const isActive = (item) => asPath === item.url;
  const isExternal = (item) => item.target === "_blank";
  // TODO: Add routes back into page when work is complete
  const menuItems = useQueryClient()
    .getQueryData("main-menu")
    .filter((item) => !["Projects", "About", "Resume"].includes(item.label));

  return (
    <Box as="nav" {...props}>
      <List textAlign="right">
        {menuItems.map((item, ind) => (
          <ListItem key={item.url} mt={ind === 0 ? 0 : 2}>
            <Link
              href={item.url}
              isExternal={isExternal(item)}
              variant={isActive(item) ? "active" : ""}
            >
              {item.label}
            </Link>
          </ListItem>
        ))}
      </List>
    </Box>
  );
};

export default Navigation;
