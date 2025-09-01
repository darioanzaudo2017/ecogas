import '../database.dart';

class TUsuariosTable extends SupabaseTable<TUsuariosRow> {
  @override
  String get tableName => 't_usuarios';

  @override
  TUsuariosRow createRow(Map<String, dynamic> data) => TUsuariosRow(data);
}

class TUsuariosRow extends SupabaseDataRow {
  TUsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TUsuariosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);

  String get apellido => getField<String>('apellido')!;
  set apellido(String value) => setField<String>('apellido', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  String? get legajo => getField<String>('legajo');
  set legajo(String? value) => setField<String>('legajo', value);

  String get tipoUsuarioId => getField<String>('tipo_usuario_id')!;
  set tipoUsuarioId(String value) => setField<String>('tipo_usuario_id', value);

  bool? get activo => getField<bool>('activo');
  set activo(bool? value) => setField<bool>('activo', value);

  DateTime? get fechaCreacion => getField<DateTime>('fecha_creacion');
  set fechaCreacion(DateTime? value) =>
      setField<DateTime>('fecha_creacion', value);

  String? get authUserId => getField<String>('auth_user_id');
  set authUserId(String? value) => setField<String>('auth_user_id', value);

  String? get supervisorId => getField<String>('supervisor_id');
  set supervisorId(String? value) => setField<String>('supervisor_id', value);

  bool? get asignadosupervisor => getField<bool>('asignadosupervisor');
  set asignadosupervisor(bool? value) =>
      setField<bool>('asignadosupervisor', value);
}
