// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IdclienteStruct extends BaseStruct {
  IdclienteStruct({
    String? idcliente,
  }) : _idcliente = idcliente;

  // "idcliente" field.
  String? _idcliente;
  String get idcliente => _idcliente ?? '';
  set idcliente(String? val) => _idcliente = val;

  bool hasIdcliente() => _idcliente != null;

  static IdclienteStruct fromMap(Map<String, dynamic> data) => IdclienteStruct(
        idcliente: data['idcliente'] as String?,
      );

  static IdclienteStruct? maybeFromMap(dynamic data) => data is Map
      ? IdclienteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'idcliente': _idcliente,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idcliente': serializeParam(
          _idcliente,
          ParamType.String,
        ),
      }.withoutNulls;

  static IdclienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      IdclienteStruct(
        idcliente: deserializeParam(
          data['idcliente'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'IdclienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IdclienteStruct && idcliente == other.idcliente;
  }

  @override
  int get hashCode => const ListEquality().hash([idcliente]);
}

IdclienteStruct createIdclienteStruct({
  String? idcliente,
}) =>
    IdclienteStruct(
      idcliente: idcliente,
    );
