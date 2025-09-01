import '../database.dart';

class TTiposUsuarioTable extends SupabaseTable<TTiposUsuarioRow> {
  @override
  String get tableName => 't_tipos_usuario';

  @override
  TTiposUsuarioRow createRow(Map<String, dynamic> data) =>
      TTiposUsuarioRow(data);
}

class TTiposUsuarioRow extends SupabaseDataRow {
  TTiposUsuarioRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TTiposUsuarioTable();

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
