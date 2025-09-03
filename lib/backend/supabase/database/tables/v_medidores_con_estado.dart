import '../database.dart';

class VMedidoresConEstadoTable extends SupabaseTable<VMedidoresConEstadoRow> {
  @override
  String get tableName => 'v_medidores_con_estado';

  @override
  VMedidoresConEstadoRow createRow(Map<String, dynamic> data) =>
      VMedidoresConEstadoRow(data);
}

class VMedidoresConEstadoRow extends SupabaseDataRow {
  VMedidoresConEstadoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VMedidoresConEstadoTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get idAgente => getField<String>('id_agente');
  set idAgente(String? value) => setField<String>('id_agente', value);

  String? get nroMedidor => getField<String>('nro_medidor');
  set nroMedidor(String? value) => setField<String>('nro_medidor', value);

  String? get lote => getField<String>('lote');
  set lote(String? value) => setField<String>('lote', value);

  DateTime? get fechaCreacion => getField<DateTime>('fecha_creacion');
  set fechaCreacion(DateTime? value) =>
      setField<DateTime>('fecha_creacion', value);

  DateTime? get fechaColocacion => getField<DateTime>('fecha_colocacion');
  set fechaColocacion(DateTime? value) =>
      setField<DateTime>('fecha_colocacion', value);

  int? get estadoMedidor => getField<int>('estado_medidor');
  set estadoMedidor(int? value) => setField<int>('estado_medidor', value);

  int? get idEstadoMedidor => getField<int>('id_estado_medidor');
  set idEstadoMedidor(int? value) => setField<int>('id_estado_medidor', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);
}
