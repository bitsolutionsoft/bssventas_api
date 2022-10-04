const Ajuste=require('../model/model_ajuste');

exports.create=(req,res)=>{
 Ajuste.create(new Ajuste(req.body),(error,data)=>{
    if(error){
        res.status(500).send({message:"Failed",res:error});
        return
    }
    res.send(data);
 })
}
exports.update=(req,res)=>{
    Ajuste.update(new Ajuste(req.body),(error,data)=>{
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
    Ajuste.view((error,data)=>{
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