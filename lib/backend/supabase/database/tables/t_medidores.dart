import '../database.dart';

class TMedidoresTable extends SupabaseTable<TMedidoresRow> {
  @override
  String get tableName => 't_medidores';

  @override
  TMedidoresRow createRow(Map<String, dynamic> data) => TMedidoresRow(data);
}

class TMedidoresRow extends SupabaseDataRow {
  TMedidoresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TMedidoresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get idAgente => getField<String>('id_agente')!;
  set idAgente(String value) => setField<String>('id_agente', value);

  String get nroMedidor => getField<String>('nro_medidor')!;
  set nroMedidor(String value) => setField<String>('nro_medidor', value);

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
}
