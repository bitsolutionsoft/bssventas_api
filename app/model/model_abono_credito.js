const sql =require('../config/Connecction');
const AbonoCredito=function(abonoCredito){
this.idabono=abonoCredito.idabono,
this.idcredito=abonoCredito.idcredito,
this.abono=abonoCredito.abono
this.tipopago=abonoCredito.tipopago

}

AbonoCredito.create=(abonoCredito,result)=>{
    sql.query(`call ingreso_abonocredito(${abonoCredito.idabono},${abonoCredito.idcredito},${abonoCredito.abono},"${abonoCredito.tipopago}","new");`,
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

AbonoCredito.update=(abonoCredito,result)=>{
    sql.query(`call ingreso_abonocredito(${abonoCredito.idabono},${abonoCredito.idcredito},${abonoCredito.abono},"${abonoCredito.tipopago}","update");`,
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
AbonoCredito.viewone=(id,result)=>{
    sql.query(`call ingreso_abonocredito(${null},${id},${null},"${null}","view");`,
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

AbonoCredito.delete=(id,result)=>{
    sql.query(`call ingreso_abonocredito(${id},${null},${null},"${null}","delete");`,
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

module.exports=AbonoCredito;