// Import math file
// Either
// const math = require('./math')

// console.log(math.add(2,3))
// console.log(math.multiply(2,3))

// Or
// const{ divide, add} = require('./math')
// console.log(add(1,2))
// console.log(divide(4,2))


const date_fns = require('date-fns')

const date1 = date_fns.format(new Date(), 'yyyy:MM:dd')

console.log(date1)