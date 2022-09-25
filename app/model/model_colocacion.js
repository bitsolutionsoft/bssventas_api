const sql =require('../config/Connecction');
const Colocacion=function(colocacion){
this.idcolocacion=colocacion.idcolocacion,
this.nombre=colocacion.nombre,
this.estado=colocacion.estado
}

Colocacion.create=(colocacion,result)=>{
    sql.query(`call ingreso_colocacion(${colocacion.idcolocacion},"${colocacion.nombre}","${colocacion.estado}","new");`,
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

Colocacion.update=(colocacion,result)=>{
    sql.query(`call ingreso_colocacion(${colocacion.idcolocacion},"${colocacion.nombre}","${colocacion.estado}","update");`,
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
Colocacion.view=(result)=>{
    sql.query(`call ingreso_colocacion(${null},"${null}","${null}","view");`,
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

Colocacion.delete=(id,result)=>{
    sql.query(`call ingreso_colocacion(${id},"${null}","${null}","delete");`,
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

module.exports=Colocacion;