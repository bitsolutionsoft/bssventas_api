const sql =require('../config/Connecction');
const Proveedor=function(proveedor){
this.idproveedor=proveedor.idproveedor,
this.nombre=proveedor.nombre,

this.apellido=proveedor.apellido,
this.telefono=proveedor.telefono,
this.empresa=proveedor.empresa,
this.direccion=proveedor.direccion,
this.estado=proveedor.estado
}

Proveedor.create=(proveedor,result)=>{
    sql.query(`call ingreso_proveedor(${proveedor.idproveedor},"${proveedor.nombre}","${proveedor.apellido}",${proveedor.telefono},"${proveedor.direccion}","${proveedor.empresa}","${proveedor.estado}","new");`,
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

Proveedor.update=(proveedor,result)=>{
    sql.query(`call ingreso_proveedor(${proveedor.idproveedor},"${proveedor.nombre}","${proveedor.apellido}",${proveedor.telefono},"${proveedor.direccion}","${proveedor.empresa}","${proveedor.estado}","update");`,
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
Proveedor.view=(result)=>{
    sql.query(`call ingreso_proveedor(${null},"${null}","${null}",${null},"${null}","${null}","${null}","view");`,
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

Proveedor.delete=(id,result)=>{
    sql.query(`call ingreso_proveedor(${id},"${null}","${null}",${null},"${null}","${null}","${null}","delete");`,
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

module.exports=Proveedor;