import '../database.dart';

class TOrdenesTable extends SupabaseTable<TOrdenesRow> {
  @override
  String get tableName => 't_ordenes';

  @override
  TOrdenesRow createRow(Map<String, dynamic> data) => TOrdenesRow(data);
}

class TOrdenesRow extends SupabaseDataRow {
  TOrdenesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TOrdenesTable();

  int get idOrden => getField<int>('id_orden')!;
  set idOrden(int value) => setField<int>('id_orden', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get idCliente => getField<String>('id_cliente');
  set idCliente(String? value) => setField<String>('id_cliente', value);

  String? get idAgente => getField<String>('id_agente');
  set idAgente(String? value) => setField<String>('id_agente', value);

  String? get idSupervisor => getField<String>('id_supervisor');
  set idSupervisor(String? value) => setField<String>('id_supervisor', value);

  String? get idSuperadmin => getField<String>('id_superadmin');
  set idSuperadmin(String? value) => setField<String>('id_superadmin', value);

  String get idEstadoOrden => getField<String>('id_estado_orden')!;
  set idEstadoOrden(String value) => setField<String>('id_estado_orden', value);

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

  int? get lote => getField<int>('lote');
  set lote(int? value) => setField<int>('lote', value);

  String? get fotosVerificadas => getField<String>('fotos_verificadas');
  set fotosVerificadas(String? value) =>
      setField<String>('fotos_verificadas', value);

  String? get ordenVerificada => getField<String>('orden_verificada');
  set ordenVerificada(String? value) =>
      setField<String>('orden_verificada', value);

  String? get observacionVerificacion =>
      getField<String>('observacion_verificacion');
  set observacionVerificacion(String? value) =>
      setField<String>('observacion_verificacion', value);
}
