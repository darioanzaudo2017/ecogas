import '/cuenta/pages/detalle_usuario/detalle_usuario_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'listado_ordenes_widget.dart' show ListadoOrdenesWidget;
import 'package:flutter/material.dart';

class ListadoOrdenesModel extends FlutterFlowModel<ListadoOrdenesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DetalleUsuario component.
  late DetalleUsuarioModel detalleUsuarioModel;

  @override
  void initState(BuildContext context) {
    detalleUsuarioModel = createModel(context, () => DetalleUsuarioModel());
  }

  @override
  void dispose() {
    detalleUsuarioModel.dispose();
  }
}
