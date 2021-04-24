const createTheme = ({
  primary,
  secondary,
  textColor,
  background,
  outlineColor,
  linkHoverColor,
  secondaryTextColor,
}) => ({
  primary,
  secondary,
  textColor,
  outlineColor,
  linkHoverColor,
  secondaryTextColor,
  bgColor: background,
});

const green = {
  100: "#e0d6c6",
  200: "#b1b289",
  300: "#588157",
  400: "#2e483c",
  500: "#213432",
  999: "#1a221b",
};

const blue = {
  100: "#fafcfc",
  200: "#8ed6e6",
  300: "#3883a8",
  400: "#034078",
  500: "#001f54",
  999: "#0a1128",
};

const sunset = {
  30: "#ffb703",
  60: "#fb8500",
  90: "#ff5d05",
};

const gray = {
  30: "#e5f3ff",
  60: "#adc5d9",
  90: "#62798c",
  99: "#2c363f",
};

const rainbow = {
  400: "#ff595e",
  500: "#ff9859",
  100: "#ffe959",
  200: "#8ac926",
  300: "#1982c4",
  // 500: "#9859ff",
  999: gray["99"],
};

const brown = {
  30: "#dda15e",
  60: "#bc6c25",
  90: "#7d4413",
};

const forrest = createTheme({
  primary: green,
  secondary: brown,
  textColor: green["100"],
  background: green["999"],
  outlineColor: brown["30"],
  linkHoverColor: brown["30"],
  secondaryTextColor: green["200"],
});

const mariana = createTheme({
  primary: blue,
  secondary: sunset,
  textColor: blue["100"],
  background: blue["999"],
  outlineColor: sunset["30"],
  linkHoverColor: sunset["30"],
  secondaryTextColor: sunset["30"],
});

const fadedRainbow = createTheme({
  primary: rainbow,
  secondary: gray,
  textColor: gray["30"],
  background: gray["99"],
  outlineColor: rainbow["400"],
  linkHoverColor: rainbow["400"],
  secondaryTextColor: gray["60"],
});

const colors = {
  theme: forrest,
  forrest,
  mariana,
  fadedRainbow,
};

export default colors;
