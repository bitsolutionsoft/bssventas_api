const sql =require('../config/Connecction');
const Credito=function(credito){
this.idcredito=credito.idcredito,
this.idfactura=credito.idfactura,
this.estado=credito.estado

}

Credito.create=(credito,result)=>{
    sql.query(`call ingreso_credito(${credito.idcredito},${credito.idfactura},"${credito.estado}","new");`,
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

Credito.update=(credito,result)=>{
    sql.query(`call ingreso_credito(${credito.idcredito},${credito.idfactura},"${credito.estado}","update");`,
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
Credito.view=(result)=>{
    sql.query(`call ingreso_credito(${null},${null},"${null}","view");`,
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
Credito.delete=(id,result)=>{
    sql.query(`call ingreso_credito(${id},${null},"${null}","delete");`,
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

module.exports=Credito;