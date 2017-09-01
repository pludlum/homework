const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});



function teaAndBiscuits () {
  let first, second;

  reader.question('Would you like some tea?', (teaRes) => {
    first = teaRes;
    console.log(`You replied ${teaRes}.`);

    reader.question('Would you like some biscuits?', (bisRes) => {
      second = bisRes;
      console.log(`You replied ${bisRes}.`);

      const firstRes = (first === 'yes') ? 'do' : 'don\'t';
      const secondRes = (second === 'yes') ? 'do' : 'don\'t';
      console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
      reader.close();
    });
  });
}
