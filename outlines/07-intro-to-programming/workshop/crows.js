'use strict';

// loop from 99 until we reach 1
for(let i = 99; i >= 1; --i) {
  // if i is greater than 1 then
  //  display the default logic
  if(i > 1) {

    console.log(`
${ i } crows on the wall. ${ i } crows.
1 fell down and became a wight.
${ i - 1 } crows on the wall`);

  } else {
    // if i is set to 1 then display the
    //  text indicated in workshop
    console.log(`
1 crow on the wall. 1 single crow.
It fell down and became a wight.
There's no one left to defend Westeros now.`);

  }
}