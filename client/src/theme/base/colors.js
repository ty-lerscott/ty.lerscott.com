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

const rainbow = {
  100: "#ff595e",
  200: "#ff9859",
  300: "#ffe959",
  400: "#8ac926",
  500: "#1982c4",
  999: "#9859ff",
};

const gray = {
  25: "#e5f3ff",
  50: "#adc5d9",
  75: "#62798c",
  100: "#2c363f",
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
  textColor: gray["25"],
  background: gray["100"],
  outlineColor: rainbow["400"],
  linkHoverColor: rainbow["400"],
  secondaryTextColor: gray["50"],
});

const colors = {
  theme: forrest,
  forrest,
  mariana,
  fadedRainbow,
};

export default colors;
