const sql =require('../config/Connecction');
const Abono=function(abono){
this.idabono=abono.idabono,
this.idcuenta=abono.idcuenta,
this.abono=abono.abono,
this.tipopago=abono.tipopago

}

Abono.create=(abono,result)=>{
    sql.query(`call ingreso_abono(${abono.idabono},${abono.idcuenta},${abono.abono},"${abono.tipopago}","new");`,
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

Abono.update=(abono,result)=>{
    sql.query(`call ingreso_abono(${abono.idabono},${abono.idcuenta},${abono.abono},"${abono.tipopago}","update");`,
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
Abono.view=(result)=>{
    sql.query(`call ingreso_abono(${null},${null},${null},"${null}","view");`,
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
Abono.viewxc=(id,result)=>{
    sql.query(`call ingreso_abono(${null},${id},${null},"${null}","viewxc");`,
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

Abono.delete=(id,result)=>{
    sql.query(`call ingreso_abono(${id},${null},${null},"${null}","delete");`,
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

module.exports=Abono;