const Factura=require('../model/model_factura');

exports.create=(req,res)=>{
 Factura.create(new Factura(req.body),(error,data)=>{
    if(error){
        res.status(500).send({message:"Failed",res:error});
        return
    }
    res.send(data);
 })
}
exports.update=(req,res)=>{
    Factura.update(new Factura(req.body),(error,data)=>{
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
    Factura.view((error,data)=>{
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
    Factura.delete(req.params.id,(error,data)=>{
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