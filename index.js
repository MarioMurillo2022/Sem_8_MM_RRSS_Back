import Express from "express";
const app = Express();

//Middleware 
app.use(Express.json());

app.listen(4000, () => {

    console.log("Servidor en puerto 4000");

})