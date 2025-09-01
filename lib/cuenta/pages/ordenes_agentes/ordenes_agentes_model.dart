import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'ordenes_agentes_widget.dart' show OrdenesAgentesWidget;
import 'package:flutter/material.dart';

class OrdenesAgentesModel extends FlutterFlowModel<OrdenesAgentesWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Custom Action - latitud] action in OrdenesAgentes widget.
  String? lat;
  // Stores action output result for [Custom Action - longitud] action in OrdenesAgentes widget.
  String? long;
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
    instantTimer?.cancel();
    tabBarController?.dispose();
  }
}
