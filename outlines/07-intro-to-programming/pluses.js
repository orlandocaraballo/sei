// display 10 pluses, then 9 then 8, then 7, then 6, etc
// ++++++++++
// +++++++++
// ++++++++
// +++++++
// ++++++
// +++++
// ++++
// +++
// ++
// +
const pluses = "++++++++++";

// pluses.substring(0) -> ++++++++++
// pluses.substring(1) -> +++++++++
// pluses.substring(2) -> ++++++++
// pluses.substring(3) -> +++++++
// pluses.substring(4) -> ++++++
// pluses.substring(5) -> +++++
// pluses.substring(6) -> ++++
// pluses.substring(7) -> +++
// pluses.substring(8) -> ++
// pluses.substring(9) -> +

for(let i = 0; i < pluses.length; ++i) {
  console.log(pluses.substring(i));
}