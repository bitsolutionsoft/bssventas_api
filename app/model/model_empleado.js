const sql =require('../config/Connecction');
const Empleado=function(empleado){
this.idempleado=empleado.idempleado,
this.nombre=empleado.nombre,
this.apellido=empleado.apellido,
this.telefono=empleado.telefono,
this.direccion=empleado.direccion,
this.dpi=empleado.dpi,
this.estado=empleado.estado
}

Empleado.create=(empleado,result)=>{
    sql.query(`call ingreso_empleado(${empleado.idempleado},"${empleado.nombre}","${empleado.apellido}","${empleado.direccion}",${empleado.telefono},"${empleado.dpi}","${empleado.estado}","new");`,
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

Empleado.update=(empleado,result)=>{
    sql.query(`call ingreso_empleado(${empleado.idempleado},"${empleado.nombre}","${empleado.apellido}","${empleado.direccion}",${empleado.telefono},"${empleado.dpi}","${empleado.estado}","update");`,
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
Empleado.view=(result)=>{
    sql.query(`call ingreso_empleado(${null},"${null}","${null}","${null}",${null},"${null}","${null}","view");`,
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

Empleado.delete=(id,result)=>{
    sql.query(`call ingreso_empleado(${id},"${null}","${null}","${null}",${null},"${null}","${null}","delete");`,
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

module.exports=Empleado;