import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'asignar_agente_medidor_widget.dart' show AsignarAgenteMedidorWidget;
import 'package:flutter/material.dart';

class AsignarAgenteMedidorModel
    extends FlutterFlowModel<AsignarAgenteMedidorWidget> {
  ///  Local state fields for this component.

  int? contador = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TClientesRow>? queryclientes;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TUsuariosRow>? usuario;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
