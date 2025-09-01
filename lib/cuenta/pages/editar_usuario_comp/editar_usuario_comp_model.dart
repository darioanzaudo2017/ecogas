import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_usuario_comp_widget.dart' show EditarUsuarioCompWidget;
import 'package:flutter/material.dart';

class EditarUsuarioCompModel extends FlutterFlowModel<EditarUsuarioCompWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Nombres widget.
  FocusNode? nombresFocusNode;
  TextEditingController? nombresTextController;
  String? Function(BuildContext, String?)? nombresTextControllerValidator;
  String? _nombresTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombres es requerido';
    }

    return null;
  }

  // State field(s) for Apellido widget.
  FocusNode? apellidoFocusNode;
  TextEditingController? apellidoTextController;
  String? Function(BuildContext, String?)? apellidoTextControllerValidator;
  String? _apellidoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El Apellido es requerido';
    }

    return null;
  }

  // State field(s) for Telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  String? _telefonoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El Teléfono es requerido';
    }

    return null;
  }

  // State field(s) for Legajo widget.
  FocusNode? legajoFocusNode;
  TextEditingController? legajoTextController;
  String? Function(BuildContext, String?)? legajoTextControllerValidator;
  // State field(s) for TipodeUsuario widget.
  String? tipodeUsuarioValue;
  FormFieldController<String>? tipodeUsuarioValueController;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    nombresTextControllerValidator = _nombresTextControllerValidator;
    apellidoTextControllerValidator = _apellidoTextControllerValidator;
    telefonoTextControllerValidator = _telefonoTextControllerValidator;
  }

  @override
  void dispose() {
    nombresFocusNode?.dispose();
    nombresTextController?.dispose();

    apellidoFocusNode?.dispose();
    apellidoTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    legajoFocusNode?.dispose();
    legajoTextController?.dispose();
  }
}
