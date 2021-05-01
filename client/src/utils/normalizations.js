export const stripHtml = (str = "") =>
  str.replace(/(<([^>]+)>)|(\r|\n)/gi, "").replace(/(&#8217;|&#039;)/g, "'");
export const uniqueWords = (words) => {
  const wordsArr = Array.isArray(words) ? words : words.split(",");

  return Array.from(
    new Set(
      wordsArr.map((word) => word.trim()).filter((word) => word.length > 3)
    )
  ).join(",");
};
