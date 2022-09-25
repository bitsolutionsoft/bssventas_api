const Proveedor=require('../model/model_proveedor');

exports.create=(req,res)=>{
 Proveedor.create(new Proveedor(req.body),(error,data)=>{
    if(error){
        res.status(500).send({message:"Failed",res:error});
        return
    }
    res.send(data);
 })
}
exports.update=(req,res)=>{
    Proveedor.update(new Proveedor(req.body),(error,data)=>{
       if(error){
        if(error.kind==="not_found"){
           res.status(404).send({message:"Failed",res:error});
           return
        }
        res.status(500).send({message:"Failed",res:error});
       }
       res.send(data);
    })
   }
  
exports.view=(req,res)=>{
    Proveedor.view((error,data)=>{
       if(error){
        if(error.kind==="not_found"){
           res.status(404).send({message:"Failed",res:error});
           return
        }
        res.status(500).send({message:"Failed",res:error});
       }
       res.send(data);
    })
   }
   exports.delete=(req,res)=>{
    Proveedor.delete(req.params.id,(error,data)=>{
        if(error){
            if(error.kind==="not_found"){
               res.status(404).send({message:"Failed",res:error});
               return
            }
            res.status(500).send({message:"Failed",res:error});
           }
           res.send(data);
    })
   }