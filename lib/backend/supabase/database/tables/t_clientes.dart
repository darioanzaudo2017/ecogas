import '../database.dart';

class TClientesTable extends SupabaseTable<TClientesRow> {
  @override
  String get tableName => 't_clientes';

  @override
  TClientesRow createRow(Map<String, dynamic> data) => TClientesRow(data);
}

class TClientesRow extends SupabaseDataRow {
  TClientesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TClientesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get cuentaContrato => getField<String>('cuenta_contrato')!;
  set cuentaContrato(String value) =>
      setField<String>('cuenta_contrato', value);

  String? get nombreCliente => getField<String>('nombre_cliente');
  set nombreCliente(String? value) => setField<String>('nombre_cliente', value);

  String get calle => getField<String>('calle')!;
  set calle(String value) => setField<String>('calle', value);

  String? get piso => getField<String>('piso');
  set piso(String? value) => setField<String>('piso', value);

  String? get depto => getField<String>('depto');
  set depto(String? value) => setField<String>('depto', value);

  String? get barrioId => getField<String>('barrio_id');
  set barrioId(String? value) => setField<String>('barrio_id', value);

  String? get localidad => getField<String>('localidad');
  set localidad(String? value) => setField<String>('localidad', value);

  String? get rutaId => getField<String>('ruta_id');
  set rutaId(String? value) => setField<String>('ruta_id', value);

  double? get latitud => getField<double>('latitud');
  set latitud(double? value) => setField<double>('latitud', value);

  double? get longitud => getField<double>('longitud');
  set longitud(double? value) => setField<double>('longitud', value);

  String? get ubicacionGeo => getField<String>('ubicacion_geo');
  set ubicacionGeo(String? value) => setField<String>('ubicacion_geo', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  DateTime? get fechaCreacion => getField<DateTime>('fecha_creacion');
  set fechaCreacion(DateTime? value) =>
      setField<DateTime>('fecha_creacion', value);

  bool? get activo => getField<bool>('activo');
  set activo(bool? value) => setField<bool>('activo', value);

  String? get medidor => getField<String>('medidor');
  set medidor(String? value) => setField<String>('medidor', value);

  double? get lectura => getField<double>('lectura');
  set lectura(double? value) => setField<double>('lectura', value);

  DateTime? get fechaLectura => getField<DateTime>('fecha_lectura');
  set fechaLectura(DateTime? value) =>
      setField<DateTime>('fecha_lectura', value);

  String? get horaCumplimiento => getField<String>('hora_cumplimiento');
  set horaCumplimiento(String? value) =>
      setField<String>('hora_cumplimiento', value);

  DateTime? get fechaVisita => getField<DateTime>('fecha_visita');
  set fechaVisita(DateTime? value) => setField<DateTime>('fecha_visita', value);

  String? get horaVisita => getField<String>('hora_visita');
  set horaVisita(String? value) => setField<String>('hora_visita', value);

  String? get cepo => getField<String>('cepo');
  set cepo(String? value) => setField<String>('cepo', value);

  String? get puntoSuministro => getField<String>('punto_suministro');
  set puntoSuministro(String? value) =>
      setField<String>('punto_suministro', value);

  String? get caudalExistente => getField<String>('caudal_existente');
  set caudalExistente(String? value) =>
      setField<String>('caudal_existente', value);

  String? get caudalNuevo => getField<String>('caudal_nuevo');
  set caudalNuevo(String? value) => setField<String>('caudal_nuevo', value);

  String? get verificarCaudal => getField<String>('verificar_caudal');
  set verificarCaudal(String? value) =>
      setField<String>('verificar_caudal', value);

  DateTime? get fechaDesde => getField<DateTime>('fecha_desde');
  set fechaDesde(DateTime? value) => setField<DateTime>('fecha_desde', value);

  DateTime? get fechaHasta => getField<DateTime>('fecha_hasta');
  set fechaHasta(DateTime? value) => setField<DateTime>('fecha_hasta', value);

  String? get orden => getField<String>('orden');
  set orden(String? value) => setField<String>('orden', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  double? get numero => getField<double>('numero');
  set numero(double? value) => setField<double>('numero', value);
}
