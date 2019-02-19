class Year {
  constructor(year) {
    this.year = year;

  }
}
let leapyear = function isLeapYear(year) {
  if  (year % 4 === 0) {
    return true;
  } else if (year % 400 === 0) {
    return true;
  } else if (year % 100 === 0) {
    return false;
  } else {
    return false;
  }};
  for (year = 2000; year < 2101; year++) {
  let newYear = new Year(year); {console.log(year);} {
    console.log(leapyear(year));
  }
  }

let twothou = leapyear(2000);
let currentYear = leapyear(2017);
let lastYear = leapyear(2016);
// =>currentYear
// <=false
// =>lastYear
// <=true
