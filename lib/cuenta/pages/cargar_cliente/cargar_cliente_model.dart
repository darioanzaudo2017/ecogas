import '/flutter_flow/flutter_flow_util.dart';
import 'cargar_cliente_widget.dart' show CargarClienteWidget;
import 'package:flutter/material.dart';

class CargarClienteModel extends FlutterFlowModel<CargarClienteWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NombreCliente widget.
  FocusNode? nombreClienteFocusNode;
  TextEditingController? nombreClienteTextController;
  String? Function(BuildContext, String?)? nombreClienteTextControllerValidator;
  String? _nombreClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre Cliente es Requerido';
    }

    return null;
  }

  // State field(s) for Telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  // State field(s) for NombreCalle widget.
  FocusNode? nombreCalleFocusNode;
  TextEditingController? nombreCalleTextController;
  String? Function(BuildContext, String?)? nombreCalleTextControllerValidator;
  String? _nombreCalleTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Calle es Requerido';
    }

    return null;
  }

  // State field(s) for NumeroCalle widget.
  FocusNode? numeroCalleFocusNode;
  TextEditingController? numeroCalleTextController;
  String? Function(BuildContext, String?)? numeroCalleTextControllerValidator;
  // State field(s) for Localidad widget.
  FocusNode? localidadFocusNode;
  TextEditingController? localidadTextController;
  String? Function(BuildContext, String?)? localidadTextControllerValidator;
  // State field(s) for Barrio widget.
  FocusNode? barrioFocusNode;
  TextEditingController? barrioTextController;
  String? Function(BuildContext, String?)? barrioTextControllerValidator;
  // State field(s) for Piso widget.
  FocusNode? pisoFocusNode;
  TextEditingController? pisoTextController;
  String? Function(BuildContext, String?)? pisoTextControllerValidator;
  // State field(s) for Dpto widget.
  FocusNode? dptoFocusNode;
  TextEditingController? dptoTextController;
  String? Function(BuildContext, String?)? dptoTextControllerValidator;
  // State field(s) for Latitud widget.
  FocusNode? latitudFocusNode;
  TextEditingController? latitudTextController;
  String? Function(BuildContext, String?)? latitudTextControllerValidator;
  String? _latitudTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Latitud es Requerido';
    }

    return null;
  }

  // State field(s) for longitud widget.
  FocusNode? longitudFocusNode;
  TextEditingController? longitudTextController;
  String? Function(BuildContext, String?)? longitudTextControllerValidator;
  String? _longitudTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Longitud es Requerido';
    }

    return null;
  }

  // State field(s) for NroContrato widget.
  FocusNode? nroContratoFocusNode;
  TextEditingController? nroContratoTextController;
  String? Function(BuildContext, String?)? nroContratoTextControllerValidator;
  // State field(s) for NroOrden widget.
  FocusNode? nroOrdenFocusNode;
  TextEditingController? nroOrdenTextController;
  String? Function(BuildContext, String?)? nroOrdenTextControllerValidator;
  // State field(s) for NroMedidor widget.
  FocusNode? nroMedidorFocusNode;
  TextEditingController? nroMedidorTextController;
  String? Function(BuildContext, String?)? nroMedidorTextControllerValidator;
  // State field(s) for LecturaMedidor widget.
  FocusNode? lecturaMedidorFocusNode;
  TextEditingController? lecturaMedidorTextController;
  String? Function(BuildContext, String?)?
      lecturaMedidorTextControllerValidator;
  // State field(s) for NroMedidorNuevo widget.
  FocusNode? nroMedidorNuevoFocusNode;
  TextEditingController? nroMedidorNuevoTextController;
  String? Function(BuildContext, String?)?
      nroMedidorNuevoTextControllerValidator;
  // State field(s) for LecturaMedidorNuevo widget.
  FocusNode? lecturaMedidorNuevoFocusNode;
  TextEditingController? lecturaMedidorNuevoTextController;
  String? Function(BuildContext, String?)?
      lecturaMedidorNuevoTextControllerValidator;
  // State field(s) for FechaLectua widget.
  FocusNode? fechaLectuaFocusNode;
  TextEditingController? fechaLectuaTextController;
  String? Function(BuildContext, String?)? fechaLectuaTextControllerValidator;
  // State field(s) for HoraCumplimiento widget.
  FocusNode? horaCumplimientoFocusNode;
  TextEditingController? horaCumplimientoTextController;
  String? Function(BuildContext, String?)?
      horaCumplimientoTextControllerValidator;
  // State field(s) for FechaVisita widget.
  FocusNode? fechaVisitaFocusNode;
  TextEditingController? fechaVisitaTextController;
  String? Function(BuildContext, String?)? fechaVisitaTextControllerValidator;
  // State field(s) for HoraVisita widget.
  FocusNode? horaVisitaFocusNode;
  TextEditingController? horaVisitaTextController;
  String? Function(BuildContext, String?)? horaVisitaTextControllerValidator;
  // State field(s) for Cepo widget.
  FocusNode? cepoFocusNode;
  TextEditingController? cepoTextController;
  String? Function(BuildContext, String?)? cepoTextControllerValidator;
  // State field(s) for PuntoSuministro widget.
  FocusNode? puntoSuministroFocusNode;
  TextEditingController? puntoSuministroTextController;
  String? Function(BuildContext, String?)?
      puntoSuministroTextControllerValidator;
  // State field(s) for CuadaExistente widget.
  FocusNode? cuadaExistenteFocusNode;
  TextEditingController? cuadaExistenteTextController;
  String? Function(BuildContext, String?)?
      cuadaExistenteTextControllerValidator;
  // State field(s) for CaudalNuevo widget.
  FocusNode? caudalNuevoFocusNode;
  TextEditingController? caudalNuevoTextController;
  String? Function(BuildContext, String?)? caudalNuevoTextControllerValidator;
  // State field(s) for VerificaCaudal widget.
  FocusNode? verificaCaudalFocusNode;
  TextEditingController? verificaCaudalTextController;
  String? Function(BuildContext, String?)?
      verificaCaudalTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {
    nombreClienteTextControllerValidator =
        _nombreClienteTextControllerValidator;
    nombreCalleTextControllerValidator = _nombreCalleTextControllerValidator;
    latitudTextControllerValidator = _latitudTextControllerValidator;
    longitudTextControllerValidator = _longitudTextControllerValidator;
  }

  @override
  void dispose() {
    nombreClienteFocusNode?.dispose();
    nombreClienteTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    nombreCalleFocusNode?.dispose();
    nombreCalleTextController?.dispose();

    numeroCalleFocusNode?.dispose();
    numeroCalleTextController?.dispose();

    localidadFocusNode?.dispose();
    localidadTextController?.dispose();

    barrioFocusNode?.dispose();
    barrioTextController?.dispose();

    pisoFocusNode?.dispose();
    pisoTextController?.dispose();

    dptoFocusNode?.dispose();
    dptoTextController?.dispose();

    latitudFocusNode?.dispose();
    latitudTextController?.dispose();

    longitudFocusNode?.dispose();
    longitudTextController?.dispose();

    nroContratoFocusNode?.dispose();
    nroContratoTextController?.dispose();

    nroOrdenFocusNode?.dispose();
    nroOrdenTextController?.dispose();

    nroMedidorFocusNode?.dispose();
    nroMedidorTextController?.dispose();

    lecturaMedidorFocusNode?.dispose();
    lecturaMedidorTextController?.dispose();

    nroMedidorNuevoFocusNode?.dispose();
    nroMedidorNuevoTextController?.dispose();

    lecturaMedidorNuevoFocusNode?.dispose();
    lecturaMedidorNuevoTextController?.dispose();

    fechaLectuaFocusNode?.dispose();
    fechaLectuaTextController?.dispose();

    horaCumplimientoFocusNode?.dispose();
    horaCumplimientoTextController?.dispose();

    fechaVisitaFocusNode?.dispose();
    fechaVisitaTextController?.dispose();

    horaVisitaFocusNode?.dispose();
    horaVisitaTextController?.dispose();

    cepoFocusNode?.dispose();
    cepoTextController?.dispose();

    puntoSuministroFocusNode?.dispose();
    puntoSuministroTextController?.dispose();

    cuadaExistenteFocusNode?.dispose();
    cuadaExistenteTextController?.dispose();

    caudalNuevoFocusNode?.dispose();
    caudalNuevoTextController?.dispose();

    verificaCaudalFocusNode?.dispose();
    verificaCaudalTextController?.dispose();
  }
}
