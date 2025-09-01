import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'lista_medidores_widget.dart' show ListaMedidoresWidget;
import 'package:flutter/material.dart';

class ListaMedidoresModel extends FlutterFlowModel<ListaMedidoresWidget> {
  ///  Local state fields for this page.

  String? buscarCliente;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Buscar clientes)] action in ListaMedidores widget.
  ApiCallResponse? apiResultzom;
  // State field(s) for buscaClientes widget.
  FocusNode? buscaClientesFocusNode;
  TextEditingController? buscaClientesTextController;
  String? Function(BuildContext, String?)? buscaClientesTextControllerValidator;
  // Stores action output result for [Backend Call - API (Buscar clientes)] action in Button widget.
  ApiCallResponse? apiResultamtclientes;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<TMedidoresRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    buscaClientesFocusNode?.dispose();
    buscaClientesTextController?.dispose();

    paginatedDataTableController.dispose();
  }
}
