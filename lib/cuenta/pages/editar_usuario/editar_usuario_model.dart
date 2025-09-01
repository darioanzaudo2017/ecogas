import '/cuenta/pages/editar_usuario_comp/editar_usuario_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'editar_usuario_widget.dart' show EditarUsuarioWidget;
import 'package:flutter/material.dart';

class EditarUsuarioModel extends FlutterFlowModel<EditarUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for EditarUsuarioComp component.
  late EditarUsuarioCompModel editarUsuarioCompModel;

  @override
  void initState(BuildContext context) {
    editarUsuarioCompModel =
        createModel(context, () => EditarUsuarioCompModel());
  }

  @override
  void dispose() {
    editarUsuarioCompModel.dispose();
  }
}
