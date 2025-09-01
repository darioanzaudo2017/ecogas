import '../database.dart';

class TempCargaCsvTable extends SupabaseTable<TempCargaCsvRow> {
  @override
  String get tableName => 'temp_carga_csv';

  @override
  TempCargaCsvRow createRow(Map<String, dynamic> data) => TempCargaCsvRow(data);
}

class TempCargaCsvRow extends SupabaseDataRow {
  TempCargaCsvRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TempCargaCsvTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get cuentaContrato => getField<String>('cuenta_contrato');
  set cuentaContrato(String? value) =>
      setField<String>('cuenta_contrato', value);

  String? get nombreCliente => getField<String>('nombre_cliente');
  set nombreCliente(String? value) => setField<String>('nombre_cliente', value);

  String? get calle => getField<String>('calle');
  set calle(String? value) => setField<String>('calle', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get piso => getField<String>('piso');
  set piso(String? value) => setField<String>('piso', value);

  String? get depto => getField<String>('depto');
  set depto(String? value) => setField<String>('depto', value);

  String? get barrio => getField<String>('barrio');
  set barrio(String? value) => setField<String>('barrio', value);

  String? get localidad => getField<String>('localidad');
  set localidad(String? value) => setField<String>('localidad', value);

  String? get ruta => getField<String>('ruta');
  set ruta(String? value) => setField<String>('ruta', value);

  String? get medidor => getField<String>('medidor');
  set medidor(String? value) => setField<String>('medidor', value);

  String? get lectura => getField<String>('lectura');
  set lectura(String? value) => setField<String>('lectura', value);

  String? get lote => getField<String>('lote');
  set lote(String? value) => setField<String>('lote', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  String? get latitud => getField<String>('latitud');
  set latitud(String? value) => setField<String>('latitud', value);

  String? get longitud => getField<String>('longitud');
  set longitud(String? value) => setField<String>('longitud', value);

  String? get fechaDesde => getField<String>('fecha_desde');
  set fechaDesde(String? value) => setField<String>('fecha_desde', value);

  String? get fechaHasta => getField<String>('fecha_hasta');
  set fechaHasta(String? value) => setField<String>('fecha_hasta', value);

  String? get observaciones => getField<String>('observaciones');
  set observaciones(String? value) => setField<String>('observaciones', value);

  bool? get procesado => getField<bool>('procesado');
  set procesado(bool? value) => setField<bool>('procesado', value);

  String? get errorProcesamiento => getField<String>('error_procesamiento');
  set errorProcesamiento(String? value) =>
      setField<String>('error_procesamiento', value);

  DateTime? get fechaCarga => getField<DateTime>('fecha_carga');
  set fechaCarga(DateTime? value) => setField<DateTime>('fecha_carga', value);

  String? get orden => getField<String>('orden');
  set orden(String? value) => setField<String>('orden', value);

  String? get horaCumplimiento => getField<String>('hora_cumplimiento');
  set horaCumplimiento(String? value) =>
      setField<String>('hora_cumplimiento', value);

  String? get fechaVisita => getField<String>('fecha_visita');
  set fechaVisita(String? value) => setField<String>('fecha_visita', value);

  String? get horaVisita => getField<String>('hora_visita');
  set horaVisita(String? value) => setField<String>('hora_visita', value);

  String? get cepo => getField<String>('cepo');
  set cepo(String? value) => setField<String>('cepo', value);

  String? get puntoSuministro => getField<String>('punto_suministro');
  set puntoSuministro(String? value) =>
      setField<String>('punto_suministro', value);

  String? get lecturaNueva => getField<String>('lectura_nueva');
  set lecturaNueva(String? value) => setField<String>('lectura_nueva', value);

  String? get caudalExistente => getField<String>('caudal_existente');
  set caudalExistente(String? value) =>
      setField<String>('caudal_existente', value);

  String? get caudalNuevo => getField<String>('caudal_nuevo');
  set caudalNuevo(String? value) => setField<String>('caudal_nuevo', value);

  String? get verificarCaudal => getField<String>('verificar_caudal');
  set verificarCaudal(String? value) =>
      setField<String>('verificar_caudal', value);
}
