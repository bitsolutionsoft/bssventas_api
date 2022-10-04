const Colocacion=require('../model/model_colocacion');

exports.create=(req,res)=>{
 Colocacion.create(new Colocacion(req.body),(error,data)=>{
    if(error){
        res.status(500).send({message:"Failed",res:error});
        return
    }
    res.send(data);
 })
}
exports.update=(req,res)=>{
    Colocacion.update(new Colocacion(req.body),(error,data)=>{
       if(error){
        if(error.kind==="not_found"){
           res.status(404).send({message:"Failed",res:error});
           return
        }
        res.status(500).send({message:"Failed",res:error});
        return
       }
       res.send(data);
    })
   }
  
exports.view=(req,res)=>{
    Colocacion.view((error,data)=>{
       if(error){
        if(error.kind==="not_found"){
           res.status(404).send({message:"Failed",res:error});
           return
        }
        res.status(500).send({message:"Failed",res:error});
        return
       }
       res.send(data);
    })
   }
   exports.delete=(req,res)=>{
    Colocacion.delete(req.params.id,(error,data)=>{
        if(error){
            if(error.kind==="not_found"){
               res.status(404).send({message:"Failed",res:error});
               return
            }
            res.status(500).send({message:"Failed",res:error});
            return
           }
           res.send(data);
    })
   }