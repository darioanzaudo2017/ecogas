import '../database.dart';

class TFotosTable extends SupabaseTable<TFotosRow> {
  @override
  String get tableName => 't_fotos';

  @override
  TFotosRow createRow(Map<String, dynamic> data) => TFotosRow(data);
}

class TFotosRow extends SupabaseDataRow {
  TFotosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TFotosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get ordenId => getField<int>('orden_id');
  set ordenId(int? value) => setField<int>('orden_id', value);

  String? get urlFoto => getField<String>('url_foto');
  set urlFoto(String? value) => setField<String>('url_foto', value);

  String? get observaciones => getField<String>('observaciones');
  set observaciones(String? value) => setField<String>('observaciones', value);
}
