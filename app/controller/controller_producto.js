const Producto=require('../model/model_producto');

exports.create=(req,res)=>{
 Producto.create(new Producto(req.body),(error,data)=>{
    if(error){
        res.status(500).send({message:"Failed",res:error});
        return
    }
    res.send(data);
 })
}
exports.update=(req,res)=>{
    Producto.update(new Producto(req.body),(error,data)=>{
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
    Producto.view((error,data)=>{
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
   
exports.viewall=(req,res)=>{
   Producto.viewall((error,data)=>{
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
    Producto.delete(req.params.id,(error,data)=>{
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