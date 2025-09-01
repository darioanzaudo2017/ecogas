import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cargarfotos_widget.dart' show CargarfotosWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CargarfotosModel extends FlutterFlowModel<CargarfotosWidget> {
  ///  Local state fields for this component.

  int? contador = 0;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading_subi1fotoovideo = false;
  FFUploadedFile uploadedLocalFile_subi1fotoovideo =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_subi1fotoovideo = '';

  Completer<List<TFotosRow>>? requestCompleter;
  bool isDataUploading_subirfoto = false;
  List<FFUploadedFile> uploadedLocalFiles_subirfoto = [];
  List<String> uploadedFileUrls_subirfoto = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
