import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'clientes_widget.dart' show ClientesWidget;
import 'package:flutter/material.dart';

class ClientesModel extends FlutterFlowModel<ClientesWidget> {
  ///  Local state fields for this page.

  int? contador = 0;

  List<String> listaidclientes = [];
  void addToListaidclientes(String item) => listaidclientes.add(item);
  void removeFromListaidclientes(String item) => listaidclientes.remove(item);
  void removeAtIndexFromListaidclientes(int index) =>
      listaidclientes.removeAt(index);
  void insertAtIndexInListaidclientes(int index, String item) =>
      listaidclientes.insert(index, item);
  void updateListaidclientesAtIndex(int index, Function(String) updateFn) =>
      listaidclientes[index] = updateFn(listaidclientes[index]);

  List<String> filaseleccionada = [];
  void addToFilaseleccionada(String item) => filaseleccionada.add(item);
  void removeFromFilaseleccionada(String item) => filaseleccionada.remove(item);
  void removeAtIndexFromFilaseleccionada(int index) =>
      filaseleccionada.removeAt(index);
  void insertAtIndexInFilaseleccionada(int index, String item) =>
      filaseleccionada.insert(index, item);
  void updateFilaseleccionadaAtIndex(int index, Function(String) updateFn) =>
      filaseleccionada[index] = updateFn(filaseleccionada[index]);

  String columnabusqueda = 'calle';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Buscar clientes)] action in Clientes widget.
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
  ApiCallResponse? apiResultamt;
  // Stores action output result for [Bottom Sheet - AsignarAgenteMedidor] action in Button widget.
  bool? clientesignados;
  // Stores action output result for [Backend Call - API (Buscar clientes)] action in Button widget.
  ApiCallResponse? apiResultzom1;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<BusquedaclienteStruct>();
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<VOrdenesDetalladasRow>? cliente;

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
