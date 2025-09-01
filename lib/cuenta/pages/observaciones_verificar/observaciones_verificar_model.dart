import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'observaciones_verificar_widget.dart' show ObservacionesVerificarWidget;
import 'package:flutter/material.dart';

class ObservacionesVerificarModel
    extends FlutterFlowModel<ObservacionesVerificarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldObservaciones widget.
  FocusNode? textFieldObservacionesFocusNode;
  TextEditingController? textFieldObservacionesTextController;
  String? Function(BuildContext, String?)?
      textFieldObservacionesTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<TOrdenesRow>? usuario;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldObservacionesFocusNode?.dispose();
    textFieldObservacionesTextController?.dispose();
  }
}
