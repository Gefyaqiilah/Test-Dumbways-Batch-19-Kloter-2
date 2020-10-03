const mysql = require('mysql')
const bodyParser = require('body-parser')
const express = require('express')
const ejs = require('ejs')
const path = require('path')

const app = express();
const mysqlConnection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'beritadigital_db'
})

mysqlConnection.connect((err) => {
    if (err) {
        console.log(`Gagal terkoneksi dengan database \nMessage : ${JSON.stringify(err, undefined, 3)}`)
    } else {
        console.log('Berhasil terkoneksi dengan database')
    }
})

app.set('views', path.join(__dirname, 'views'))

app.set('view engine', 'hbs');

app.use(bodyParser.json())

app.use(bodyParser.urlencoded({ extended: false }))

app.use('/assets', express.static(__dirname + '/public'))

app.listen(8000, () => console.log('Express server berjalan di port:8000....'))
app.get('/', (req, res) => {
    let sql = 'SELECT * FROM news'

    mysqlConnection.query(sql, (err, rows) => {
        if (err) {
            res.send('Gagal mengambil data dari database')
        } else {
            res.render('home_view', {
                data: rows
            })
        }
    })
})

app.get('/user', (req, res) => {
    let sql = 'SELECT * FROM user'
    mysqlConnection.query(sql, (err, rows) => {
        if (err) {
            res.send('Gagal mengambil data dari database')
        } else {
            res.render('user_view', {
                data: rows
            })
        }
    })
})

app.post('/adduser', (req, res) => {
    const { add_nama, add_email, add_role } = req.body
    let sql = 'INSERT INTO user SET ?'
    let data = { name: add_nama, email: add_email, role: add_role }
    mysqlConnection.query(sql, data, (err) => {
        if (err) {
            res.send(`Gagal menambahkan data ..\n${JSON.stringify(err, undefined, 5)}`)
        } else {
            res.redirect('/user')
        }
    })
})

app.get('/news', (req, res) => {
    let sql = 'SELECT * FROM news'
    mysqlConnection.query(sql, (err, rows) => {
        if (err) {
            res.send(`Gagal menambahkan data ..\n${JSON.stringify(err, undefined, 5)}`)
        } else {
            res.render('news_view', {
                data: rows
            })
        }
    })
})
app.post('/addnews', (req, res) => {
    const { add_title, add_image, add_deskripsi, add_createtime, add_userid } = req.body
    let sql = "INSERT INTO news SET?"
    let data = { title: add_title, image: add_image, deskripsi: add_deskripsi, create_time: add_createtime, user_id: add_userid }
    mysqlConnection.query(sql, data, (err) => {
        if (err) {
            res.send(`Gagal menambahkan data ..\n${JSON.stringify(err, undefined, 5)}`)
        } else {
            res.redirect('/news')
        }
    })
})

app.post('/editnews', (req, res) => {
    const { edit_id, edit_title, edit_image, edit_deskripsi, edit_createtime, edit_userid } = req.body
    let sql = `UPDATE news SET title='${edit_title}',image='${edit_image}',deskripsi='${edit_deskripsi}',create_time='${edit_createtime}',user_id='${edit_userid}' WHERE id=${edit_id}`
    mysqlConnection.query(sql, (err) => {
        if (err) {
            res.send(`Gagal mengupdate data ..\n${JSON.stringify(err, undefined, 5)}`)
        } else {
            res.redirect('/news')
        }
    })
})
app.post('/deletenews', (req, res) => {
    const { delete_id } = req.body
    let sql = `DELETE FROM news WHERE id = ${delete_id}`
    mysqlConnection.query(sql, (err) => {
        if (err) {
            res.send(`Gagal menghapus data ..\n${JSON.stringify(err, undefined, 5)}`)
        } else {
            res.redirect('/news')
        }
    })
})

app.get('/detailnews/:id', (req, res) => {
    const id = req.params.id
    let sql = `SELECT * FROM news WHERE id=${id}`
    mysqlConnection.query(sql, (err, rows) => {
        if (err) {
            res.send(`Gagal mengambil data ..\n${JSON.stringify(err, undefined, 5)}`)
        } else {
            res.render('detail_view', {
                data: rows
            })
        }
    })
})
