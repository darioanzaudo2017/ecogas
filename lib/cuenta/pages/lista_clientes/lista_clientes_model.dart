import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'lista_clientes_widget.dart' show ListaClientesWidget;
import 'package:flutter/material.dart';

class ListaClientesModel extends FlutterFlowModel<ListaClientesWidget> {
  ///  Local state fields for this page.

  String? buscarCliente;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Buscar clientes)] action in ListaClientes widget.
  ApiCallResponse? apiResultzom;
  // State field(s) for buscaClientes widget.
  FocusNode? buscaClientesFocusNode;
  TextEditingController? buscaClientesTextController;
  String? Function(BuildContext, String?)? buscaClientesTextControllerValidator;
  // State field(s) for TextFieldnummin widget.
  FocusNode? textFieldnumminFocusNode;
  TextEditingController? textFieldnumminTextController;
  String? Function(BuildContext, String?)?
      textFieldnumminTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Backend Call - API (Buscar clientes)] action in Button widget.
  ApiCallResponse? apiResultamtclientes;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<BusquedaclienteStruct>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    buscaClientesFocusNode?.dispose();
    buscaClientesTextController?.dispose();

    textFieldnumminFocusNode?.dispose();
    textFieldnumminTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();

    paginatedDataTableController.dispose();
  }
}
