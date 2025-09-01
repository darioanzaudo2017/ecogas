import '../database.dart';

class VSupervisionesDetalladasTable
    extends SupabaseTable<VSupervisionesDetalladasRow> {
  @override
  String get tableName => 'v_supervisiones_detalladas';

  @override
  VSupervisionesDetalladasRow createRow(Map<String, dynamic> data) =>
      VSupervisionesDetalladasRow(data);
}

class VSupervisionesDetalladasRow extends SupabaseDataRow {
  VSupervisionesDetalladasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VSupervisionesDetalladasTable();

  String? get idSupervision => getField<String>('id_supervision');
  set idSupervision(String? value) => setField<String>('id_supervision', value);

  DateTime? get fechaAsignacion => getField<DateTime>('fecha_asignacion');
  set fechaAsignacion(DateTime? value) =>
      setField<DateTime>('fecha_asignacion', value);

  bool? get activo => getField<bool>('activo');
  set activo(bool? value) => setField<bool>('activo', value);

  String? get supervisorId => getField<String>('supervisor_id');
  set supervisorId(String? value) => setField<String>('supervisor_id', value);

  String? get supervisorEmail => getField<String>('supervisor_email');
  set supervisorEmail(String? value) =>
      setField<String>('supervisor_email', value);

  String? get supervisorNombre => getField<String>('supervisor_nombre');
  set supervisorNombre(String? value) =>
      setField<String>('supervisor_nombre', value);

  String? get supervisorApellido => getField<String>('supervisor_apellido');
  set supervisorApellido(String? value) =>
      setField<String>('supervisor_apellido', value);

  String? get supervisorTipoId => getField<String>('supervisor_tipo_id');
  set supervisorTipoId(String? value) =>
      setField<String>('supervisor_tipo_id', value);

  String? get supervisorTipoNombre =>
      getField<String>('supervisor_tipo_nombre');
  set supervisorTipoNombre(String? value) =>
      setField<String>('supervisor_tipo_nombre', value);

  String? get agenteId => getField<String>('agente_id');
  set agenteId(String? value) => setField<String>('agente_id', value);

  String? get agenteEmail => getField<String>('agente_email');
  set agenteEmail(String? value) => setField<String>('agente_email', value);

  String? get agenteNombre => getField<String>('agente_nombre');
  set agenteNombre(String? value) => setField<String>('agente_nombre', value);

  String? get agenteApellido => getField<String>('agente_apellido');
  set agenteApellido(String? value) =>
      setField<String>('agente_apellido', value);

  String? get agenteTipoId => getField<String>('agente_tipo_id');
  set agenteTipoId(String? value) => setField<String>('agente_tipo_id', value);

  String? get agenteTipoNombre => getField<String>('agente_tipo_nombre');
  set agenteTipoNombre(String? value) =>
      setField<String>('agente_tipo_nombre', value);

  String? get superadminId => getField<String>('superadmin_id');
  set superadminId(String? value) => setField<String>('superadmin_id', value);

  String? get superadminEmail => getField<String>('superadmin_email');
  set superadminEmail(String? value) =>
      setField<String>('superadmin_email', value);

  String? get superadminNombre => getField<String>('superadmin_nombre');
  set superadminNombre(String? value) =>
      setField<String>('superadmin_nombre', value);

  String? get superadminApellido => getField<String>('superadmin_apellido');
  set superadminApellido(String? value) =>
      setField<String>('superadmin_apellido', value);

  String? get superadminTipoId => getField<String>('superadmin_tipo_id');
  set superadminTipoId(String? value) =>
      setField<String>('superadmin_tipo_id', value);

  String? get superadminTipoNombre =>
      getField<String>('superadmin_tipo_nombre');
  set superadminTipoNombre(String? value) =>
      setField<String>('superadmin_tipo_nombre', value);
}
