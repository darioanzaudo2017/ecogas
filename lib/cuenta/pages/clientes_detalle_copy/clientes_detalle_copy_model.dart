import '/flutter_flow/flutter_flow_util.dart';
import 'clientes_detalle_copy_widget.dart' show ClientesDetalleCopyWidget;
import 'package:flutter/material.dart';

class ClientesDetalleCopyModel
    extends FlutterFlowModel<ClientesDetalleCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
