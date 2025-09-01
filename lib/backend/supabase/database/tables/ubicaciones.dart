import '../database.dart';

class UbicacionesTable extends SupabaseTable<UbicacionesRow> {
  @override
  String get tableName => 'ubicaciones';

  @override
  UbicacionesRow createRow(Map<String, dynamic> data) => UbicacionesRow(data);
}

class UbicacionesRow extends SupabaseDataRow {
  UbicacionesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UbicacionesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get idagente => getField<String>('idagente');
  set idagente(String? value) => setField<String>('idagente', value);

  String? get latitud => getField<String>('latitud');
  set latitud(String? value) => setField<String>('latitud', value);

  String? get longitud => getField<String>('longitud');
  set longitud(String? value) => setField<String>('longitud', value);
}
