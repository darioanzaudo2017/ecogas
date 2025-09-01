import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ordenes_widget.dart' show OrdenesWidget;
import 'package:flutter/material.dart';

class OrdenesModel extends FlutterFlowModel<OrdenesWidget> {
  ///  Local state fields for this page.

  String estadoOrdenes = 'PENDIENTE';

  ///  State fields for stateful widgets in this page.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<VOrdenesDetalladasRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
