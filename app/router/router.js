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
    const permiso =require("../controller/controller_permiso");
    //bienvenida
app.get("/",(rep,res)=>{
    res.json({message:"Bienvenido a farmacia api"})
});

//usuario
app.post("/usuario",verifyToken,usuario.create);
app.post("/usuario/update",verifyToken,usuario.update);
app.post("/usuario/login",usuario.findUser);
app.get("/usuario/emp/:id",verifyToken,usuario.viewone);
app.get("/usuario/delete/:id",verifyToken,usuario.delete);

//permiso
app.post("/permiso",verifyToken,permiso.create);
app.post("/permiso/update",verifyToken,permiso.update);
app.get("/permiso/view",verifyToken,permiso.view);
app.get("/permiso/emp/:id",verifyToken,permiso.viewone);
//cliente
app.post("/cliente",verifyToken,cliente.create);
app.post("/cliente/update",verifyToken,cliente.update);
app.get("/cliente/view",verifyToken,cliente.view);
app.get("/cliente/delete/:id",verifyToken,cliente.delete);
//empleado
app.post("/empleado",verifyToken,empleado.create);
app.post("/empleado/update",verifyToken,empleado.update);
app.get("/empleado/view",verifyToken,empleado.view);
app.get("/empleado/delete/:id",verifyToken,empleado.delete);

};