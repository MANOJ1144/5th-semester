const express = require('express')

const Book = require('../models/Book')
// let books = require('../data/books')
const router = express.Router()

router.route('/')
.get((req,res)=> {
    Book.find()
    .then((book) => res.json(books))
    .catch(err => console.log(err))
})
.post((req,res) => {
    Book.create(req.body)
        .then((book)=> res.status(201).json(book))
        .catch(err => console.log(err))
    })

.put((req, res) => {
    res.status(405).json({ error: "Put request is not allowed" })
})
.delete((req,res) => {
    Book.deleteMany()
        .then(reply => res.json(reply))
        .catch(err => console.log(err))
})


router.route('/:book_id')
    .get( (req, res) => {
        Book.findById(req.params.book_id)
            .then((book) => res.json(book))
            .catch(err => console.log(err))
    })
    .post((req, res) => {
        res.status(405).json({ error: "Put request is not allowed" })
        // Book.create(req.body)
        //     .then((book) => res.status(201).json(book))
        //     .catch(err => console.log(err))
    })
    .put((req, res) => {
        Book.findByIdAndUpdate(
            req.params.book_id,
            { $set: req.body},
            {new: true}
        ).then(updated => res.json(updated))
        .catch(err => console.log(err))
    })

    .delete((req, res) => {
        Book.findByIdAndDelete(
            req.params.book_id)
            .then(reply => res.json(reply))
            .catch(err => console.log(err))       
    })

module.exports = router


// practices------------------------
// router.route('/:book_id')
//     .get('/data/books', (req, res) => {
//         res.json(books)
//     })
//     .post('/data/books', (req, res) => {
//       res.status(405).jsong({error: "POST request is not allowed"})
//     })
//     .put('/data/books', (req, res) => {
//         if (!req.body.title) {
//             return res.status(404).json({ error: 'title is missing' })
//         }
//         const book = {
//             id: books.length + 1,
//             title: req.body.title,
//             author: req.body.author || 'Anonymous'
//         }
//         books.push(book)
//         // 201 if something is added on server 
//         res.status(201).json(book)
//     })
//     .delete('/data/books/:book_id', (req, res) => {
//         books = books.filter((b) => {
//             return b.id != req.params.book_id
//         })
//         res.json(books)
//     })


// app.get('/data/books', (req, res) => {
//     res.json(books)
// })

// app.post('/data/books', (req, res) => {
//     if (!req.body.title) {
//         return res.status(404).json({ error: 'title is missing' })
//     }
//     const book = {
//         id: books.length + 1,
//         title: req.body.title,
//         author: req.body.author || 'Anonymous'
//     }
//     books.push(book)
//     // 201 if something is added on server
//     res.status(201).json(book)
// })

// // app.put('/data/books/:book_id', (req, res)=>{
// //     // map returns STring
// //     const updated_books = books.map((b) => {
// //         if(b.id == req.params.book_id){
// //             b.title = req.body.title,
// //             b.author = req.body.author
// //         }
// //         return b
// //     })
// // })

// // put: replace the data
// app.put('/data/books/:book_id', (req, res) => {
//     const updatedBooks = books.map((book) => {
//         if (book.id == req.params.book_id) {
//             book.title = req.body.title
//             book.author = req.body.author
//         }
//         return book;
//     });

//     // Send a response back to the client
//     res.json(updatedBooks);
// })


// app.delete('/data/books/:book_id', (req, res) => {
//     books = books.filter((b) => {
//         return b.id != req.params.book_id
//     })
//     res.json(books)
// })

// app.get('/data/books/:book_id', (req, res) => {
//     const book_id = Number(req.params.book_id)
//     // console.group(req.params)
//     const book = books.find((b) => b.id == req.params.book_id)
//     res.json(book)
// })

// // listen on port 3000
// app.listen(port, () => {
//     console.log(server is running at port ${port})
// })