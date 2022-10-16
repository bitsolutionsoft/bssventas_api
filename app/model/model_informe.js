const sql =require('../config/Connecction');

const Informe=function(informe){
    this.id =informe.id;
    this.finicial  =informe.finicial;
    this.ffinal  =informe.ffinal;
    this.accion=informe.accion
}
 
Informe.getventas=(informe,result)=>{
    sql.query(  `call consulta_ventas(${informe.id},"${informe.finicial}","${informe.ffinal}","${informe.accion}");`,
    (error, res)=>{
        if(error){
            console.log(error);
            result({message:"Failed",res:error},null);
            return
        }
        if(res[0].length){
            console.table(res[0]);
            result(null,{message:"Success",res:res[0]});
            return
        }
            console.table(res)
            result({error:"not_found",res:error},null);
        
    });
}

Informe.getmasvendido=(informe,result)=>{
    sql.query(  `call consulta_producto_vendido(${informe.id},"${informe.finicial}","${informe.ffinal}","${informe.accion}");`,
    (error, res)=>{
        if(error){
            console.log(error);
            result({message:"Failed",res:error},null);
            return
        }
        if(res[0].length){
            console.table(res[0]);
            result(null,{message:"Success",res:res[0]});
            return
        }
            console.table(res)
            result({error:"not_found",res:error},null);
        
    });
}


module.exports=Informe;