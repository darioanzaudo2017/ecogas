import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'formularioagentecompleto_copy_widget.dart'
    show FormularioagentecompletoCopyWidget;
import 'package:flutter/material.dart';

class FormularioagentecompletoCopyModel
    extends FlutterFlowModel<FormularioagentecompletoCopyWidget> {
  ///  Local state fields for this component.

  int contador = 0;

  String morador = 'Ns/Nc';

  String accedecliente = 'Ns/Nc';

  String? codigomedidor;

  String? lat;

  String? long;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - latitud] action in formularioagentecompletoCopy widget.
  String? latitud;
  // Stores action output result for [Custom Action - longitud] action in formularioagentecompletoCopy widget.
  String? longitud;
  // State field(s) for ChoiceChipsmorador widget.
  FormFieldController<List<String>>? choiceChipsmoradorValueController;
  String? get choiceChipsmoradorValue =>
      choiceChipsmoradorValueController?.value?.firstOrNull;
  set choiceChipsmoradorValue(String? val) =>
      choiceChipsmoradorValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsaccedecliente widget.
  FormFieldController<List<String>>? choiceChipsaccedeclienteValueController;
  String? get choiceChipsaccedeclienteValue =>
      choiceChipsaccedeclienteValueController?.value?.firstOrNull;
  set choiceChipsaccedeclienteValue(String? val) =>
      choiceChipsaccedeclienteValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsmedidordeterioro widget.
  FormFieldController<List<String>>? choiceChipsmedidordeterioroValueController;
  String? get choiceChipsmedidordeterioroValue =>
      choiceChipsmedidordeterioroValueController?.value?.firstOrNull;
  set choiceChipsmedidordeterioroValue(String? val) =>
      choiceChipsmedidordeterioroValueController?.value =
          val != null ? [val] : [];
  // State field(s) for ChoiceChipsreja widget.
  FormFieldController<List<String>>? choiceChipsrejaValueController;
  String? get choiceChipsrejaValue =>
      choiceChipsrejaValueController?.value?.firstOrNull;
  set choiceChipsrejaValue(String? val) =>
      choiceChipsrejaValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsretirodereja widget.
  FormFieldController<List<String>>? choiceChipsretiroderejaValueController;
  String? get choiceChipsretiroderejaValue =>
      choiceChipsretiroderejaValueController?.value?.firstOrNull;
  set choiceChipsretiroderejaValue(String? val) =>
      choiceChipsretiroderejaValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsrdetecciondefugas widget.
  FormFieldController<List<String>>?
      choiceChipsrdetecciondefugasValueController;
  String? get choiceChipsrdetecciondefugasValue =>
      choiceChipsrdetecciondefugasValueController?.value?.firstOrNull;
  set choiceChipsrdetecciondefugasValue(String? val) =>
      choiceChipsrdetecciondefugasValueController?.value =
          val != null ? [val] : [];
  // State field(s) for ChoiceChipsrPerdidaenvalula widget.
  FormFieldController<List<String>>? choiceChipsrPerdidaenvalulaValueController;
  String? get choiceChipsrPerdidaenvalulaValue =>
      choiceChipsrPerdidaenvalulaValueController?.value?.firstOrNull;
  set choiceChipsrPerdidaenvalulaValue(String? val) =>
      choiceChipsrPerdidaenvalulaValueController?.value =
          val != null ? [val] : [];
  // State field(s) for ChoiceChipsroperarlavalvula widget.
  FormFieldController<List<String>>? choiceChipsroperarlavalvulaValueController;
  String? get choiceChipsroperarlavalvulaValue =>
      choiceChipsroperarlavalvulaValueController?.value?.firstOrNull;
  set choiceChipsroperarlavalvulaValue(String? val) =>
      choiceChipsroperarlavalvulaValueController?.value =
          val != null ? [val] : [];
  // State field(s) for ChoiceChipsrperdidasdespuesdeoperar widget.
  FormFieldController<List<String>>?
      choiceChipsrperdidasdespuesdeoperarValueController;
  String? get choiceChipsrperdidasdespuesdeoperarValue =>
      choiceChipsrperdidasdespuesdeoperarValueController?.value?.firstOrNull;
  set choiceChipsrperdidasdespuesdeoperarValue(String? val) =>
      choiceChipsrperdidasdespuesdeoperarValueController?.value =
          val != null ? [val] : [];
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
  // Stores action output result for [Backend Call - API (existemedidor)] action in Button widget.
  ApiCallResponse? apiResult9ni;
  // State field(s) for TextFieldlecturanueva widget.
  FocusNode? textFieldlecturanuevaFocusNode;
  TextEditingController? textFieldlecturanuevaTextController;
  String? Function(BuildContext, String?)?
      textFieldlecturanuevaTextControllerValidator;
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

  /// Action blocks.
  Future latitudlongitud(BuildContext context) async {
    String? latitud;
    String? longitud;
    LatLng currentUserLocationValue =
        await getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0));

    latitud = await actions.latitud(
      currentUserLocationValue,
    );
    longitud = await actions.longitud(
      currentUserLocationValue,
    );
  }
}
