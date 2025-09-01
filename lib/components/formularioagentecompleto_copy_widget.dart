import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/cargarfotos_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'formularioagentecompleto_copy_model.dart';
export 'formularioagentecompleto_copy_model.dart';

/// Create a component
/// Componentes principales:
///
/// Formulario de inicio de visita con:
///
/// Campo de texto: Dirección del domicilio.
///
/// Choice Chips:
///
/// "¿Hay morador presente?" → Opciones: “Sí” / “No”
///
/// "¿Es primera visita?" → Opciones: “Sí” / “No”
///
/// Botón: “Iniciar proceso”.
///
/// Flujo de decisiones dinámico mediante lógica condicional con Choice Chips
/// en cada punto de decisión:
///
/// ¿Cliente accede al cambio?
///
/// ¿Gabinete en línea municipal?
///
/// ¿Gabinete deteriorado / manipulado?
///
/// ¿Posee reja o soldadura?
///
/// ¿Puede retirar?
///
/// ¿Se puede operar válvula?
///
/// ¿Se detecta pérdida?
///
/// ¿Hay litrado?
///
/// ¿Se detectan fugas fuera de la zona?
///
/// Y otros puntos críticos del flujograma.
///
/// Subsecciones visibles según decisiones:
///
/// Campos para observaciones (texto) y carga de fotos.
///
/// Campos para firma digital del cliente.
///
/// Botones: “Realizar Retiro”, “Cerrar Orden”, “Generar Reclamo”, etc.
///
/// Indicador de progreso (etapas del flujo).
///
/// Campo para escribir el texto final de notificación a Call Center.
///
/// Estilo visual deseado:
///
/// Interfaz moderna y profesional, fondo claro, acentos en azul
/// institucional.
///
/// Uso de Choice Chips en lugar de checkboxes para todas las decisiones de
/// tipo sí/no.
///
/// Tipografía Sans Serif, tamaño mínimo 16 px.
///
/// Espaciado generoso, especialmente pensado para tablets en campo.
class FormularioagentecompletoCopyWidget extends StatefulWidget {
  const FormularioagentecompletoCopyWidget({
    super.key,
    this.idorden,
  });

  final int? idorden;

  @override
  State<FormularioagentecompletoCopyWidget> createState() =>
      _FormularioagentecompletoCopyWidgetState();
}

class _FormularioagentecompletoCopyWidgetState
    extends State<FormularioagentecompletoCopyWidget> {
  late FormularioagentecompletoCopyModel _model;

  LatLng? currentUserLocationValue;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormularioagentecompletoCopyModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0));
      _model.latitud = await actions.latitud(
        currentUserLocationValue,
      );
      _model.longitud = await actions.longitud(
        currentUserLocationValue,
      );
      _model.lat = _model.latitud;
      _model.long = _model.longitud;
      safeSetState(() {});
    });

    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textFieldmedidornuevoTextController ??= TextEditingController();
    _model.textFieldmedidornuevoFocusNode ??= FocusNode();

    _model.textFieldlecturanuevaTextController ??= TextEditingController();
    _model.textFieldlecturanuevaFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: FutureBuilder<List<VOrdenesDetalladasRow>>(
        future: VOrdenesDetalladasTable().querySingleRow(
          queryFn: (q) => q.eqOrNull(
            'id_orden',
            widget.idorden,
          ),
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitChasingDots(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            );
          }
          List<VOrdenesDetalladasRow> containerVOrdenesDetalladasRowList =
              snapshot.data!;

          final containerVOrdenesDetalladasRow =
              containerVOrdenesDetalladasRowList.isNotEmpty
                  ? containerVOrdenesDetalladasRowList.first
                  : null;

          return Container(
            width: 600.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          'Formulario de Inicio de Visita',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '¿Hay morador presente?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          FlutterFlowChoiceChips(
                            options: [
                              ChipData('Si'),
                              ChipData('No'),
                              ChipData('Ns/Nc')
                            ],
                            onChanged: (val) async {
                              safeSetState(() => _model
                                  .choiceChipsmoradorValue = val?.firstOrNull);
                              _model.morador = _model.choiceChipsmoradorValue!;
                              safeSetState(() {});
                            },
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 10.0, 20.0, 10.0),
                              elevation: 4.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 10.0, 20.0, 10.0),
                              elevation: 4.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            chipSpacing: 20.0,
                            multiselect: false,
                            initialized: _model.choiceChipsmoradorValue != null,
                            alignment: WrapAlignment.start,
                            controller:
                                _model.choiceChipsmoradorValueController ??=
                                    FormFieldController<List<String>>(
                              ['Ns/Nc'],
                            ),
                            wrapped: false,
                          ),
                        ].divide(SizedBox(height: 12.0)),
                      ),
                      if (_model.choiceChipsmoradorValue == 'Si')
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '¿Cliente Accede a que se\nrealice el cambio?',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                            FlutterFlowChoiceChips(
                              options: [
                                ChipData('Si'),
                                ChipData('No'),
                                ChipData('Ns/Nc')
                              ],
                              onChanged: (val) async {
                                safeSetState(() =>
                                    _model.choiceChipsaccedeclienteValue =
                                        val?.firstOrNull);
                                _model.accedecliente =
                                    _model.choiceChipsaccedeclienteValue!;
                                safeSetState(() {});
                              },
                              selectedChipStyle: ChipStyle(
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              chipSpacing: 20.0,
                              multiselect: false,
                              initialized:
                                  _model.choiceChipsaccedeclienteValue != null,
                              alignment: WrapAlignment.start,
                              controller: _model
                                      .choiceChipsaccedeclienteValueController ??=
                                  FormFieldController<List<String>>(
                                ['Ns/Nc'],
                              ),
                              wrapped: false,
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      if (_model.choiceChipsaccedeclienteValue == 'Si')
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '¿Gabinete Gravemente Deteriorado o Medidor Manipulado o conexión irregular evidente?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ],
                            ),
                            FlutterFlowChoiceChips(
                              options: [
                                ChipData('Si'),
                                ChipData('No'),
                                ChipData('Ns/Nc')
                              ],
                              onChanged: (val) => safeSetState(() =>
                                  _model.choiceChipsmedidordeterioroValue =
                                      val?.firstOrNull),
                              selectedChipStyle: ChipStyle(
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              chipSpacing: 20.0,
                              multiselect: false,
                              initialized:
                                  _model.choiceChipsmedidordeterioroValue !=
                                      null,
                              alignment: WrapAlignment.start,
                              controller: _model
                                      .choiceChipsmedidordeterioroValueController ??=
                                  FormFieldController<List<String>>(
                                ['Ns/Nc'],
                              ),
                              wrapped: false,
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      if (_model.choiceChipsmedidordeterioroValue == 'No')
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '¿Posee reja o soldadura?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ],
                            ),
                            FlutterFlowChoiceChips(
                              options: [
                                ChipData('Si'),
                                ChipData('No'),
                                ChipData('Ns/Nc')
                              ],
                              onChanged: (val) => safeSetState(() => _model
                                  .choiceChipsrejaValue = val?.firstOrNull),
                              selectedChipStyle: ChipStyle(
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              chipSpacing: 20.0,
                              multiselect: false,
                              initialized: _model.choiceChipsrejaValue != null,
                              alignment: WrapAlignment.start,
                              controller:
                                  _model.choiceChipsrejaValueController ??=
                                      FormFieldController<List<String>>(
                                ['Ns/Nc'],
                              ),
                              wrapped: false,
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      if (_model.choiceChipsrejaValue == 'Si')
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '¿Se puede retirar?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ],
                            ),
                            FlutterFlowChoiceChips(
                              options: [
                                ChipData('Si'),
                                ChipData('No'),
                                ChipData('Ns/Nc')
                              ],
                              onChanged: (val) => safeSetState(() =>
                                  _model.choiceChipsretiroderejaValue =
                                      val?.firstOrNull),
                              selectedChipStyle: ChipStyle(
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              chipSpacing: 20.0,
                              multiselect: false,
                              initialized:
                                  _model.choiceChipsretiroderejaValue != null,
                              alignment: WrapAlignment.start,
                              controller: _model
                                      .choiceChipsretiroderejaValueController ??=
                                  FormFieldController<List<String>>(
                                ['Ns/Nc'],
                              ),
                              wrapped: false,
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      if ((_model.choiceChipsrejaValue == 'No') ||
                          ((_model.choiceChipsrejaValue == 'Si') &&
                              (_model.choiceChipsretiroderejaValue == 'Si')))
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '¿Se detectan fugas fuera de la zona de trabajo?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ],
                            ),
                            FlutterFlowChoiceChips(
                              options: [
                                ChipData('Si'),
                                ChipData('No'),
                                ChipData('Ns/Nc')
                              ],
                              onChanged: (val) => safeSetState(() =>
                                  _model.choiceChipsrdetecciondefugasValue =
                                      val?.firstOrNull),
                              selectedChipStyle: ChipStyle(
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              chipSpacing: 20.0,
                              multiselect: false,
                              initialized:
                                  _model.choiceChipsrdetecciondefugasValue !=
                                      null,
                              alignment: WrapAlignment.start,
                              controller: _model
                                      .choiceChipsrdetecciondefugasValueController ??=
                                  FormFieldController<List<String>>(
                                ['Ns/Nc'],
                              ),
                              wrapped: false,
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      if (_model.choiceChipsrdetecciondefugasValue == 'Si')
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '¿Perdida en valvula?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ],
                            ),
                            FlutterFlowChoiceChips(
                              options: [
                                ChipData('Si'),
                                ChipData('No'),
                                ChipData('Ns/Nc')
                              ],
                              onChanged: (val) => safeSetState(() =>
                                  _model.choiceChipsrPerdidaenvalulaValue =
                                      val?.firstOrNull),
                              selectedChipStyle: ChipStyle(
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              chipSpacing: 20.0,
                              multiselect: false,
                              initialized:
                                  _model.choiceChipsrPerdidaenvalulaValue !=
                                      null,
                              alignment: WrapAlignment.start,
                              controller: _model
                                      .choiceChipsrPerdidaenvalulaValueController ??=
                                  FormFieldController<List<String>>(
                                ['Ns/Nc'],
                              ),
                              wrapped: false,
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      if ((_model.choiceChipsrPerdidaenvalulaValue == 'Si') ||
                          (_model.choiceChipsrdetecciondefugasValue == 'No'))
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '¿Se puede operar la valvula?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ],
                            ),
                            FlutterFlowChoiceChips(
                              options: [
                                ChipData('Si'),
                                ChipData('No'),
                                ChipData('Ns/Nc')
                              ],
                              onChanged: (val) => safeSetState(() =>
                                  _model.choiceChipsroperarlavalvulaValue =
                                      val?.firstOrNull),
                              selectedChipStyle: ChipStyle(
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              chipSpacing: 20.0,
                              multiselect: false,
                              initialized:
                                  _model.choiceChipsroperarlavalvulaValue !=
                                      null,
                              alignment: WrapAlignment.start,
                              controller: _model
                                      .choiceChipsroperarlavalvulaValueController ??=
                                  FormFieldController<List<String>>(
                                ['Ns/Nc'],
                              ),
                              wrapped: false,
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      if (_model.choiceChipsroperarlavalvulaValue == 'Si')
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '¿Se detectan perdidas luego de operar la valvula?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ],
                            ),
                            FlutterFlowChoiceChips(
                              options: [
                                ChipData('Si'),
                                ChipData('No'),
                                ChipData('Ns/Nc')
                              ],
                              onChanged: (val) => safeSetState(() => _model
                                      .choiceChipsrperdidasdespuesdeoperarValue =
                                  val?.firstOrNull),
                              selectedChipStyle: ChipStyle(
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              chipSpacing: 20.0,
                              multiselect: false,
                              initialized: _model
                                      .choiceChipsrperdidasdespuesdeoperarValue !=
                                  null,
                              alignment: WrapAlignment.start,
                              controller: _model
                                      .choiceChipsrperdidasdespuesdeoperarValueController ??=
                                  FormFieldController<List<String>>(
                                ['Ns/Nc'],
                              ),
                              wrapped: false,
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      if (_model.choiceChipsrperdidasdespuesdeoperarValue ==
                          'No')
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  child: Text(
                                    'Instalacion de nuevo medidor',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Medidor Retirado',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              TextFormField(
                                                controller:
                                                    _model.textController1 ??=
                                                        TextEditingController(
                                                  text:
                                                      containerVOrdenesDetalladasRow
                                                          ?.clienteMedidor,
                                                ),
                                                focusNode:
                                                    _model.textFieldFocusNode1,
                                                autofocus: false,
                                                textInputAction:
                                                    TextInputAction.next,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontStyle,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(16.0, 16.0,
                                                              16.0, 16.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                validator: _model
                                                    .textController1Validator
                                                    .asValidator(context),
                                              ),
                                            ].divide(SizedBox(height: 6.0)),
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Lectura Retirado',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              TextFormField(
                                                controller:
                                                    _model.textController2 ??=
                                                        TextEditingController(
                                                  text:
                                                      containerVOrdenesDetalladasRow
                                                          ?.clienteLectura
                                                          ?.toString(),
                                                ),
                                                focusNode:
                                                    _model.textFieldFocusNode2,
                                                autofocus: false,
                                                textInputAction:
                                                    TextInputAction.next,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontStyle,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(16.0, 16.0,
                                                              16.0, 16.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                validator: _model
                                                    .textController2Validator
                                                    .asValidator(context),
                                              ),
                                            ].divide(SizedBox(height: 6.0)),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 20.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Medidor Instalado',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              TextFormField(
                                                controller: _model
                                                    .textFieldmedidornuevoTextController,
                                                focusNode: _model
                                                    .textFieldmedidornuevoFocusNode,
                                                autofocus: false,
                                                textInputAction:
                                                    TextInputAction.next,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontStyle,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(16.0, 16.0,
                                                              16.0, 16.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                validator: _model
                                                    .textFieldmedidornuevoTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                              SelectionArea(
                                                  child: Text(
                                                valueOrDefault<String>(
                                                  _model.codigomedidor,
                                                  'Sin dato',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              )),
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  _model.barcode =
                                                      await FlutterBarcodeScanner
                                                          .scanBarcode(
                                                    '#C62828', // scanning line color
                                                    'Cancel', // cancel button text
                                                    true, // whether to show the flash icon
                                                    ScanMode.BARCODE,
                                                  );

                                                  _model.apiResult9ni =
                                                      await ExistemedidorCall
                                                          .call(
                                                    nummedidor: int.parse(
                                                        (_model.barcode)),
                                                  );

                                                  if (ExistemedidorCall.check(
                                                    (_model.apiResult9ni
                                                            ?.jsonBody ??
                                                        ''),
                                                  )) {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              'Medidor correcto'),
                                                          content: Text(
                                                              'Se va a cargar medidor numero: ${_model.barcode}'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                    _model.codigomedidor =
                                                        _model.barcode;
                                                    safeSetState(() {});
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              'Medidor incorrecto'),
                                                          content: Text(
                                                              'El numero de medidor no esta en la lista de stock!'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  }

                                                  safeSetState(() {});
                                                },
                                                text: 'leer codigo',
                                                icon: FaIcon(
                                                  FontAwesomeIcons.barcode,
                                                  size: 15.0,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                            ),
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 6.0)),
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Lectura medidor nuevo',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              TextFormField(
                                                controller: _model
                                                    .textFieldlecturanuevaTextController,
                                                focusNode: _model
                                                    .textFieldlecturanuevaFocusNode,
                                                autofocus: false,
                                                textInputAction:
                                                    TextInputAction.next,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontStyle,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(16.0, 16.0,
                                                              16.0, 16.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                keyboardType:
                                                    TextInputType.phone,
                                                validator: _model
                                                    .textFieldlecturanuevaTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ].divide(SizedBox(height: 6.0)),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 20.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Regulador',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              FlutterFlowChoiceChips(
                                                options: [
                                                  ChipData('Si'),
                                                  ChipData('No')
                                                ],
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                            .choiceChipsreguladorValue =
                                                        val?.firstOrNull),
                                                selectedChipStyle: ChipStyle(
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  iconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                  iconSize: 16.0,
                                                  labelPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(15.0, 5.0,
                                                              15.0, 5.0),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                unselectedChipStyle: ChipStyle(
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  iconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  iconSize: 16.0,
                                                  labelPadding:
                                                      EdgeInsets.all(10.0),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                chipSpacing: 8.0,
                                                rowSpacing: 8.0,
                                                multiselect: false,
                                                alignment: WrapAlignment.start,
                                                controller: _model
                                                        .choiceChipsreguladorValueController ??=
                                                    FormFieldController<
                                                        List<String>>(
                                                  [],
                                                ),
                                                wrapped: true,
                                              ),
                                            ].divide(SizedBox(height: 6.0)),
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Flexible',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              FlutterFlowChoiceChips(
                                                options: [
                                                  ChipData('Si'),
                                                  ChipData('No')
                                                ],
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                            .choiceChipsflexibleValue =
                                                        val?.firstOrNull),
                                                selectedChipStyle: ChipStyle(
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  iconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                  iconSize: 16.0,
                                                  labelPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(15.0, 5.0,
                                                              15.0, 5.0),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                unselectedChipStyle: ChipStyle(
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  iconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  iconSize: 16.0,
                                                  labelPadding:
                                                      EdgeInsets.all(10.0),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                chipSpacing: 8.0,
                                                rowSpacing: 8.0,
                                                multiselect: false,
                                                alignment: WrapAlignment.start,
                                                controller: _model
                                                        .choiceChipsflexibleValueController ??=
                                                    FormFieldController<
                                                        List<String>>(
                                                  [],
                                                ),
                                                wrapped: true,
                                              ),
                                            ].divide(SizedBox(height: 6.0)),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 20.0)),
                                    ),
                                  ].divide(SizedBox(height: 20.0)),
                                ),
                              ].divide(SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (_model.morador == 'No')
                            FFButtonWidget(
                              onPressed: () async {
                                if (containerVOrdenesDetalladasRow
                                        ?.idEstadoOrden ==
                                    '9cedf5ae-f10c-4412-a617-69646a4ee515') {
                                  await TOrdenesTable().update(
                                    data: {
                                      'morador': _model.choiceChipsmoradorValue,
                                      'id_estado_orden':
                                          '1c3152ca-81aa-462a-a61b-76c1666de130',
                                      'fecha_primera_visita':
                                          supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                      'fecha_segunda_visita':
                                          supaSerialize<DateTime>(
                                              functions.fechasegundavisita(
                                                  getCurrentTimestamp)),
                                      'latcambio': _model.lat,
                                      'longcambio': _model.long,
                                      'cliente_accede_cambio': 'Ns/Nc',
                                      'medidor_mal_estado': 'Ns/Nc',
                                      'posee_reja_soldadura': 'Ns/Nc',
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'id_orden',
                                      widget.idorden,
                                    ),
                                  );
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text(
                                            'Se cambio al estado primera visita'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  Navigator.pop(context);
                                } else {
                                  if (containerVOrdenesDetalladasRow
                                          ?.idEstado ==
                                      '1c3152ca-81aa-462a-a61b-76c1666de130') {
                                    await TOrdenesTable().update(
                                      data: {
                                        'morador':
                                            _model.choiceChipsmoradorValue,
                                        'id_estado_orden':
                                            'b28d55bb-f885-4cfa-a181-88c1d80ac118',
                                        'fecha_segunda_visita':
                                            supaSerialize<DateTime>(
                                                getCurrentTimestamp),
                                        'motivo_de_cierre': 1,
                                        'latcambio': _model.lat,
                                        'longcambio': _model.long,
                                      },
                                      matchingRows: (rows) => rows.eqOrNull(
                                        'id_orden',
                                        widget.idorden,
                                      ),
                                    );
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Cierre Agente'),
                                          content: Text(
                                              'Motivo: Cierre segunda visita sin morador'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                    Navigator.pop(context);
                                  }
                                }
                              },
                              text: 'Guardar sin morador',
                              icon: Icon(
                                Icons.save_sharp,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 48.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          if (_model.accedecliente == 'No')
                            FFButtonWidget(
                              onPressed: () async {
                                await TOrdenesTable().update(
                                  data: {
                                    'morador': _model.choiceChipsmoradorValue,
                                    'id_estado_orden':
                                        'b28d55bb-f885-4cfa-a181-88c1d80ac118',
                                    'fecha_primera_visita':
                                        supaSerialize<DateTime>(
                                            getCurrentTimestamp),
                                    'motivo_de_cierre': 2,
                                    'cliente_accede_cambio':
                                        valueOrDefault<String>(
                                      _model.choiceChipsaccedeclienteValue,
                                      'Ns/Nc',
                                    ),
                                    'medidor_mal_estado':
                                        valueOrDefault<String>(
                                      _model.choiceChipsmedidordeterioroValue,
                                      'Ns/Nc',
                                    ),
                                    'posee_reja_soldadura':
                                        valueOrDefault<String>(
                                      _model.choiceChipsrejaValue,
                                      'Ns/Nc',
                                    ),
                                    'puede_retirar': valueOrDefault<String>(
                                      _model.choiceChipsretiroderejaValue,
                                      'Ns/Nc',
                                    ),
                                    'fugas': valueOrDefault<String>(
                                      _model.choiceChipsrdetecciondefugasValue,
                                      'Ns/Nc',
                                    ),
                                    'perdida_valvula': valueOrDefault<String>(
                                      _model.choiceChipsrPerdidaenvalulaValue,
                                      'Ns/Nc',
                                    ),
                                    'operar_valvula': valueOrDefault<String>(
                                      _model.choiceChipsroperarlavalvulaValue,
                                      'Ns/Nc',
                                    ),
                                    'continua_perdida_valvula':
                                        valueOrDefault<String>(
                                      _model
                                          .choiceChipsrperdidasdespuesdeoperarValue,
                                      'Ns/Nc',
                                    ),
                                    'existe_litracion': 'Ns/Nc',
                                    'latcambio': _model.lat,
                                    'longcambio': _model.long,
                                  },
                                  matchingRows: (rows) => rows.eqOrNull(
                                    'id_orden',
                                    widget.idorden,
                                  ),
                                );
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Se guardo correctamente'),
                                      content: Text(
                                          'Se requieren fotos para terminar el proceso'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: CargarfotosWidget(
                                        idorden: widget.idorden,
                                        tipofoto: 'No accede al cambio',
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));

                                Navigator.pop(context);
                              },
                              text: 'Guardar cliente se niega a cambio',
                              icon: Icon(
                                Icons.save_sharp,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 48.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          if (_model.choiceChipsmedidordeterioroValue == 'Si')
                            FFButtonWidget(
                              onPressed: () async {
                                await TOrdenesTable().update(
                                  data: {
                                    'morador': _model.choiceChipsmoradorValue,
                                    'id_estado_orden':
                                        'b28d55bb-f885-4cfa-a181-88c1d80ac118',
                                    'fecha_primera_visita':
                                        supaSerialize<DateTime>(
                                            getCurrentTimestamp),
                                    'motivo_de_cierre': 3,
                                    'cliente_accede_cambio':
                                        valueOrDefault<String>(
                                      _model.choiceChipsaccedeclienteValue,
                                      'Ns/Nc',
                                    ),
                                    'medidor_mal_estado':
                                        valueOrDefault<String>(
                                      _model.choiceChipsmedidordeterioroValue,
                                      'Ns/Nc',
                                    ),
                                    'posee_reja_soldadura':
                                        valueOrDefault<String>(
                                      _model.choiceChipsrejaValue,
                                      'Ns/Nc',
                                    ),
                                    'puede_retirar': valueOrDefault<String>(
                                      _model.choiceChipsretiroderejaValue,
                                      'Ns/Nc',
                                    ),
                                    'fugas': valueOrDefault<String>(
                                      _model.choiceChipsrdetecciondefugasValue,
                                      'Ns/Nc',
                                    ),
                                    'perdida_valvula': valueOrDefault<String>(
                                      _model.choiceChipsrPerdidaenvalulaValue,
                                      'Ns/Nc',
                                    ),
                                    'operar_valvula': valueOrDefault<String>(
                                      _model.choiceChipsroperarlavalvulaValue,
                                      'Ns/Nc',
                                    ),
                                    'continua_perdida_valvula':
                                        valueOrDefault<String>(
                                      _model
                                          .choiceChipsrperdidasdespuesdeoperarValue,
                                      'Ns/Nc',
                                    ),
                                    'existe_litracion': 'Ns/Nc',
                                    'latcambio': _model.lat,
                                    'longcambio': _model.long,
                                  },
                                  matchingRows: (rows) => rows.eqOrNull(
                                    'id_orden',
                                    widget.idorden,
                                  ),
                                );
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Se guardo correctamente'),
                                      content: Text(
                                          'Se requieren fotos para terminar el proceso'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: CargarfotosWidget(
                                        tipofoto: 'Medidor deteriorado',
                                        idorden: widget.idorden,
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));

                                Navigator.pop(context);
                              },
                              text: 'Guardar Medidor con deterioro',
                              icon: Icon(
                                Icons.save_sharp,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 48.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          if (_model.choiceChipsretiroderejaValue == 'No')
                            FFButtonWidget(
                              onPressed: () async {
                                await TOrdenesTable().update(
                                  data: {
                                    'morador': _model.choiceChipsmoradorValue,
                                    'id_estado_orden':
                                        'b28d55bb-f885-4cfa-a181-88c1d80ac118',
                                    'fecha_primera_visita':
                                        supaSerialize<DateTime>(
                                            getCurrentTimestamp),
                                    'motivo_de_cierre': 7,
                                    'cliente_accede_cambio':
                                        valueOrDefault<String>(
                                      _model.choiceChipsaccedeclienteValue,
                                      'Ns/Nc',
                                    ),
                                    'medidor_mal_estado':
                                        valueOrDefault<String>(
                                      _model.choiceChipsmedidordeterioroValue,
                                      'Ns/Nc',
                                    ),
                                    'posee_reja_soldadura':
                                        valueOrDefault<String>(
                                      _model.choiceChipsrejaValue,
                                      'Ns/Nc',
                                    ),
                                    'puede_retirar': valueOrDefault<String>(
                                      _model.choiceChipsretiroderejaValue,
                                      'Ns/Nc',
                                    ),
                                    'fugas': valueOrDefault<String>(
                                      _model.choiceChipsrdetecciondefugasValue,
                                      'Ns/Nc',
                                    ),
                                    'perdida_valvula': valueOrDefault<String>(
                                      _model.choiceChipsrPerdidaenvalulaValue,
                                      'Ns/Nc',
                                    ),
                                    'operar_valvula': valueOrDefault<String>(
                                      _model.choiceChipsroperarlavalvulaValue,
                                      'Ns/Nc',
                                    ),
                                    'continua_perdida_valvula':
                                        valueOrDefault<String>(
                                      _model
                                          .choiceChipsrperdidasdespuesdeoperarValue,
                                      'Ns/Nc',
                                    ),
                                    'existe_litracion': 'Ns/Nc',
                                    'latcambio': _model.lat,
                                    'longcambio': _model.long,
                                  },
                                  matchingRows: (rows) => rows.eqOrNull(
                                    'id_orden',
                                    widget.idorden,
                                  ),
                                );
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Se guardo correctamente'),
                                      content: Text(
                                          'Se requieren fotos para terminar el proceso'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: CargarfotosWidget(
                                        tipofoto: 'Imposibilidad sacar reja',
                                        idorden: widget.idorden,
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));

                                Navigator.pop(context);
                              },
                              text: 'Guardar Sin retiro rejas',
                              icon: Icon(
                                Icons.save_sharp,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 48.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          if (_model.choiceChipsrPerdidaenvalulaValue == 'No')
                            FFButtonWidget(
                              onPressed: () async {
                                await TOrdenesTable().update(
                                  data: {
                                    'morador': _model.choiceChipsmoradorValue,
                                    'id_estado_orden':
                                        'b28d55bb-f885-4cfa-a181-88c1d80ac118',
                                    'fecha_primera_visita':
                                        supaSerialize<DateTime>(
                                            getCurrentTimestamp),
                                    'motivo_de_cierre': 4,
                                    'cliente_accede_cambio':
                                        valueOrDefault<String>(
                                      _model.choiceChipsaccedeclienteValue,
                                      'Ns/Nc',
                                    ),
                                    'medidor_mal_estado':
                                        valueOrDefault<String>(
                                      _model.choiceChipsmedidordeterioroValue,
                                      'Ns/Nc',
                                    ),
                                    'posee_reja_soldadura':
                                        valueOrDefault<String>(
                                      _model.choiceChipsrejaValue,
                                      'Ns/Nc',
                                    ),
                                    'puede_retirar': valueOrDefault<String>(
                                      _model.choiceChipsretiroderejaValue,
                                      'Ns/Nc',
                                    ),
                                    'fugas': valueOrDefault<String>(
                                      _model.choiceChipsrdetecciondefugasValue,
                                      'Ns/Nc',
                                    ),
                                    'perdida_valvula': valueOrDefault<String>(
                                      _model.choiceChipsrPerdidaenvalulaValue,
                                      'Ns/Nc',
                                    ),
                                    'operar_valvula': valueOrDefault<String>(
                                      _model.choiceChipsroperarlavalvulaValue,
                                      'Ns/Nc',
                                    ),
                                    'continua_perdida_valvula':
                                        valueOrDefault<String>(
                                      _model
                                          .choiceChipsrperdidasdespuesdeoperarValue,
                                      'Ns/Nc',
                                    ),
                                    'existe_litracion': 'Ns/Nc',
                                    'latcambio': _model.lat,
                                    'longcambio': _model.long,
                                  },
                                  matchingRows: (rows) => rows.eqOrNull(
                                    'id_orden',
                                    widget.idorden,
                                  ),
                                );
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Se guardo correctamente'),
                                      content: Text(
                                          'Se requieren fotos para terminar el proceso'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: CargarfotosWidget(
                                        tipofoto:
                                            'Perdida fuera zona de trabajo',
                                        idorden: widget.idorden,
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));

                                Navigator.pop(context);
                              },
                              text: 'Guardar Perdidas fuera de zona de trabajo',
                              icon: Icon(
                                Icons.save_sharp,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 48.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          if (_model.choiceChipsroperarlavalvulaValue == 'No')
                            FFButtonWidget(
                              onPressed: () async {
                                await TOrdenesTable().update(
                                  data: {
                                    'morador': _model.choiceChipsmoradorValue,
                                    'id_estado_orden':
                                        'b28d55bb-f885-4cfa-a181-88c1d80ac118',
                                    'fecha_primera_visita':
                                        supaSerialize<DateTime>(
                                            getCurrentTimestamp),
                                    'motivo_de_cierre': 5,
                                    'cliente_accede_cambio':
                                        valueOrDefault<String>(
                                      _model.choiceChipsaccedeclienteValue,
                                      'Ns/Nc',
                                    ),
                                    'medidor_mal_estado':
                                        valueOrDefault<String>(
                                      _model.choiceChipsmedidordeterioroValue,
                                      'Ns/Nc',
                                    ),
                                    'posee_reja_soldadura':
                                        valueOrDefault<String>(
                                      _model.choiceChipsrejaValue,
                                      'Ns/Nc',
                                    ),
                                    'puede_retirar': valueOrDefault<String>(
                                      _model.choiceChipsretiroderejaValue,
                                      'Ns/Nc',
                                    ),
                                    'fugas': valueOrDefault<String>(
                                      _model.choiceChipsrdetecciondefugasValue,
                                      'Ns/Nc',
                                    ),
                                    'perdida_valvula': valueOrDefault<String>(
                                      _model.choiceChipsrPerdidaenvalulaValue,
                                      'Ns/Nc',
                                    ),
                                    'operar_valvula': valueOrDefault<String>(
                                      _model.choiceChipsroperarlavalvulaValue,
                                      'Ns/Nc',
                                    ),
                                    'continua_perdida_valvula':
                                        valueOrDefault<String>(
                                      _model
                                          .choiceChipsrperdidasdespuesdeoperarValue,
                                      'Ns/Nc',
                                    ),
                                    'existe_litracion': 'Ns/Nc',
                                    'latcambio': _model.lat,
                                    'longcambio': _model.long,
                                  },
                                  matchingRows: (rows) => rows.eqOrNull(
                                    'id_orden',
                                    widget.idorden,
                                  ),
                                );
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Se guardo correctamente'),
                                      content: Text(
                                          'Se requieren fotos para terminar el proceso'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: CargarfotosWidget(
                                        tipofoto:
                                            'Imposibilidad de trabajar con valvula',
                                        idorden: widget.idorden,
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));

                                Navigator.pop(context);
                              },
                              text: 'Guardar No se puede operar la valvula',
                              icon: Icon(
                                Icons.save_sharp,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 48.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          if (_model.choiceChipsrperdidasdespuesdeoperarValue ==
                              'Si')
                            FFButtonWidget(
                              onPressed: () async {
                                await TOrdenesTable().update(
                                  data: {
                                    'morador': _model.choiceChipsmoradorValue,
                                    'id_estado_orden':
                                        'b28d55bb-f885-4cfa-a181-88c1d80ac118',
                                    'fecha_primera_visita':
                                        supaSerialize<DateTime>(
                                            getCurrentTimestamp),
                                    'motivo_de_cierre': 6,
                                    'cliente_accede_cambio':
                                        valueOrDefault<String>(
                                      _model.choiceChipsaccedeclienteValue,
                                      'Ns/Nc',
                                    ),
                                    'medidor_mal_estado':
                                        valueOrDefault<String>(
                                      _model.choiceChipsmedidordeterioroValue,
                                      'Ns/Nc',
                                    ),
                                    'posee_reja_soldadura':
                                        valueOrDefault<String>(
                                      _model.choiceChipsrejaValue,
                                      'Ns/Nc',
                                    ),
                                    'puede_retirar': valueOrDefault<String>(
                                      _model.choiceChipsretiroderejaValue,
                                      'Ns/Nc',
                                    ),
                                    'fugas': valueOrDefault<String>(
                                      _model.choiceChipsrdetecciondefugasValue,
                                      'Ns/Nc',
                                    ),
                                    'perdida_valvula': valueOrDefault<String>(
                                      _model.choiceChipsrPerdidaenvalulaValue,
                                      'Ns/Nc',
                                    ),
                                    'operar_valvula': valueOrDefault<String>(
                                      _model.choiceChipsroperarlavalvulaValue,
                                      'Ns/Nc',
                                    ),
                                    'continua_perdida_valvula':
                                        valueOrDefault<String>(
                                      _model
                                          .choiceChipsrperdidasdespuesdeoperarValue,
                                      'Ns/Nc',
                                    ),
                                    'existe_litracion': 'Ns/Nc',
                                    'latcambio': _model.lat,
                                    'longcambio': _model.long,
                                  },
                                  matchingRows: (rows) => rows.eqOrNull(
                                    'id_orden',
                                    widget.idorden,
                                  ),
                                );
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Se guardo correctamente'),
                                      content: Text(
                                          'Se requieren fotos para terminar el proceso'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: CargarfotosWidget(
                                        tipofoto: 'Perdidas despues de operar',
                                        idorden: widget.idorden,
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));

                                Navigator.pop(context);
                              },
                              text: 'Guardar perdidas despues de operar',
                              icon: Icon(
                                Icons.save_sharp,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 48.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          if (_model.choiceChipsrperdidasdespuesdeoperarValue ==
                              'No')
                            FFButtonWidget(
                              onPressed: () async {
                                await TOrdenesTable().update(
                                  data: {
                                    'morador': _model.choiceChipsmoradorValue,
                                    'id_estado_orden':
                                        'b28d55bb-f885-4cfa-a181-88c1d80ac118',
                                    'fecha_primera_visita':
                                        supaSerialize<DateTime>(
                                            getCurrentTimestamp),
                                    'motivo_de_cierre': 8,
                                    'cliente_accede_cambio':
                                        valueOrDefault<String>(
                                      _model.choiceChipsaccedeclienteValue,
                                      'Ns/Nc',
                                    ),
                                    'medidor_mal_estado':
                                        valueOrDefault<String>(
                                      _model.choiceChipsmedidordeterioroValue,
                                      'Ns/Nc',
                                    ),
                                    'posee_reja_soldadura':
                                        valueOrDefault<String>(
                                      _model.choiceChipsrejaValue,
                                      'Ns/Nc',
                                    ),
                                    'puede_retirar': valueOrDefault<String>(
                                      _model.choiceChipsretiroderejaValue,
                                      'Ns/Nc',
                                    ),
                                    'fugas': valueOrDefault<String>(
                                      _model.choiceChipsrdetecciondefugasValue,
                                      'Ns/Nc',
                                    ),
                                    'perdida_valvula': valueOrDefault<String>(
                                      _model.choiceChipsrPerdidaenvalulaValue,
                                      'Ns/Nc',
                                    ),
                                    'operar_valvula': valueOrDefault<String>(
                                      _model.choiceChipsroperarlavalvulaValue,
                                      'Ns/Nc',
                                    ),
                                    'continua_perdida_valvula':
                                        valueOrDefault<String>(
                                      _model
                                          .choiceChipsrperdidasdespuesdeoperarValue,
                                      'Ns/Nc',
                                    ),
                                    'existe_litracion': 'Ns/Nc',
                                    'medidor_nuevo': _model.codigomedidor !=
                                                null &&
                                            _model.codigomedidor != ''
                                        ? _model.codigomedidor
                                        : _model
                                            .textFieldmedidornuevoTextController
                                            .text,
                                    'lectura_nueva': valueOrDefault<double>(
                                      double.tryParse(_model
                                          .textFieldlecturanuevaTextController
                                          .text),
                                      0.0,
                                    ),
                                    'flexible': _model.choiceChipsflexibleValue,
                                    'regulador':
                                        _model.choiceChipsreguladorValue,
                                    'latcambio': _model.lat,
                                    'longcambio': _model.long,
                                  },
                                  matchingRows: (rows) => rows.eqOrNull(
                                    'id_orden',
                                    widget.idorden,
                                  ),
                                );
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Se cargo correctamente!'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: CargarfotosWidget(
                                        tipofoto: 'Cambio de medidor',
                                        idorden: widget.idorden,
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));

                                Navigator.pop(context);
                              },
                              text: 'Guardar Procedimiento completo',
                              icon: Icon(
                                Icons.save_sharp,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 48.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                        ].divide(SizedBox(height: 12.0)),
                      ),
                    ].divide(SizedBox(height: 20.0)),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
