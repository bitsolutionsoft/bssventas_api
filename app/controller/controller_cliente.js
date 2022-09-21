const Cliente=require('../model/model_cliente');

exports.create=(req,res)=>{
 Cliente.create(new Cliente(req.body),(error,data)=>{
    if(error){
        res.status(500).send({message:"Failed",res:error});
        return
    }
    res.send(data);
 })
}
exports.update=(req,res)=>{
    Cliente.update(new Cliente(req.body),(error,data)=>{
       if(error){
        if(error.kind="not_found"){
           res.status(404).send({message:"Failed",res:error});
           return
        }
        res.status(500).send({message:"Failed",res:error});
       }
       res.send(data);
    })
   }
  
exports.view=(req,res)=>{
    Cliente.view((error,data)=>{
       if(error){
        if(error.kind="not_found"){
           res.status(404).send({message:"Failed",res:error});
           return
        }
        res.status(500).send({message:"Failed",res:error});
       }
       res.send(data);
    })
   }
   exports.delete=(req,res)=>{
    Cliente.delete((error,data)=>{
        if(error){
            if(error.kind="not_found"){
               res.status(404).send({message:"Failed",res:error});
               return
            }
            res.status(500).send({message:"Failed",res:error});
           }
           res.send(data);
    })
   }