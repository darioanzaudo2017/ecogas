import '../database.dart';

class VOrdenesPorEstadoTable extends SupabaseTable<VOrdenesPorEstadoRow> {
  @override
  String get tableName => 'v_ordenes_por_estado';

  @override
  VOrdenesPorEstadoRow createRow(Map<String, dynamic> data) =>
      VOrdenesPorEstadoRow(data);
}

class VOrdenesPorEstadoRow extends SupabaseDataRow {
  VOrdenesPorEstadoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdenesPorEstadoTable();

  String? get estadoNombre => getField<String>('estado_nombre');
  set estadoNombre(String? value) => setField<String>('estado_nombre', value);

  int? get cantidadOrdenes => getField<int>('cantidad_ordenes');
  set cantidadOrdenes(int? value) => setField<int>('cantidad_ordenes', value);
}
