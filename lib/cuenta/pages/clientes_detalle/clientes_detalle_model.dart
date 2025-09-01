import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'clientes_detalle_widget.dart' show ClientesDetalleWidget;
import 'package:flutter/material.dart';

class ClientesDetalleModel extends FlutterFlowModel<ClientesDetalleWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

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
  // State field(s) for ChoiceChipsrperdidasperdidasFueradezonadetrabajo widget.
  FormFieldController<List<String>>?
      choiceChipsrperdidasperdidasFueradezonadetrabajoValueController;
  String? get choiceChipsrperdidasperdidasFueradezonadetrabajoValue =>
      choiceChipsrperdidasperdidasFueradezonadetrabajoValueController
          ?.value?.firstOrNull;
  set choiceChipsrperdidasperdidasFueradezonadetrabajoValue(String? val) =>
      choiceChipsrperdidasperdidasFueradezonadetrabajoValueController?.value =
          val != null ? [val] : [];
  // State field(s) for ChoiceChipsFotosVer widget.
  FormFieldController<List<String>>? choiceChipsFotosVerValueController;
  String? get choiceChipsFotosVerValue =>
      choiceChipsFotosVerValueController?.value?.firstOrNull;
  set choiceChipsFotosVerValue(String? val) =>
      choiceChipsFotosVerValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsOrdenVer widget.
  FormFieldController<List<String>>? choiceChipsOrdenVerValueController;
  String? get choiceChipsOrdenVerValue =>
      choiceChipsOrdenVerValueController?.value?.firstOrNull;
  set choiceChipsOrdenVerValue(String? val) =>
      choiceChipsOrdenVerValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
