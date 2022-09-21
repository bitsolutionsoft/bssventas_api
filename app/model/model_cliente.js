const sql =require('../config/Connecction');
const Cliente=function(cliente){
this.idcliente=cliente.idcliente,
this.nombre=cliente.nombre,
this.apellido=cliente.apellido,
this.telefono=cliente.telefono,
this.direccion=cliente.direccion,
this.sexo=cliente.sexo,
this.nit=cliente.nit
}

Cliente.create=(cliente,result)=>{
    sql.query(`call ingreso_cliente(${cliente.idcliente},"${cliente.nombre}","${cliente.apellido}",${cliente.telefono},"${cliente.direccion}","${cliente.sexo}","${cliente.nit}","new");`,
    (error, res)=>{
        if(error){
            console.log(error)
            result({message:"Failed",res:error},null);
            return
        }
            console.table(res)
            result(null,{message:"Success",res:res});
    });
}

Cliente.update=(cliente,result)=>{
    sql.query(`call ingreso_cliente(${cliente.idcliente},"${cliente.nombre}","${cliente.apellido}",${cliente.telefono},"${cliente.direccion}","${cliente.sexo}","${cliente.nit}","update");`,
    (error, res)=>{
        if(error){
            console.log(error)
            result({message:"Failed",res:error},null);
            return
        }
            console.table(res);
            result(null,{message:"Success",res:res});
    });
}
Cliente.view=(result)=>{
    sql.query(`call ingreso_cliente(${null},"${null}","${null}",${null},"${null}","${null}","${null}","view");`,
    (error, res)=>{
        if(error){
            console.log(error)
            result({message:"Failed",res:error},null);
            return
        }
        if(res[0].length){
            console.table(res[0]);
            result(null,{message:"Success",res:res[0]});
            return
        }
        console.log(res)
        result({error:"not_found",res:res}, null)
    });
}

Cliente.delete=(id,result)=>{
    sql.query(`call ingreso_cliente(${id},"${null}","${null}",${null},"${null}","${null}","${null}","delete");`,
    (error, res)=>{
        if(error){
            console.log(error)
            result({message:"Failed",res:error},null);
            return
        }
            console.table(res);
            result(null,{message:"Success",res:res});                 
    });
}

module.exports=Cliente;