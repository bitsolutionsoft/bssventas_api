module.exports=app=>{
    const verifyToken=require('../middleware/verifyToken');
    const abono_proveedor=require('../controller/controller_abono_pro');
    const cliente=require('../controller/controller_cliente');
    const colocacion=require('../controller/controller_colocacion');
    const cuenta_proveedor=require('../controller/controller_cuenta_pro');
    const detalle_factura=require('../controller/controller_detalle_factura');
    const empleado=require('../controller/controller_empleado');
    const factura=require('../controller/controller_factura');
    const lote=require('../controller/controller_lote');
    const producto= require("../controller/controller_producto");
    const proveedor =require('../controller/controller_proveedor');
    const usuario =require("../controller/controller_usuario");
app.get("/",(rep,res)=>{
    res.json({message:"Bienvenido a farmacia api"})
});

app.post("/cliente",verifyToken,cliente.create);
app.post("/cliente/update",verifyToken,cliente.update);
app.get("/cliente/view",cliente.view);
app.get("/cliente/delete/:id",verifyToken,cliente.delete);

};