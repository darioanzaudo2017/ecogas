import '../database.dart';

class TSupervisoresTable extends SupabaseTable<TSupervisoresRow> {
  @override
  String get tableName => 't_supervisores';

  @override
  TSupervisoresRow createRow(Map<String, dynamic> data) =>
      TSupervisoresRow(data);
}

class TSupervisoresRow extends SupabaseDataRow {
  TSupervisoresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TSupervisoresTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get supervisorId => getField<String>('supervisor_id')!;
  set supervisorId(String value) => setField<String>('supervisor_id', value);

  String get agenteId => getField<String>('agente_id')!;
  set agenteId(String value) => setField<String>('agente_id', value);

  DateTime? get fechaAsignacion => getField<DateTime>('fecha_asignacion');
  set fechaAsignacion(DateTime? value) =>
      setField<DateTime>('fecha_asignacion', value);

  bool? get activo => getField<bool>('activo');
  set activo(bool? value) => setField<bool>('activo', value);

  String? get idSuperadmin => getField<String>('id_superadmin');
  set idSuperadmin(String? value) => setField<String>('id_superadmin', value);
}
