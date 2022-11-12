const sql =require('../config/Connecction');
const Cuenta=function(cuenta){
this.idcuenta=cuenta.idcuenta,
this.idproveedor=cuenta.idproveedor,
this.fecha=cuenta.fecha,
this.total=cuenta.total,
this.estado=cuenta.estado
}

Cuenta.create=(cuenta,result)=>{
    sql.query(`call ingreso_cuenta(${cuenta.idcuenta},${cuenta.idproveedor},"${cuenta.fecha}",${cuenta.total},"${cuenta.estado}","new");`,
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

Cuenta.update=(cuenta,result)=>{
    sql.query(`call ingreso_cuenta(${cuenta.idcuenta},${cuenta.idproveedor},"${cuenta.fecha}",${cuenta.total},"${cuenta.estado}","update");`,
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
Cuenta.view=(result)=>{
    sql.query(`call ingreso_cuenta(${null},${null},"2020-02-02",00,"${null}","view");`,
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
Cuenta.viewxp=(id,result)=>{
    sql.query(`call ingreso_cuenta(${null},${id},"2022-10-10",${null},"${null}","viewxp");`,
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


Cuenta.delete=(id,result)=>{
    sql.query(`call ingreso_cuenta(${id},${null},"2022-10-10",${null},"${null},","delete");`,
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

module.exports=Cuenta;