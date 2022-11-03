const sql =require('../config/Connecction');
const Producto=function(producto){
this.idproducto=producto.idproducto,
this.codbarr=producto.codbarr,
this.nombre=producto.nombre,
this.presentacion=producto.presentacion,
this.especificacion=producto.especificacion,
this.cantidad_maxima=producto.cantidad_maxima,
this.cantidad_minima=producto.cantidad_minima,
this.estado=producto.estado
}

Producto.create=(producto,result)=>{
    sql.query(`call ingreso_producto(${producto.idproducto},"${producto.codbarr}","${producto.nombre}","${producto.presentacion}","${producto.especificacion}",${producto.cantidad_maxima},${producto.cantidad_minima},"${producto.estado}","new");`,
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

Producto.update=(producto,result)=>{
    sql.query(`call ingreso_producto(${producto.idproducto},"${producto.codbarr}","${producto.nombre}","${producto.presentacion}","${producto.especificacion}",${producto.cantidad_maxima},${producto.cantidad_minima},"${producto.estado}","update");`,
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
Producto.view=(result)=>{
    sql.query(`call ingreso_producto(${null},"${null}","${null}","${null}","${null}",${null},${null},"${null}","view");`,
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

Producto.viewall=(result)=>{
    sql.query(`call ingreso_producto(${null},"${null}","${null}","${null}","${null}",${null},${null},"${null}","viewall");`,
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

Producto.delete=(id,result)=>{
    sql.query(`call ingreso_producto(${id},"${null}","${null}","${null}","${null}",${null},${null},"${null}","delete");`,
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

module.exports=Producto;