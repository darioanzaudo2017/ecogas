import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cambio_medidor_widget.dart' show CambioMedidorWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CambioMedidorModel extends FlutterFlowModel<CambioMedidorWidget> {
  ///  Local state fields for this component.

  String? codigodebarraform = 'codigo';

  int? contadorfotos = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextFieldmedidornuevo widget.
  FocusNode? textFieldmedidornuevoFocusNode;
  TextEditingController? textFieldmedidornuevoTextController;
  String? Function(BuildContext, String?)?
      textFieldmedidornuevoTextControllerValidator;
  var barcode = '';
  // State field(s) for TextFieldlecturanueva widget.
  FocusNode? textFieldlecturanuevaFocusNode;
  TextEditingController? textFieldlecturanuevaTextController;
  String? Function(BuildContext, String?)?
      textFieldlecturanuevaTextControllerValidator;
  bool isDataUploading_uploadData55g1 = false;
  FFUploadedFile uploadedLocalFile_uploadData55g1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData55g1 = '';

  Completer<List<TFotosRow>>? requestCompleter;
  bool isDataUploading_uploadData55g = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadData55g = [];
  List<String> uploadedFileUrls_uploadData55g = [];

  // State field(s) for ChoiceChipsregulador widget.
  FormFieldController<List<String>>? choiceChipsreguladorValueController;
  String? get choiceChipsreguladorValue =>
      choiceChipsreguladorValueController?.value?.firstOrNull;
  set choiceChipsreguladorValue(String? val) =>
      choiceChipsreguladorValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsflexible widget.
  FormFieldController<List<String>>? choiceChipsflexibleValueController;
  String? get choiceChipsflexibleValue =>
      choiceChipsflexibleValueController?.value?.firstOrNull;
  set choiceChipsflexibleValue(String? val) =>
      choiceChipsflexibleValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Custom Action - latitud] action in Button widget.
  String? latcambio;
  // Stores action output result for [Custom Action - longitud] action in Button widget.
  String? longcambio;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldmedidornuevoFocusNode?.dispose();
    textFieldmedidornuevoTextController?.dispose();

    textFieldlecturanuevaFocusNode?.dispose();
    textFieldlecturanuevaTextController?.dispose();
  }

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
