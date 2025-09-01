import '../database.dart';

class VtUsuariosRolesTable extends SupabaseTable<VtUsuariosRolesRow> {
  @override
  String get tableName => 'vt_usuarios_roles';

  @override
  VtUsuariosRolesRow createRow(Map<String, dynamic> data) =>
      VtUsuariosRolesRow(data);
}

class VtUsuariosRolesRow extends SupabaseDataRow {
  VtUsuariosRolesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VtUsuariosRolesTable();

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  String? get nombreUsuario => getField<String>('nombre_usuario');
  set nombreUsuario(String? value) => setField<String>('nombre_usuario', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  String? get rol => getField<String>('rol');
  set rol(String? value) => setField<String>('rol', value);

  bool? get activo => getField<bool>('activo');
  set activo(bool? value) => setField<bool>('activo', value);

  String? get tipoUsuarioId => getField<String>('tipo_usuario_id');
  set tipoUsuarioId(String? value) =>
      setField<String>('tipo_usuario_id', value);
}
