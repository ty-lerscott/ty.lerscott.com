import parseISO from "date-fns/parseISO";
import dateFnsFormat from "date-fns/format";

// date-fns format doesnt take date string, parsing the string and then formatting it, works perfectly fine
export const formatDateString = (dateStr, format) =>
  dateFnsFormat(parseISO(dateStr), format);
