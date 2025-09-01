import '../database.dart';

class TBarriosTable extends SupabaseTable<TBarriosRow> {
  @override
  String get tableName => 't_barrios';

  @override
  TBarriosRow createRow(Map<String, dynamic> data) => TBarriosRow(data);
}

class TBarriosRow extends SupabaseDataRow {
  TBarriosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TBarriosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);

  String? get codigo => getField<String>('codigo');
  set codigo(String? value) => setField<String>('codigo', value);

  bool? get activo => getField<bool>('activo');
  set activo(bool? value) => setField<bool>('activo', value);

  DateTime? get fechaCreacion => getField<DateTime>('fecha_creacion');
  set fechaCreacion(DateTime? value) =>
      setField<DateTime>('fecha_creacion', value);
}
