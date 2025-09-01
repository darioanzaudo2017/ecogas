import '../database.dart';

class VtAgentesTable extends SupabaseTable<VtAgentesRow> {
  @override
  String get tableName => 'vt_agentes';

  @override
  VtAgentesRow createRow(Map<String, dynamic> data) => VtAgentesRow(data);
}

class VtAgentesRow extends SupabaseDataRow {
  VtAgentesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VtAgentesTable();

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
