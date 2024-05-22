const express = require('express')
const mysql = require('mysql')
const bodyParser = require('body-parser')
const app = express()

app.use(function(req, res, next){
    res.header("Access-Control-Allow-Origin", "*")
    res.header("Access-Control-Allow-Headers", "*")
    next();
})

app.use(bodyParser.json())

const PUERTO = 3000

const conexion = mysql.createConnection({
    host: 'localhost',
    database: 'asistenciaacademica',
    user: 'root',
    password: ''
})

app.listen(PUERTO, () => {
    console.log(`Servidor corriendo en el puerto: ${PUERTO}`)
})

conexion.connect(error => {
    if (error) throw error
    console.log('La conexion con la base de datos fue exitosa');
})

app.get('/', (req, res) => {
    res.send('mensaje de api')
})

app.get('/instructores', (req, res) => {
    const sql = `SELECT * FROM asistenciaacademica.instructors`
    conexion.query(sql, (error, result) => {
        if (error) return console.error(error.message)
        
        if(result.length > 0){
            res.json(result)
        } else{
            res.json('No hay datos')
        }
    })
})

app.get('/instructores:id', (req, res) => {
    const { id } = req.params
    
    const sql = `SELECT * FROM asistenciaacademica.instructors WHERE numeroDocumento = ${id}`
    conexion.query(sql, (error, result) => {
        if (error) return console.error(error.message)

            if(result.length > 0){
                res.json(result)
            } else{
                res.json('No hay datos')
            }
    })
})

app.post('/instructores/agregar', (req, res) => {
    const instructors = { 
        nombre: req.body.nombre, 
        tipo_documento_iddocumento: req.body.tipo_documento_iddocumento,
        email: req.body.email, 
        contraseña: req.body.contraseña 
    } 

    const query = `INSERT INTO asistenciaacademica.instructors SET ?`
    conexion.query(query, instructors, (error, result) => {
        if (error) return console.error(error.message)

        res.json('Instructor agregado')
    })
})

app.put('/instructors/actualizar/:id', (req, res) => {
    const { id } = req.params
    const { email, contraseña } = req.params

    const query = `UPDATE asistenciaacademica.instructors SET email='${email}', contraseña='${contraseña}'`
    conexion.query(query, (error, result) => {
        if (error) return console.error(error.message)
            
        res.json('Instructor actualizado')
    })
})

app.delete('/instructors/borrar/:id', (req, res) =>{
    const { id } = req.params

    const query = `DELETE FROM asistenciaacademica.instructors WHERE numeroDocumento = ${id}`
    conexion.query(query, (error, result) => {
    if (error) return console.error(error.message)

        res.json('Instructor eliminado')
    })
})

///////////////////////////APRENDICES////////////////////////////////////
app.get('/aprendiz', (req, res) => {
    const sql = `SELECT * FROM asistenciaacademica.aprendizs`
    conexion.query(sql, (error, result) => {
        if (error) return console.error(error.message)
        
        if(result.length > 0){
            res.json(result)
        } else{
            res.json('No hay datos')
        }
    })
})

app.get('/aprendiz:id', (req, res) => {
    const { id } = req.params
    
    const sql = `SELECT * FROM asistenciaacademica.aprendizs WHERE numeroDocumento = ${id}`
    conexion.query(sql, (error, result) => {
        if (error) return console.error(error.message)

            if(result.length > 0){
                res.json(result)
            } else{
                res.json('No hay datos')
            }
    })
})
