import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cambio_medidor_edit_widget.dart' show CambioMedidorEditWidget;
import 'package:flutter/material.dart';

class CambioMedidorEditModel extends FlutterFlowModel<CambioMedidorEditWidget> {
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
  bool isDataUploading_uploadDataXhyedit = false;
  FFUploadedFile uploadedLocalFile_uploadDataXhyedit =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataXhyedit = '';

  bool isDataUploading_uploadData55gedit = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadData55gedit = [];
  List<String> uploadedFileUrls_uploadData55gedit = [];

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
}
