const container = {
  base: "100%", // 640px
  tablet: "45rem", // 720px
  desktop: "72rem", // 1152px
};

const common = {
  "2xl": "2rem",
  lg: "1.5rem",
  base: "1rem",
  md: "0.75rem",
  sm: "0.5rem",
};

const sizes = {
  container,
  ...common,
  0: "0",
  0.5: "0.125rem", // 2px
  1: "0.25rem", // 4px
  1.5: "0.375rem", // 6px
  2: common.sm, // 8px
  2.5: "0.625rem", // 10px
  3: common.md, // 12px
  3.5: "0.875rem", // 14px
  4: common.base, // 16px
  5: "1.25rem", // 20px
  6: common.lg, // 24px
  7: "1.75rem", // 28px
  8: common["2xl"], // 32px
  9: "2.25rem", // 36px
  10: "2.5rem", // 40px
  12: "3rem", // 48px
  14: "3.5rem", // 56px
  16: "4rem", // 64px
  20: "5rem", // 80px
  24: "6rem", // 96px
  28: "7rem", // 112px
  32: "8rem", // 128px
  36: "9rem", // 144px
  40: "10rem", // 160px
  44: "11rem", // 176px
  48: "12rem", // 192px
  52: "13rem", // 208px
  56: "14rem", // 224px
  60: "15rem", // 240px
  64: "16rem", // 256px
  72: "18rem", // 272px
  80: "20rem", // 288px
  96: "24rem", // 384px
  px: "1px",
  full: "100%",
  max: "max-content",
  min: "min-content",
};

export default sizes;
