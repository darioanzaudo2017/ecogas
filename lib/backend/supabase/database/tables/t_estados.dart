import '../database.dart';

class TEstadosTable extends SupabaseTable<TEstadosRow> {
  @override
  String get tableName => 't_estados';

  @override
  TEstadosRow createRow(Map<String, dynamic> data) => TEstadosRow(data);
}

class TEstadosRow extends SupabaseDataRow {
  TEstadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TEstadosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  bool? get activo => getField<bool>('activo');
  set activo(bool? value) => setField<bool>('activo', value);

  DateTime? get fechaCreacion => getField<DateTime>('fecha_creacion');
  set fechaCreacion(DateTime? value) =>
      setField<DateTime>('fecha_creacion', value);
}
