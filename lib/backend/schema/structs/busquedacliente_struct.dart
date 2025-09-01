// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BusquedaclienteStruct extends BaseStruct {
  BusquedaclienteStruct({
    String? id,
    String? cuentaContrato,
    String? nombreCliente,
    String? calle,
    String? piso,
    String? depto,
    String? barrioId,
    String? localidad,
    String? rutaId,
    String? latitud,
    String? longitud,
    String? ubicacionGeo,
    String? telefono,
    String? fechaCreacion,
    bool? activo,
    String? medidor,
    String? medidorNuevo,
    int? lectura,
    int? lecturaNueva,
    String? fechaLectura,
    String? horaCumplimiento,
    String? fechaVisita,
    String? horaVisita,
    String? cepo,
    String? puntoSuministro,
    String? caudalExistente,
    String? caudalNuevo,
    String? verificarCaudal,
    String? fechaDesde,
    String? fechaHasta,
    String? orden,
    String? estado,
    String? numero,
    String? barrioNombre,
    String? rutaNombre,
  })  : _id = id,
        _cuentaContrato = cuentaContrato,
        _nombreCliente = nombreCliente,
        _calle = calle,
        _piso = piso,
        _depto = depto,
        _barrioId = barrioId,
        _localidad = localidad,
        _rutaId = rutaId,
        _latitud = latitud,
        _longitud = longitud,
        _ubicacionGeo = ubicacionGeo,
        _telefono = telefono,
        _fechaCreacion = fechaCreacion,
        _activo = activo,
        _medidor = medidor,
        _medidorNuevo = medidorNuevo,
        _lectura = lectura,
        _lecturaNueva = lecturaNueva,
        _fechaLectura = fechaLectura,
        _horaCumplimiento = horaCumplimiento,
        _fechaVisita = fechaVisita,
        _horaVisita = horaVisita,
        _cepo = cepo,
        _puntoSuministro = puntoSuministro,
        _caudalExistente = caudalExistente,
        _caudalNuevo = caudalNuevo,
        _verificarCaudal = verificarCaudal,
        _fechaDesde = fechaDesde,
        _fechaHasta = fechaHasta,
        _orden = orden,
        _estado = estado,
        _numero = numero,
        _barrioNombre = barrioNombre,
        _rutaNombre = rutaNombre;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "cuenta_contrato" field.
  String? _cuentaContrato;
  String get cuentaContrato => _cuentaContrato ?? '';
  set cuentaContrato(String? val) => _cuentaContrato = val;

  bool hasCuentaContrato() => _cuentaContrato != null;

  // "nombre_cliente" field.
  String? _nombreCliente;
  String get nombreCliente => _nombreCliente ?? '';
  set nombreCliente(String? val) => _nombreCliente = val;

  bool hasNombreCliente() => _nombreCliente != null;

  // "calle" field.
  String? _calle;
  String get calle => _calle ?? '';
  set calle(String? val) => _calle = val;

  bool hasCalle() => _calle != null;

  // "piso" field.
  String? _piso;
  String get piso => _piso ?? '';
  set piso(String? val) => _piso = val;

  bool hasPiso() => _piso != null;

  // "depto" field.
  String? _depto;
  String get depto => _depto ?? '';
  set depto(String? val) => _depto = val;

  bool hasDepto() => _depto != null;

  // "barrio_id" field.
  String? _barrioId;
  String get barrioId => _barrioId ?? '';
  set barrioId(String? val) => _barrioId = val;

  bool hasBarrioId() => _barrioId != null;

  // "localidad" field.
  String? _localidad;
  String get localidad => _localidad ?? '';
  set localidad(String? val) => _localidad = val;

  bool hasLocalidad() => _localidad != null;

  // "ruta_id" field.
  String? _rutaId;
  String get rutaId => _rutaId ?? '';
  set rutaId(String? val) => _rutaId = val;

  bool hasRutaId() => _rutaId != null;

  // "latitud" field.
  String? _latitud;
  String get latitud => _latitud ?? '';
  set latitud(String? val) => _latitud = val;

  bool hasLatitud() => _latitud != null;

  // "longitud" field.
  String? _longitud;
  String get longitud => _longitud ?? '';
  set longitud(String? val) => _longitud = val;

  bool hasLongitud() => _longitud != null;

  // "ubicacion_geo" field.
  String? _ubicacionGeo;
  String get ubicacionGeo => _ubicacionGeo ?? '';
  set ubicacionGeo(String? val) => _ubicacionGeo = val;

  bool hasUbicacionGeo() => _ubicacionGeo != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  set telefono(String? val) => _telefono = val;

  bool hasTelefono() => _telefono != null;

  // "fecha_creacion" field.
  String? _fechaCreacion;
  String get fechaCreacion => _fechaCreacion ?? '';
  set fechaCreacion(String? val) => _fechaCreacion = val;

  bool hasFechaCreacion() => _fechaCreacion != null;

  // "activo" field.
  bool? _activo;
  bool get activo => _activo ?? false;
  set activo(bool? val) => _activo = val;

  bool hasActivo() => _activo != null;

  // "medidor" field.
  String? _medidor;
  String get medidor => _medidor ?? '';
  set medidor(String? val) => _medidor = val;

  bool hasMedidor() => _medidor != null;

  // "medidor_nuevo" field.
  String? _medidorNuevo;
  String get medidorNuevo => _medidorNuevo ?? '';
  set medidorNuevo(String? val) => _medidorNuevo = val;

  bool hasMedidorNuevo() => _medidorNuevo != null;

  // "lectura" field.
  int? _lectura;
  int get lectura => _lectura ?? 0;
  set lectura(int? val) => _lectura = val;

  void incrementLectura(int amount) => lectura = lectura + amount;

  bool hasLectura() => _lectura != null;

  // "lectura_nueva" field.
  int? _lecturaNueva;
  int get lecturaNueva => _lecturaNueva ?? 0;
  set lecturaNueva(int? val) => _lecturaNueva = val;

  void incrementLecturaNueva(int amount) =>
      lecturaNueva = lecturaNueva + amount;

  bool hasLecturaNueva() => _lecturaNueva != null;

  // "fecha_lectura" field.
  String? _fechaLectura;
  String get fechaLectura => _fechaLectura ?? '';
  set fechaLectura(String? val) => _fechaLectura = val;

  bool hasFechaLectura() => _fechaLectura != null;

  // "hora_cumplimiento" field.
  String? _horaCumplimiento;
  String get horaCumplimiento => _horaCumplimiento ?? '';
  set horaCumplimiento(String? val) => _horaCumplimiento = val;

  bool hasHoraCumplimiento() => _horaCumplimiento != null;

  // "fecha_visita" field.
  String? _fechaVisita;
  String get fechaVisita => _fechaVisita ?? '';
  set fechaVisita(String? val) => _fechaVisita = val;

  bool hasFechaVisita() => _fechaVisita != null;

  // "hora_visita" field.
  String? _horaVisita;
  String get horaVisita => _horaVisita ?? '';
  set horaVisita(String? val) => _horaVisita = val;

  bool hasHoraVisita() => _horaVisita != null;

  // "cepo" field.
  String? _cepo;
  String get cepo => _cepo ?? '';
  set cepo(String? val) => _cepo = val;

  bool hasCepo() => _cepo != null;

  // "punto_suministro" field.
  String? _puntoSuministro;
  String get puntoSuministro => _puntoSuministro ?? '';
  set puntoSuministro(String? val) => _puntoSuministro = val;

  bool hasPuntoSuministro() => _puntoSuministro != null;

  // "caudal_existente" field.
  String? _caudalExistente;
  String get caudalExistente => _caudalExistente ?? '';
  set caudalExistente(String? val) => _caudalExistente = val;

  bool hasCaudalExistente() => _caudalExistente != null;

  // "caudal_nuevo" field.
  String? _caudalNuevo;
  String get caudalNuevo => _caudalNuevo ?? '';
  set caudalNuevo(String? val) => _caudalNuevo = val;

  bool hasCaudalNuevo() => _caudalNuevo != null;

  // "verificar_caudal" field.
  String? _verificarCaudal;
  String get verificarCaudal => _verificarCaudal ?? '';
  set verificarCaudal(String? val) => _verificarCaudal = val;

  bool hasVerificarCaudal() => _verificarCaudal != null;

  // "fecha_desde" field.
  String? _fechaDesde;
  String get fechaDesde => _fechaDesde ?? '';
  set fechaDesde(String? val) => _fechaDesde = val;

  bool hasFechaDesde() => _fechaDesde != null;

  // "fecha_hasta" field.
  String? _fechaHasta;
  String get fechaHasta => _fechaHasta ?? '';
  set fechaHasta(String? val) => _fechaHasta = val;

  bool hasFechaHasta() => _fechaHasta != null;

  // "orden" field.
  String? _orden;
  String get orden => _orden ?? '';
  set orden(String? val) => _orden = val;

  bool hasOrden() => _orden != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  set numero(String? val) => _numero = val;

  bool hasNumero() => _numero != null;

  // "barrio_nombre" field.
  String? _barrioNombre;
  String get barrioNombre => _barrioNombre ?? '';
  set barrioNombre(String? val) => _barrioNombre = val;

  bool hasBarrioNombre() => _barrioNombre != null;

  // "ruta_nombre" field.
  String? _rutaNombre;
  String get rutaNombre => _rutaNombre ?? '';
  set rutaNombre(String? val) => _rutaNombre = val;

  bool hasRutaNombre() => _rutaNombre != null;

  static BusquedaclienteStruct fromMap(Map<String, dynamic> data) =>
      BusquedaclienteStruct(
        id: data['id'] as String?,
        cuentaContrato: data['cuenta_contrato'] as String?,
        nombreCliente: data['nombre_cliente'] as String?,
        calle: data['calle'] as String?,
        piso: data['piso'] as String?,
        depto: data['depto'] as String?,
        barrioId: data['barrio_id'] as String?,
        localidad: data['localidad'] as String?,
        rutaId: data['ruta_id'] as String?,
        latitud: data['latitud'] as String?,
        longitud: data['longitud'] as String?,
        ubicacionGeo: data['ubicacion_geo'] as String?,
        telefono: data['telefono'] as String?,
        fechaCreacion: data['fecha_creacion'] as String?,
        activo: data['activo'] as bool?,
        medidor: data['medidor'] as String?,
        medidorNuevo: data['medidor_nuevo'] as String?,
        lectura: castToType<int>(data['lectura']),
        lecturaNueva: castToType<int>(data['lectura_nueva']),
        fechaLectura: data['fecha_lectura'] as String?,
        horaCumplimiento: data['hora_cumplimiento'] as String?,
        fechaVisita: data['fecha_visita'] as String?,
        horaVisita: data['hora_visita'] as String?,
        cepo: data['cepo'] as String?,
        puntoSuministro: data['punto_suministro'] as String?,
        caudalExistente: data['caudal_existente'] as String?,
        caudalNuevo: data['caudal_nuevo'] as String?,
        verificarCaudal: data['verificar_caudal'] as String?,
        fechaDesde: data['fecha_desde'] as String?,
        fechaHasta: data['fecha_hasta'] as String?,
        orden: data['orden'] as String?,
        estado: data['estado'] as String?,
        numero: data['numero'] as String?,
        barrioNombre: data['barrio_nombre'] as String?,
        rutaNombre: data['ruta_nombre'] as String?,
      );

  static BusquedaclienteStruct? maybeFromMap(dynamic data) => data is Map
      ? BusquedaclienteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'cuenta_contrato': _cuentaContrato,
        'nombre_cliente': _nombreCliente,
        'calle': _calle,
        'piso': _piso,
        'depto': _depto,
        'barrio_id': _barrioId,
        'localidad': _localidad,
        'ruta_id': _rutaId,
        'latitud': _latitud,
        'longitud': _longitud,
        'ubicacion_geo': _ubicacionGeo,
        'telefono': _telefono,
        'fecha_creacion': _fechaCreacion,
        'activo': _activo,
        'medidor': _medidor,
        'medidor_nuevo': _medidorNuevo,
        'lectura': _lectura,
        'lectura_nueva': _lecturaNueva,
        'fecha_lectura': _fechaLectura,
        'hora_cumplimiento': _horaCumplimiento,
        'fecha_visita': _fechaVisita,
        'hora_visita': _horaVisita,
        'cepo': _cepo,
        'punto_suministro': _puntoSuministro,
        'caudal_existente': _caudalExistente,
        'caudal_nuevo': _caudalNuevo,
        'verificar_caudal': _verificarCaudal,
        'fecha_desde': _fechaDesde,
        'fecha_hasta': _fechaHasta,
        'orden': _orden,
        'estado': _estado,
        'numero': _numero,
        'barrio_nombre': _barrioNombre,
        'ruta_nombre': _rutaNombre,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'cuenta_contrato': serializeParam(
          _cuentaContrato,
          ParamType.String,
        ),
        'nombre_cliente': serializeParam(
          _nombreCliente,
          ParamType.String,
        ),
        'calle': serializeParam(
          _calle,
          ParamType.String,
        ),
        'piso': serializeParam(
          _piso,
          ParamType.String,
        ),
        'depto': serializeParam(
          _depto,
          ParamType.String,
        ),
        'barrio_id': serializeParam(
          _barrioId,
          ParamType.String,
        ),
        'localidad': serializeParam(
          _localidad,
          ParamType.String,
        ),
        'ruta_id': serializeParam(
          _rutaId,
          ParamType.String,
        ),
        'latitud': serializeParam(
          _latitud,
          ParamType.String,
        ),
        'longitud': serializeParam(
          _longitud,
          ParamType.String,
        ),
        'ubicacion_geo': serializeParam(
          _ubicacionGeo,
          ParamType.String,
        ),
        'telefono': serializeParam(
          _telefono,
          ParamType.String,
        ),
        'fecha_creacion': serializeParam(
          _fechaCreacion,
          ParamType.String,
        ),
        'activo': serializeParam(
          _activo,
          ParamType.bool,
        ),
        'medidor': serializeParam(
          _medidor,
          ParamType.String,
        ),
        'medidor_nuevo': serializeParam(
          _medidorNuevo,
          ParamType.String,
        ),
        'lectura': serializeParam(
          _lectura,
          ParamType.int,
        ),
        'lectura_nueva': serializeParam(
          _lecturaNueva,
          ParamType.int,
        ),
        'fecha_lectura': serializeParam(
          _fechaLectura,
          ParamType.String,
        ),
        'hora_cumplimiento': serializeParam(
          _horaCumplimiento,
          ParamType.String,
        ),
        'fecha_visita': serializeParam(
          _fechaVisita,
          ParamType.String,
        ),
        'hora_visita': serializeParam(
          _horaVisita,
          ParamType.String,
        ),
        'cepo': serializeParam(
          _cepo,
          ParamType.String,
        ),
        'punto_suministro': serializeParam(
          _puntoSuministro,
          ParamType.String,
        ),
        'caudal_existente': serializeParam(
          _caudalExistente,
          ParamType.String,
        ),
        'caudal_nuevo': serializeParam(
          _caudalNuevo,
          ParamType.String,
        ),
        'verificar_caudal': serializeParam(
          _verificarCaudal,
          ParamType.String,
        ),
        'fecha_desde': serializeParam(
          _fechaDesde,
          ParamType.String,
        ),
        'fecha_hasta': serializeParam(
          _fechaHasta,
          ParamType.String,
        ),
        'orden': serializeParam(
          _orden,
          ParamType.String,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
        'numero': serializeParam(
          _numero,
          ParamType.String,
        ),
        'barrio_nombre': serializeParam(
          _barrioNombre,
          ParamType.String,
        ),
        'ruta_nombre': serializeParam(
          _rutaNombre,
          ParamType.String,
        ),
      }.withoutNulls;

  static BusquedaclienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      BusquedaclienteStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        cuentaContrato: deserializeParam(
          data['cuenta_contrato'],
          ParamType.String,
          false,
        ),
        nombreCliente: deserializeParam(
          data['nombre_cliente'],
          ParamType.String,
          false,
        ),
        calle: deserializeParam(
          data['calle'],
          ParamType.String,
          false,
        ),
        piso: deserializeParam(
          data['piso'],
          ParamType.String,
          false,
        ),
        depto: deserializeParam(
          data['depto'],
          ParamType.String,
          false,
        ),
        barrioId: deserializeParam(
          data['barrio_id'],
          ParamType.String,
          false,
        ),
        localidad: deserializeParam(
          data['localidad'],
          ParamType.String,
          false,
        ),
        rutaId: deserializeParam(
          data['ruta_id'],
          ParamType.String,
          false,
        ),
        latitud: deserializeParam(
          data['latitud'],
          ParamType.String,
          false,
        ),
        longitud: deserializeParam(
          data['longitud'],
          ParamType.String,
          false,
        ),
        ubicacionGeo: deserializeParam(
          data['ubicacion_geo'],
          ParamType.String,
          false,
        ),
        telefono: deserializeParam(
          data['telefono'],
          ParamType.String,
          false,
        ),
        fechaCreacion: deserializeParam(
          data['fecha_creacion'],
          ParamType.String,
          false,
        ),
        activo: deserializeParam(
          data['activo'],
          ParamType.bool,
          false,
        ),
        medidor: deserializeParam(
          data['medidor'],
          ParamType.String,
          false,
        ),
        medidorNuevo: deserializeParam(
          data['medidor_nuevo'],
          ParamType.String,
          false,
        ),
        lectura: deserializeParam(
          data['lectura'],
          ParamType.int,
          false,
        ),
        lecturaNueva: deserializeParam(
          data['lectura_nueva'],
          ParamType.int,
          false,
        ),
        fechaLectura: deserializeParam(
          data['fecha_lectura'],
          ParamType.String,
          false,
        ),
        horaCumplimiento: deserializeParam(
          data['hora_cumplimiento'],
          ParamType.String,
          false,
        ),
        fechaVisita: deserializeParam(
          data['fecha_visita'],
          ParamType.String,
          false,
        ),
        horaVisita: deserializeParam(
          data['hora_visita'],
          ParamType.String,
          false,
        ),
        cepo: deserializeParam(
          data['cepo'],
          ParamType.String,
          false,
        ),
        puntoSuministro: deserializeParam(
          data['punto_suministro'],
          ParamType.String,
          false,
        ),
        caudalExistente: deserializeParam(
          data['caudal_existente'],
          ParamType.String,
          false,
        ),
        caudalNuevo: deserializeParam(
          data['caudal_nuevo'],
          ParamType.String,
          false,
        ),
        verificarCaudal: deserializeParam(
          data['verificar_caudal'],
          ParamType.String,
          false,
        ),
        fechaDesde: deserializeParam(
          data['fecha_desde'],
          ParamType.String,
          false,
        ),
        fechaHasta: deserializeParam(
          data['fecha_hasta'],
          ParamType.String,
          false,
        ),
        orden: deserializeParam(
          data['orden'],
          ParamType.String,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
        numero: deserializeParam(
          data['numero'],
          ParamType.String,
          false,
        ),
        barrioNombre: deserializeParam(
          data['barrio_nombre'],
          ParamType.String,
          false,
        ),
        rutaNombre: deserializeParam(
          data['ruta_nombre'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BusquedaclienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BusquedaclienteStruct &&
        id == other.id &&
        cuentaContrato == other.cuentaContrato &&
        nombreCliente == other.nombreCliente &&
        calle == other.calle &&
        piso == other.piso &&
        depto == other.depto &&
        barrioId == other.barrioId &&
        localidad == other.localidad &&
        rutaId == other.rutaId &&
        latitud == other.latitud &&
        longitud == other.longitud &&
        ubicacionGeo == other.ubicacionGeo &&
        telefono == other.telefono &&
        fechaCreacion == other.fechaCreacion &&
        activo == other.activo &&
        medidor == other.medidor &&
        medidorNuevo == other.medidorNuevo &&
        lectura == other.lectura &&
        lecturaNueva == other.lecturaNueva &&
        fechaLectura == other.fechaLectura &&
        horaCumplimiento == other.horaCumplimiento &&
        fechaVisita == other.fechaVisita &&
        horaVisita == other.horaVisita &&
        cepo == other.cepo &&
        puntoSuministro == other.puntoSuministro &&
        caudalExistente == other.caudalExistente &&
        caudalNuevo == other.caudalNuevo &&
        verificarCaudal == other.verificarCaudal &&
        fechaDesde == other.fechaDesde &&
        fechaHasta == other.fechaHasta &&
        orden == other.orden &&
        estado == other.estado &&
        numero == other.numero &&
        barrioNombre == other.barrioNombre &&
        rutaNombre == other.rutaNombre;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        cuentaContrato,
        nombreCliente,
        calle,
        piso,
        depto,
        barrioId,
        localidad,
        rutaId,
        latitud,
        longitud,
        ubicacionGeo,
        telefono,
        fechaCreacion,
        activo,
        medidor,
        medidorNuevo,
        lectura,
        lecturaNueva,
        fechaLectura,
        horaCumplimiento,
        fechaVisita,
        horaVisita,
        cepo,
        puntoSuministro,
        caudalExistente,
        caudalNuevo,
        verificarCaudal,
        fechaDesde,
        fechaHasta,
        orden,
        estado,
        numero,
        barrioNombre,
        rutaNombre
      ]);
}

BusquedaclienteStruct createBusquedaclienteStruct({
  String? id,
  String? cuentaContrato,
  String? nombreCliente,
  String? calle,
  String? piso,
  String? depto,
  String? barrioId,
  String? localidad,
  String? rutaId,
  String? latitud,
  String? longitud,
  String? ubicacionGeo,
  String? telefono,
  String? fechaCreacion,
  bool? activo,
  String? medidor,
  String? medidorNuevo,
  int? lectura,
  int? lecturaNueva,
  String? fechaLectura,
  String? horaCumplimiento,
  String? fechaVisita,
  String? horaVisita,
  String? cepo,
  String? puntoSuministro,
  String? caudalExistente,
  String? caudalNuevo,
  String? verificarCaudal,
  String? fechaDesde,
  String? fechaHasta,
  String? orden,
  String? estado,
  String? numero,
  String? barrioNombre,
  String? rutaNombre,
}) =>
    BusquedaclienteStruct(
      id: id,
      cuentaContrato: cuentaContrato,
      nombreCliente: nombreCliente,
      calle: calle,
      piso: piso,
      depto: depto,
      barrioId: barrioId,
      localidad: localidad,
      rutaId: rutaId,
      latitud: latitud,
      longitud: longitud,
      ubicacionGeo: ubicacionGeo,
      telefono: telefono,
      fechaCreacion: fechaCreacion,
      activo: activo,
      medidor: medidor,
      medidorNuevo: medidorNuevo,
      lectura: lectura,
      lecturaNueva: lecturaNueva,
      fechaLectura: fechaLectura,
      horaCumplimiento: horaCumplimiento,
      fechaVisita: fechaVisita,
      horaVisita: horaVisita,
      cepo: cepo,
      puntoSuministro: puntoSuministro,
      caudalExistente: caudalExistente,
      caudalNuevo: caudalNuevo,
      verificarCaudal: verificarCaudal,
      fechaDesde: fechaDesde,
      fechaHasta: fechaHasta,
      orden: orden,
      estado: estado,
      numero: numero,
      barrioNombre: barrioNombre,
      rutaNombre: rutaNombre,
    );
