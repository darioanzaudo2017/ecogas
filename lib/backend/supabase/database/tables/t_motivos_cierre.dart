import '../database.dart';

class TMotivosCierreTable extends SupabaseTable<TMotivosCierreRow> {
  @override
  String get tableName => 't_motivos_cierre';

  @override
  TMotivosCierreRow createRow(Map<String, dynamic> data) =>
      TMotivosCierreRow(data);
}

class TMotivosCierreRow extends SupabaseDataRow {
  TMotivosCierreRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TMotivosCierreTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get motivo => getField<String>('Motivo');
  set motivo(String? value) => setField<String>('Motivo', value);
}
