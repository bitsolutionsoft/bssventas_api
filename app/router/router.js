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
    const modulo=require('../controller/controller_modulo');
    const informe = require('../controller/controller_informe');
    const ajuste = require('../controller/controller_ajuste');
    const credito=require("../controller/controller_credito");
    const abonocredito=require("../controller/controller_abono_credito");
    //bienvenida
app.get("/",(rep,res)=>{
    res.json({message:"Bienvenido a bssventas api version 1.0"})
});

//informe
app.post("/informe",verifyToken,informe.getventas);
app.post("/informe/masvendido",verifyToken,informe.getmasvendido);
//Ajuste
app.post('/ajuste',verifyToken,ajuste.create);
app.post('/ajuste/update',verifyToken,ajuste.update);
app.get('/ajuste/view',ajuste.view)
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
//proveedor
app.post("/proveedor",verifyToken,proveedor.create);
app.post("/proveedor/update",verifyToken,proveedor.update);
app.get("/proveedor/view",verifyToken,proveedor.view);
app.get("/proveedor/delete/:id",verifyToken,proveedor.delete);

//Producto
app.post("/producto",verifyToken,producto.create);
app.post("/producto/update",verifyToken,producto.update);
app.get("/producto/view",verifyToken,producto.view);
app.get("/producto/all/view",verifyToken,producto.viewall);
app.get("/producto/delete/:id",verifyToken,producto.delete);

//lote
app.post("/lote",verifyToken,lote.create);
app.post("/lote/update",verifyToken,lote.update);
app.get("/lote/view/:id",verifyToken,lote.view);
app.get("/lote/delete/:id",verifyToken,lote.delete);
//detalle_factura
app.post("/detalle_factura",verifyToken,detalle_factura.create);
app.post("/detalle_factura/update",verifyToken,detalle_factura.update);
app.get("/detalle_factura/view",verifyToken,detalle_factura.view);
app.get("/detalle_factura/byfac/view/:id",verifyToken,detalle_factura.viewbyfac);
app.get("/detalle_factura/delete/:id",verifyToken,detalle_factura.delete);

//factura
app.post("/factura",verifyToken,factura.create);
app.post("/factura/update",verifyToken,factura.update);
app.get("/factura/view",verifyToken,factura.view);
app.get("/factura/delete/:id",verifyToken,factura.delete);

//colocacion
app.post("/colocacion",verifyToken,colocacion.create);
app.post("/colocacion/update",verifyToken,colocacion.update);
app.get("/colocacion/view",verifyToken,colocacion.view);
app.get("/colocacion/delete/:id",verifyToken,colocacion.delete);
//cuenta_proveedor
app.post("/cuenta_proveedor",verifyToken,cuenta_proveedor.create);
app.post("/cuenta_proveedor/update",verifyToken,cuenta_proveedor.update);
app.get("/cuenta_proveedor/view",verifyToken,cuenta_proveedor.view);
app.get("/cuenta_proveedor/viewxp/:id",verifyToken,cuenta_proveedor.viewxp);
app.get("/cuenta_proveedor/delete/:id",verifyToken,cuenta_proveedor.delete);
//abono_proveedor
app.post("/abono_proveedor",verifyToken,abono_proveedor.create);
app.post("/abono_proveedor/update",verifyToken,abono_proveedor.update);
app.get("/abono_proveedor/view",verifyToken,abono_proveedor.view);
app.get("/abono_proveedor/viewxc/:id",verifyToken,abono_proveedor.viewxc);
app.get("/abono_proveedor/delete/:id",verifyToken,abono_proveedor.delete);
//credito
app.post("/credito",verifyToken,credito.create);
app.post("/credito/update",verifyToken,credito.update);
app.get("/credito/view",verifyToken,credito.view);
app.get("/credito/delete/:id",verifyToken,credito.delete);
//abono credito
app.post("/abonocredito",verifyToken,abonocredito.create);
app.post("/abonocredito/update",verifyToken,abonocredito.update);
app.get("/abonocredito/view/:id",verifyToken,abonocredito.viewone);
app.get("/abonocredito/delete/:id",verifyToken,abonocredito.delete);

//modulo
app.post("/modulo",verifyToken,modulo.create);
app.post("/modulo/update",verifyToken,modulo.update);
app.get("/modulo/view",verifyToken,modulo.view);
app.get("/modulo/delete/:id",verifyToken,modulo.delete);
};