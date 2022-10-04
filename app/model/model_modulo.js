const sql =require('../config/Connecction');
const Modulo=function(modulo){
this.idmodulo=modulo.idmodulo,
this.nombre = modulo.nombre;
}

Modulo.create=(modulo,result)=>{
    sql.query(`call ingreso_modulo(${modulo.idmodulo},"${modulo.nombre}","new");`,
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

Modulo.update=(modulo,result)=>{
    sql.query(`call ingreso_modulo(${modulo.idmodulo},"${modulo.nombre}","update");`,
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
Modulo.view=(result)=>{
    sql.query(`call ingreso_modulo(${null},"${null}","view");`,
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

Modulo.delete=(id,result)=>{
    sql.query(`call ingreso_modulo(${id},"${null}","delete");`,
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

module.exports=Modulo;