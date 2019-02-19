fs = require('fs')

let read = (filename) => {
  return new Promise((resolve, reject) => {
    fs.readFile(filename, 'utf8', (err, data) => {
      if (err) {
        reject(Error(err))
      } else {
        resolve(data)
      }
    })
  })
}

read('twitterData.json')
  .then((data) => { return JSON.parse(data) })
  .then((json) => { console.log(json) })
  .catch((err) => {
    console.log("Something went wrong.")
    console.log(err)
  })


// GENERAL PROMISE SETUP
new Promise((resolve, reject) => {
  // do something asynchronously

  if (/* things are successful */) {
    resolve("It worked!")  // execute .then()
  } else {
    reject(Error("It broke!"))  // execute .catch()
  }

})
  .then((result) => {
  // process data, add elements to the DOM, etc...
  console.log(result)

})
  .catch((err) => {
  // show user an error message, retry network request, etc...
  console.log(err)
})
