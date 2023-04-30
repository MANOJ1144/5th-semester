const express = require('express')
// const Book = require('../models/Book')
const books = require('../data/books')
const bookController = require('C:\Users\ACER\OneDrive\Desktop\5th semester\Web_API\webapi\controllers\book-controller.js')
const reviewController = require('../controllers/review_controller')

const router = express.Router()

router.route('/')

// .get(async (req, res, next) => {
    //     // Approch 1 (Better)(async not needed in function)
    //     // Book.find()
    //     //     .then (books => res.json(books))
    //     //     .catch (err => console.log(err))

    //     // Approch 2 
    //     // try {
    //     //     const books = await book.find() 
    //     //     res.json(books)
    //     // } catch (error) {
    //     //     next;
    //     // }   
        
    // })
    .get(
        // res.json(books)
        // book.find(req.body) 
        //     .then((book) => res.json(books))
        //     .catch(next)
        //     // .catch(err => next(err))
        //     // Error handling middlewear
        // // try {
        // //     const books = await Book.find()
        // //     res.json(books)
        // // } catch {
        // //     console.log(err);
        // // }
        bookController.getAllBooks
    )

    .post(
        // if(!req.body.title){
        //     return res.status(400).json({error: 'Title is missing'})
        // }
        // const book = {
        //     id : books.length + 1,
        //     title : req.body.title,
        //     author : req.body.author || 'Anonymous' 
        // }
        // books.push(book)
        // // res.json(book)
        // res.status(201).json(book)
        // // res.json(req.body);

        // book.create(req.body)
        // .then((book) => res.status(201).json(book))
        // // .catch(err => console.log(err))
        // .catch(next)

        bookController.createBook
    )

    .put((req, res) => {
        res.status(405).json({ error:"This method (PUT) is not allowed" })
    })

    .delete(
        // book.deleteMany()
        //     .then(reply => res.json(reply))
        //     // .catch(err => console.log(err))
        //     .catch(next)
        bookController.deleteAllBooks
    )
    
router.route('/:book_id')
    .get(
        // const book = books.find((b) => b.id === parseInt(req.params.book_id));
        // if (!book) {
        //     return res.status(404).json({ error: 'Book not found' });
        // }
        // res.json(book);
        // book.findById(req.params.book_id)
        // // .then((book) => res.json(book))
        // .then((book) => {
        //         if(!book) {
        //             res.status(404).json({ error: "Book not found" }) 
        //         }
        //         res.json(book)
        //     })
        // // .catch(err => console.log(err))
        // .catch(next)
        bookController.getBookById
    )

    .post((req, res) => {
        res.status(405).json({error: 'This method (POST) is not allowed'})
    })

    .put(
        // const updated_books = books.map((b) => {
        // if(b.id == req.params.book_id){
        //     b.title = req.body.title
        //     b.author = req.body.author
        // }
        //     return b
        // })
        // res.json(updated_books)
        // book.findByIdAndUpdate(
        //     req.params.book_id,
        //     { $set : req.body },
        //     { new : true}
        // )
        // .then(updated => res.json(updated))
        // // .catch(err => console.log(err))
        // .catch(next)
        bookController.updateBookById
    )

    .delete(
        // const index = books.findIndex((b) => b.id === parseInt(req.params.book_id));
        // if (index === -1) {
        //   return res.status(404).json({ error: 'Book not found' });
        // }
        // books.splice(index, 1);
        // res.json(books);
        // book.findOneAndDelete(req.params.book_id)
        //     .then(reply => res.status(204).end())
        //     // .catch(err => console.log(err))
        //     .catch(next)
        bookController.deleteBookById
    );

router.route('/:book_id/reviews')

    .get(
        reviewController.getAllReviews
    )

    .post(
        reviewController.createReview
    )

    .put((req, res, next) => {
        res.status(405).json({error: 'This method (PUT) is not allowed'})
        .catch(next)
    })

    .delete(
        reviewController.deleteAllReviews
    )
      
router.route('/:book_id/reviews/:review_id')

    .get((req, res) => {
        reviewController.getReviewById
    })

    .put((req, res, next) => {
        reviewController.updateReviewById    
    })

    .post((req, res) => {
        res.status(405).json({error: 'This method (POST) is not allowed'})
    })

    .delete(
        reviewController.deleteReviewById
    )

module.exports = router
//     .get((req,res)=> {
//         book.find()
//         .then((book) => res.json(books))
//         .catch(err => console.log(err))
//     })
//     .post((req,res) => {
//         Book.create(req.body)
//             .then((book)=> res.status(201).json(book))
//             .catch(err => console.log(err))
//         })

//     .put((req, res) => {
//         res.status(405).json({ error: "Put request is not allowed" })
//     })
//     .delete((req,res) => {
//         Book.deleteMany()
//             .then(reply => res.json(reply))
//             .catch(err => console.log(err))
//     })


// router.route('/:book_id')
//     .get( (req, res) => {
//         Book.findById(req.params.book_id)
//             .then((book) => res.json(book))
//             .catch(err => console.log(err))
//     })
//     .post((req, res) => {
//         res.status(405).json({ error: "Put request is not allowed" })
//         // Book.create(req.body)
//         //     .then((book) => res.status(201).json(book))
//         //     .catch(err => console.log(err))
//     })
//     .put((req, res) => {
//         Book.findByIdAndUpdate(
//             req.params.book_id,
//             { $set: req.body},
//             {new: true}
//         ).then(updated => res.json(updated))
//         .catch(err => console.log(err))
//     })

//     .delete((req, res) => {
//         Book.findByIdAndDelete(
//             req.params.book_id)
//             .then(reply => res.json(reply))
//             .catch(err => console.log(err))       
//     })

// module.exports = router


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