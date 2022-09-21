const express=require('express');
const fileUplaod=require('express-fileupload');
const cors=require('cors');
const app = express();
//configuracion de peticiones cruzadas
app.use((req,res,next)=>{
    res.header('Access-Control-Allow-Origin','*');
    res.header('Access-Cotrol-Allow-Headers','Content-Type, Origin, X-Requested-With, Accept');
    res.header('Access-Control-Allow-Headers', 'Content-Type','Authorization');
    res.header("Access-Control-Allow-Methods", "GET,HEAD,OPTIONS,POST,PUT");
    res.header('Access-Control-Allow-Methods','Access-Control-Allow-Methods','GET, PATCH, PUT, POST, DELETE, OPTIONS');
  
    next();
    app.options('*',cors(),(req,res)=>{
        res.header('Access-Control-Allow-Methods','Access-Control-Allow-Methods','GET, PATCH, PUT, POST, DELETE, OPTIONS');
        req.header("Access-Control-Request-Headers", "true");
        res.header("Access-Control-Allow-Credentials", "true");
        res.send();   
    });
})
// fin de la configuracion de la peticiones cruzadas

app.use(express.urlencoded({extended:true}));
app.use(express.json());

app.use(fileUplaod());
app.use(express.static("files"));
const router=require('./router/router');
router(app)

app.listen(process.env.PORT || 3001, ()=>{  
    let port =  process.env.PORT !==undefined ? process.env.PORT : 3001 ;
    console.log("serividor en linea puerto: "+ port);
})
