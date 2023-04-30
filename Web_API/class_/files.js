const fs = require('fs')

//1. 
//  const data= fs.readFileSync('./sample.txt')

// call-back hell

fs.readFile('./sample.txt', (err,data) => {
    if (err) throw new err
    console.log(data.toString())
    fs.writeFile('./output.txt', data, ( err) =>{
         if(err) throw new err
    })
})


// Promises
// fs.readFile('./sample.txt')
//     .then((data) => console.log(data.toString()))
//     .catch((err) => console.log(err.message))


// async-await
// async function f1(){
// try{
// const data = await fs.readFile('./sample.txt')
// } 
// catch(err){
//     console.log(err)
// } 
// }
// f1()


// fs.writeFile('./output.txt', data)

// console.log(data.toString())
console.log('end')