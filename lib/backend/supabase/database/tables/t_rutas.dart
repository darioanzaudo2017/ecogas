import '../database.dart';

class TRutasTable extends SupabaseTable<TRutasRow> {
  @override
  String get tableName => 't_rutas';

  @override
  TRutasRow createRow(Map<String, dynamic> data) => TRutasRow(data);
}

class TRutasRow extends SupabaseDataRow {
  TRutasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TRutasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get codigo => getField<String>('codigo')!;
  set codigo(String value) => setField<String>('codigo', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  bool? get activo => getField<bool>('activo');
  set activo(bool? value) => setField<bool>('activo', value);

  DateTime? get fechaCreacion => getField<DateTime>('fecha_creacion');
  set fechaCreacion(DateTime? value) =>
      setField<DateTime>('fecha_creacion', value);
}
