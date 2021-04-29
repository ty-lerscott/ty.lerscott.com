const createTheme = ({ background, ...styles }) => ({
  ...styles,
  bgColor: background,
});

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

const brown = {
  30: "#dda15e",
  60: "#bc6c25",
  90: "#7d4413",
};

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

const rainbow = {
  100: "#ff595e",
  200: "#ff9859",
  300: "#ffe959",
  400: "#8ac926",
  500: "#1982c4",
  // 500: "#9859ff",
  999: gray["99"],
};

const easterPastels = {
  100: "#D3F8E2",
  200: "#E4C1F9",
  300: "#F694C1",
  400: "#EDE7B1",
  500: "#A9DEF9",
  999: gray["99"],
};

const forrest = createTheme({
  primary: green,
  secondary: brown,
  textColor: green["200"],
  background: green["999"],
  outlineColor: brown["30"],
  linkHoverColor: brown["30"],
  headerTextColor: brown["30"],
  secondaryTextColor: green["300"],
  secondaryHeaderTextColor: brown["60"],
  tertiaryHeaderTextColor: brown["90"],
  headerColors: [
    green["200"],
    green["300"],
    green["400"],
    green["500"],
    "black",
  ],
});

const mariana = createTheme({
  primary: blue,
  secondary: sunset,
  textColor: blue["200"],
  background: blue["999"],
  outlineColor: sunset["30"],
  linkHoverColor: sunset["30"],
  headerTextColor: sunset["30"],
  secondaryTextColor: sunset["30"],
  secondaryHeaderTextColor: sunset["60"],
  tertiaryHeaderTextColor: sunset["90"],
  headerColors: [blue["200"], blue["300"], blue["400"], blue["500"], "black"],
});

const fadedRainbow = createTheme({
  primary: rainbow,
  secondary: gray,
  textColor: gray["30"],
  background: gray["99"],
  outlineColor: rainbow["400"],
  linkHoverColor: rainbow["400"],
  secondaryTextColor: gray["60"],
  headerTextColor: rainbow["100"],
  secondaryHeaderTextColor: rainbow["200"],
  tertiaryHeaderTextColor: rainbow["300"],
  headerColors: [
    rainbow["300"],
    rainbow["400"],
    rainbow["500"],
    rainbow["100"],
    rainbow["200"],
  ],
});

const colors = {
  theme: forrest,
  forrest,
  mariana,
  fadedRainbow,
};

export default colors;
