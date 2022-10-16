const sql =require('../config/Connecction');
const Detalle=function(detalle){
this.iddetalle=detalle.iddetalle,
this.idfactura=detalle.idfactura,
this.idproducto=detalle.idproducto,
this.cantidad=detalle.cantidad,
this.precio=detalle.precio,
this.idlote=detalle.idlote
}

Detalle.create=(detalle,result)=>{
    sql.query(`call ingreso_detallefactura(${detalle.iddetalle},${detalle.idfactura},${detalle.idproducto},${detalle.cantidad},${detalle.precio},${detalle.idlote},"new");`,
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

Detalle.update=(detalle,result)=>{
    sql.query(`call ingreso_detallefactura(${detalle.iddetalle},${detalle.idfactura},${detalle.idproducto},${detalle.cantidad},${detalle.precio},${detalle.idlote},"update");`,
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
Detalle.view=(result)=>{
    sql.query(`call ingreso_detallefactura(${null},${null},${null},${null},${null},${null},"view");`,
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

Detalle.viewbyfac=(id,result)=>{
    sql.query(`call ingreso_detallefactura(${null},${id},${null},${null},${null},${null},"viewxfac");`,
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

Detalle.delete=(id,result)=>{
    sql.query(`call ingreso_detallefactura(${id},${null},${null},${null},${null},${null},"delete");`,
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

module.exports=Detalle;