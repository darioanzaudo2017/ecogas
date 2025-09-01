import '../database.dart';

class VtSuperadminTable extends SupabaseTable<VtSuperadminRow> {
  @override
  String get tableName => 'vt_superadmin';

  @override
  VtSuperadminRow createRow(Map<String, dynamic> data) => VtSuperadminRow(data);
}

class VtSuperadminRow extends SupabaseDataRow {
  VtSuperadminRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VtSuperadminTable();

  String? get superadminId => getField<String>('superadmin_id');
  set superadminId(String? value) => setField<String>('superadmin_id', value);

  String? get superadminNombre => getField<String>('superadmin_nombre');
  set superadminNombre(String? value) =>
      setField<String>('superadmin_nombre', value);

  String? get supervisorId => getField<String>('supervisor_id');
  set supervisorId(String? value) => setField<String>('supervisor_id', value);

  String? get supervisorNombre => getField<String>('supervisor_nombre');
  set supervisorNombre(String? value) =>
      setField<String>('supervisor_nombre', value);

  String? get agenteId => getField<String>('agente_id');
  set agenteId(String? value) => setField<String>('agente_id', value);

  String? get agenteNombre => getField<String>('agente_nombre');
  set agenteNombre(String? value) => setField<String>('agente_nombre', value);

  int? get ordenId => getField<int>('orden_id');
  set ordenId(int? value) => setField<int>('orden_id', value);

  String? get estadoOrden => getField<String>('estado_orden');
  set estadoOrden(String? value) => setField<String>('estado_orden', value);

  DateTime? get fechaCreacionOrden =>
      getField<DateTime>('fecha_creacion_orden');
  set fechaCreacionOrden(DateTime? value) =>
      setField<DateTime>('fecha_creacion_orden', value);
}
