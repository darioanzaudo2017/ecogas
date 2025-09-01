import '../database.dart';

class VOrdenesDetalladasTable extends SupabaseTable<VOrdenesDetalladasRow> {
  @override
  String get tableName => 'v_ordenes_detalladas';

  @override
  VOrdenesDetalladasRow createRow(Map<String, dynamic> data) =>
      VOrdenesDetalladasRow(data);
}

class VOrdenesDetalladasRow extends SupabaseDataRow {
  VOrdenesDetalladasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdenesDetalladasTable();

  int? get idOrden => getField<int>('id_orden');
  set idOrden(int? value) => setField<int>('id_orden', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get idCliente => getField<String>('id_cliente');
  set idCliente(String? value) => setField<String>('id_cliente', value);

  String? get idAgente => getField<String>('id_agente');
  set idAgente(String? value) => setField<String>('id_agente', value);

  String? get idSupervisor => getField<String>('id_supervisor');
  set idSupervisor(String? value) => setField<String>('id_supervisor', value);

  String? get idSuperadmin => getField<String>('id_superadmin');
  set idSuperadmin(String? value) => setField<String>('id_superadmin', value);

  String? get idEstadoOrden => getField<String>('id_estado_orden');
  set idEstadoOrden(String? value) =>
      setField<String>('id_estado_orden', value);

  String? get medidorNuevo => getField<String>('medidor_nuevo');
  set medidorNuevo(String? value) => setField<String>('medidor_nuevo', value);

  double? get lecturaNueva => getField<double>('lectura_nueva');
  set lecturaNueva(double? value) => setField<double>('lectura_nueva', value);

  String? get regulador => getField<String>('regulador');
  set regulador(String? value) => setField<String>('regulador', value);

  String? get flexible => getField<String>('flexible');
  set flexible(String? value) => setField<String>('flexible', value);

  String? get latcambio => getField<String>('latcambio');
  set latcambio(String? value) => setField<String>('latcambio', value);

  String? get longcambio => getField<String>('longcambio');
  set longcambio(String? value) => setField<String>('longcambio', value);

  String? get morador => getField<String>('morador');
  set morador(String? value) => setField<String>('morador', value);

  String? get gabineteLinea => getField<String>('gabinete_linea');
  set gabineteLinea(String? value) => setField<String>('gabinete_linea', value);

  String? get clienteAccedeCambio => getField<String>('cliente_accede_cambio');
  set clienteAccedeCambio(String? value) =>
      setField<String>('cliente_accede_cambio', value);

  String? get medidorMalEstado => getField<String>('medidor_mal_estado');
  set medidorMalEstado(String? value) =>
      setField<String>('medidor_mal_estado', value);

  String? get poseeRejaSoldadura => getField<String>('posee_reja_soldadura');
  set poseeRejaSoldadura(String? value) =>
      setField<String>('posee_reja_soldadura', value);

  String? get puedeRetirar => getField<String>('puede_retirar');
  set puedeRetirar(String? value) => setField<String>('puede_retirar', value);

  String? get fugas => getField<String>('fugas');
  set fugas(String? value) => setField<String>('fugas', value);

  String? get perdidaValvula => getField<String>('perdida_valvula');
  set perdidaValvula(String? value) =>
      setField<String>('perdida_valvula', value);

  String? get operarValvula => getField<String>('operar_valvula');
  set operarValvula(String? value) => setField<String>('operar_valvula', value);

  String? get continuaPerdidaValvula =>
      getField<String>('continua_perdida_valvula');
  set continuaPerdidaValvula(String? value) =>
      setField<String>('continua_perdida_valvula', value);

  String? get accedeVivienda => getField<String>('accede_vivienda');
  set accedeVivienda(String? value) =>
      setField<String>('accede_vivienda', value);

  String? get fugaFueraZona => getField<String>('fuga_fuera_zona');
  set fugaFueraZona(String? value) =>
      setField<String>('fuga_fuera_zona', value);

  String? get existeLitracion => getField<String>('existe_litracion');
  set existeLitracion(String? value) =>
      setField<String>('existe_litracion', value);

  DateTime? get fechaPrimeraVisita =>
      getField<DateTime>('fecha_primera_visita');
  set fechaPrimeraVisita(DateTime? value) =>
      setField<DateTime>('fecha_primera_visita', value);

  DateTime? get fechaSegundaVisita =>
      getField<DateTime>('fecha_segunda_visita');
  set fechaSegundaVisita(DateTime? value) =>
      setField<DateTime>('fecha_segunda_visita', value);

  int? get motivoDeCierre => getField<int>('motivo_de_cierre');
  set motivoDeCierre(int? value) => setField<int>('motivo_de_cierre', value);

  String? get motivoCierreNombre => getField<String>('motivo_cierre_nombre');
  set motivoCierreNombre(String? value) =>
      setField<String>('motivo_cierre_nombre', value);

  String? get clienteId => getField<String>('cliente_id');
  set clienteId(String? value) => setField<String>('cliente_id', value);

  String? get clienteCuentaContrato =>
      getField<String>('cliente_cuenta_contrato');
  set clienteCuentaContrato(String? value) =>
      setField<String>('cliente_cuenta_contrato', value);

  String? get clienteNombre => getField<String>('cliente_nombre');
  set clienteNombre(String? value) => setField<String>('cliente_nombre', value);

  String? get clienteCalle => getField<String>('cliente_calle');
  set clienteCalle(String? value) => setField<String>('cliente_calle', value);

  String? get clientePiso => getField<String>('cliente_piso');
  set clientePiso(String? value) => setField<String>('cliente_piso', value);

  String? get clienteDepto => getField<String>('cliente_depto');
  set clienteDepto(String? value) => setField<String>('cliente_depto', value);

  String? get clienteBarrioId => getField<String>('cliente_barrio_id');
  set clienteBarrioId(String? value) =>
      setField<String>('cliente_barrio_id', value);

  String? get clienteLocalidad => getField<String>('cliente_localidad');
  set clienteLocalidad(String? value) =>
      setField<String>('cliente_localidad', value);

  String? get clienteRutaCodigo => getField<String>('cliente_ruta_codigo');
  set clienteRutaCodigo(String? value) =>
      setField<String>('cliente_ruta_codigo', value);

  double? get clienteLatitud => getField<double>('cliente_latitud');
  set clienteLatitud(double? value) =>
      setField<double>('cliente_latitud', value);

  double? get clienteLongitud => getField<double>('cliente_longitud');
  set clienteLongitud(double? value) =>
      setField<double>('cliente_longitud', value);

  String? get clienteUbicacionGeo => getField<String>('cliente_ubicacion_geo');
  set clienteUbicacionGeo(String? value) =>
      setField<String>('cliente_ubicacion_geo', value);

  String? get clienteTelefono => getField<String>('cliente_telefono');
  set clienteTelefono(String? value) =>
      setField<String>('cliente_telefono', value);

  DateTime? get clienteFechaCreacion =>
      getField<DateTime>('cliente_fecha_creacion');
  set clienteFechaCreacion(DateTime? value) =>
      setField<DateTime>('cliente_fecha_creacion', value);

  bool? get clienteActivo => getField<bool>('cliente_activo');
  set clienteActivo(bool? value) => setField<bool>('cliente_activo', value);

  String? get clienteMedidor => getField<String>('cliente_medidor');
  set clienteMedidor(String? value) =>
      setField<String>('cliente_medidor', value);

  double? get clienteLectura => getField<double>('cliente_lectura');
  set clienteLectura(double? value) =>
      setField<double>('cliente_lectura', value);

  DateTime? get clienteFechaLectura =>
      getField<DateTime>('cliente_fecha_lectura');
  set clienteFechaLectura(DateTime? value) =>
      setField<DateTime>('cliente_fecha_lectura', value);

  String? get clienteHoraCumplimiento =>
      getField<String>('cliente_hora_cumplimiento');
  set clienteHoraCumplimiento(String? value) =>
      setField<String>('cliente_hora_cumplimiento', value);

  DateTime? get clienteFechaVisita =>
      getField<DateTime>('cliente_fecha_visita');
  set clienteFechaVisita(DateTime? value) =>
      setField<DateTime>('cliente_fecha_visita', value);

  String? get clienteHoraVisita => getField<String>('cliente_hora_visita');
  set clienteHoraVisita(String? value) =>
      setField<String>('cliente_hora_visita', value);

  String? get clienteCepo => getField<String>('cliente_cepo');
  set clienteCepo(String? value) => setField<String>('cliente_cepo', value);

  String? get clientePuntoSuministro =>
      getField<String>('cliente_punto_suministro');
  set clientePuntoSuministro(String? value) =>
      setField<String>('cliente_punto_suministro', value);

  String? get clienteCaudalExistente =>
      getField<String>('cliente_caudal_existente');
  set clienteCaudalExistente(String? value) =>
      setField<String>('cliente_caudal_existente', value);

  String? get clienteCaudalNuevo => getField<String>('cliente_caudal_nuevo');
  set clienteCaudalNuevo(String? value) =>
      setField<String>('cliente_caudal_nuevo', value);

  String? get clienteVerificarCaudal =>
      getField<String>('cliente_verificar_caudal');
  set clienteVerificarCaudal(String? value) =>
      setField<String>('cliente_verificar_caudal', value);

  DateTime? get clienteFechaDesde => getField<DateTime>('cliente_fecha_desde');
  set clienteFechaDesde(DateTime? value) =>
      setField<DateTime>('cliente_fecha_desde', value);

  DateTime? get clienteFechaHasta => getField<DateTime>('cliente_fecha_hasta');
  set clienteFechaHasta(DateTime? value) =>
      setField<DateTime>('cliente_fecha_hasta', value);

  String? get clienteOrden => getField<String>('cliente_orden');
  set clienteOrden(String? value) => setField<String>('cliente_orden', value);

  String? get clienteEstado => getField<String>('cliente_estado');
  set clienteEstado(String? value) => setField<String>('cliente_estado', value);

  double? get clienteNumero => getField<double>('cliente_numero');
  set clienteNumero(double? value) => setField<double>('cliente_numero', value);

  String? get idEstado => getField<String>('id_estado');
  set idEstado(String? value) => setField<String>('id_estado', value);

  String? get estadoNombre => getField<String>('estado_nombre');
  set estadoNombre(String? value) => setField<String>('estado_nombre', value);

  String? get estadoDescripcion => getField<String>('estado_descripcion');
  set estadoDescripcion(String? value) =>
      setField<String>('estado_descripcion', value);

  String? get agenteId => getField<String>('agente_id');
  set agenteId(String? value) => setField<String>('agente_id', value);

  String? get agenteNombre => getField<String>('agente_nombre');
  set agenteNombre(String? value) => setField<String>('agente_nombre', value);

  String? get agenteApellido => getField<String>('agente_apellido');
  set agenteApellido(String? value) =>
      setField<String>('agente_apellido', value);

  String? get agenteEmail => getField<String>('agente_email');
  set agenteEmail(String? value) => setField<String>('agente_email', value);

  String? get supervisorId => getField<String>('supervisor_id');
  set supervisorId(String? value) => setField<String>('supervisor_id', value);

  String? get supervisorNombre => getField<String>('supervisor_nombre');
  set supervisorNombre(String? value) =>
      setField<String>('supervisor_nombre', value);

  String? get supervisorApellido => getField<String>('supervisor_apellido');
  set supervisorApellido(String? value) =>
      setField<String>('supervisor_apellido', value);

  String? get superadminId => getField<String>('superadmin_id');
  set superadminId(String? value) => setField<String>('superadmin_id', value);

  String? get superadminNombre => getField<String>('superadmin_nombre');
  set superadminNombre(String? value) =>
      setField<String>('superadmin_nombre', value);

  String? get superadminApellido => getField<String>('superadmin_apellido');
  set superadminApellido(String? value) =>
      setField<String>('superadmin_apellido', value);

  double? get diferencia => getField<double>('diferencia');
  set diferencia(double? value) => setField<double>('diferencia', value);

  String? get observacionVerificacion =>
      getField<String>('observacion_verificacion');
  set observacionVerificacion(String? value) =>
      setField<String>('observacion_verificacion', value);

  String? get fotosVerificadas => getField<String>('fotos_verificadas');
  set fotosVerificadas(String? value) =>
      setField<String>('fotos_verificadas', value);

  String? get ordenVerificada => getField<String>('orden_verificada');
  set ordenVerificada(String? value) =>
      setField<String>('orden_verificada', value);
}
