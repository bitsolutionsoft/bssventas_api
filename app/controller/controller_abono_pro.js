const Abono=require('../model/model_abono_pro');

exports.create=(req,res)=>{
 Abono.create(new Abono(req.body),(error,data)=>{
    if(error){
        res.status(500).send({message:"Failed",res:error});
        return
    }
    res.send(data);
 })
}
exports.update=(req,res)=>{
    Abono.update(new Abono(req.body),(error,data)=>{
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
    Abono.view((error,data)=>{
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
    Abono.delete(req.params.id,(error,data)=>{
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