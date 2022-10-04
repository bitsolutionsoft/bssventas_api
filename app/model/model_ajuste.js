const sql =require('../config/Connecction');

const Ajuste=function(ajuste){
this.nombre=ajuste.nombre,
this.descripcion=ajuste.descripcion
}

Ajuste.create=(ajuste,result)=>{
    sql.query(`call ingreso_ajuste("${ajuste.nombre}","${ajuste.descripcion}","new");`,
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

Ajuste.update=(ajuste,result)=>{
    sql.query(`call ingreso_ajuste("${ajuste.nombre}","${ajuste.descripcion}","update");`,
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
Ajuste.view=(result)=>{
    sql.query(`call ingreso_ajuste("${null}","${null}","view");`,
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

module.exports=Ajuste;