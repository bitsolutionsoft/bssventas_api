const sql =require('../config/Connecction');
const Factura=function(factura){
this.idfactura=factura.idfactura,
this.idcliente=factura.idcliente,
this.motivo_anulacion=factura.motivo_anulacion,
this.estado=factura.estado
}

Factura.create=(factura,result)=>{
    sql.query(`call ingreso_factura(${factura.idfactura},${factura.idcliente},"${factura.motivo_anulacion}","${factura.estado}","new");`,
    (error, res)=>{
        if(error){
            console.log(error)
            result({message:"Failed",res:error},null);
            return
        }
        if(res[0].length){
             console.table(res[0])
            result(null,{message:"Success",res:res[0]});
            return
        }
        console.table(res)
        result(null,{message:"Success",res:res});
    });
}

Factura.update=(factura,result)=>{
    sql.query(`call ingreso_factura(${factura.idfactura},${factura.idcliente},"${factura.motivo_anulacion}","${factura.estado}","update");`,
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
Factura.view=(result)=>{
    sql.query(`call ingreso_factura(${null},${null},"${null}","${null}","view");`,
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

Factura.delete=(id,result)=>{
    sql.query(`call ingreso_factura(${id},${null},"${null}","${null}","delete");`,
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

module.exports=Factura;