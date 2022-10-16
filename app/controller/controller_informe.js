const Informe=require('../model/model_informe');

exports.getventas=(req,res)=>{
 Informe.getventas(new Informe(req.body),(error,data)=>{
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


exports.getmasvendido=(req,res)=>{
   Informe.getmasvendido(new Informe(req.body),(error,data)=>{
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