import '/flutter_flow/flutter_flow_util.dart';
import 'cargar_medidor_widget.dart' show CargarMedidorWidget;
import 'package:flutter/material.dart';

class CargarMedidorModel extends FlutterFlowModel<CargarMedidorWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NumeroMedidor widget.
  FocusNode? numeroMedidorFocusNode;
  TextEditingController? numeroMedidorTextController;
  String? Function(BuildContext, String?)? numeroMedidorTextControllerValidator;
  String? _numeroMedidorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre Cliente es Requerido';
    }

    return null;
  }

  // State field(s) for Lote widget.
  FocusNode? loteFocusNode;
  TextEditingController? loteTextController;
  String? Function(BuildContext, String?)? loteTextControllerValidator;

  @override
  void initState(BuildContext context) {
    numeroMedidorTextControllerValidator =
        _numeroMedidorTextControllerValidator;
  }

  @override
  void dispose() {
    numeroMedidorFocusNode?.dispose();
    numeroMedidorTextController?.dispose();

    loteFocusNode?.dispose();
    loteTextController?.dispose();
  }
}
