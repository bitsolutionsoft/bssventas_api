const Lote=require('../model/model_lote');

exports.create=(req,res)=>{
 Lote.create(new Lote(req.body),(error,data)=>{
    if(error){
        res.status(500).send({message:"Failed",res:error});
        return
    }
    res.send(data);
 })
}
exports.update=(req,res)=>{
    Lote.update(new Lote(req.body),(error,data)=>{
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
    Lote.view((error,data)=>{
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
    Lote.delete(req.params.id,(error,data)=>{
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