import '../database.dart';

class TEstadosMedidorTable extends SupabaseTable<TEstadosMedidorRow> {
  @override
  String get tableName => 't_estados_medidor';

  @override
  TEstadosMedidorRow createRow(Map<String, dynamic> data) =>
      TEstadosMedidorRow(data);
}

class TEstadosMedidorRow extends SupabaseDataRow {
  TEstadosMedidorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TEstadosMedidorTable();

  int get idEstadoMedidor => getField<int>('id_estado_medidor')!;
  set idEstadoMedidor(int value) => setField<int>('id_estado_medidor', value);

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
