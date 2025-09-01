import '../database.dart';

class VtSupervisoresTable extends SupabaseTable<VtSupervisoresRow> {
  @override
  String get tableName => 'vt_supervisores';

  @override
  VtSupervisoresRow createRow(Map<String, dynamic> data) =>
      VtSupervisoresRow(data);
}

class VtSupervisoresRow extends SupabaseDataRow {
  VtSupervisoresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VtSupervisoresTable();

  String? get supervisorId => getField<String>('supervisor_id');
  set supervisorId(String? value) => setField<String>('supervisor_id', value);

  String? get supervisorNombre => getField<String>('supervisor_nombre');
  set supervisorNombre(String? value) =>
      setField<String>('supervisor_nombre', value);

  String? get agenteId => getField<String>('agente_id');
  set agenteId(String? value) => setField<String>('agente_id', value);

  String? get agenteNombre => getField<String>('agente_nombre');
  set agenteNombre(String? value) => setField<String>('agente_nombre', value);
}
