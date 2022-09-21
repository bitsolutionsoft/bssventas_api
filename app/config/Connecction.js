const mysql=require('mysql');
const db=require('../config/Database');

const connection=mysql.createConnection({
    host:db.HOST,
    port:db.PORT,
    user:db.USER,
    password:db.PASSWORD,
    database:db.DATABASE
    });
    
    function handleDisconect(){
        console.log("handelDisconnect");    
        connection.distroy();
        connection.mysql.createConnection(connection);
    
        connection.connect(error=>{
            if(error){
                console.log(error);
                setTimeout(handleDisconect,1000);
                throw error;
            }
            else{
                console.log("Conexion establecida");
            }
        });
        
        connection.on(error, function(error){
            if(error){
                setTimeout(handleDisconect,1000);
                handleDisconect();
            }
            else
            {
                throw error;
            }
        });
    }
    
    module.exports=connection;