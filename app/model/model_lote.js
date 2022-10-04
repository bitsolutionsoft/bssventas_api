const sql =require('../config/Connecction');
const Lote=function(lote){
this.idlote=lote.idlote,
this.idproducto=lote.idproducto,
this.cantidad=lote.cantidad,
this.precio_compra=lote.precio_compra,
this.precio_mayorista=lote.precio_mayorista,
this.precio_unidad=lote.precio_unidad,
this.vence=lote.vence,
this.estado=lote.estado
}

Lote.create=(lote,result)=>{
    sql.query(`call ingreso_lote(${lote.idlote},${lote.idproducto},${lote.cantidad},${lote.precio_compra},${lote.precio_mayorista},${lote.precio_unidad},"${lote.estado}", "${lote.vence}","new");`,
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

Lote.update=(lote,result)=>{
    sql.query(`call ingreso_lote(${lote.idlote},${lote.idproducto},${lote.cantidad},${lote.precio_compra},${lote.precio_mayorista},${lote.precio_unidad},"${lote.estado}","${lote.vence}","update");`,
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
Lote.view=(id,result)=>{
    sql.query(`call ingreso_lote(${null},${id},${null},${null},${null},${null},"${null}","2022-02-02","view");`,
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
        result({message:"not_found",res:res}, null)
    });
}

Lote.delete=(id,result)=>{
    sql.query(`call ingreso_lote(${id},${null},${null},${null},${null},${null},"${null}","2022-02-02","delete");`,
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

module.exports=Lote;