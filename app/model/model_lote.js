const sql =require('../config/Connecction');
const Lote=function(lote){
this.idlote=lote.idlote,
this.idproducto=lote.idproducto,
this.cantidad=lote.cantidad,
this.precio_compra=lote.precio_compra,
this.precio_mayorista=lote.precio_mayorista,
this.precio_unidad=lote.precio_unidad,
this.estado=lote.estado
}

Lote.create=(lote,result)=>{
    sql.query(`call ingreso_lote(${lote.idlote},${lote.idproducto},${lote.cantidad},${lote.precio_compra},${lote.precio_mayorista},${lote.precio_unidad},"${lote.estado}","new");`,
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
    sql.query(`call ingreso_lote(${lote.idlote},${lote.idproducto},${lote.cantidad},${lote.precio_compra},${lote.precio_mayorista},${lote.precio_unidad},"${lote.estado}","update");`,
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
Lote.view=(result)=>{
    sql.query(`call ingreso_lote(${null},${null},${null},${null},${null},${null},"${null}","view");`,
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

Lote.delete=(id,result)=>{
    sql.query(`call ingreso_lote(${id},${null},${null},${null},${null},${null},"${null}","delete");`,
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