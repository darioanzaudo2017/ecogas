import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _listidclientes = [];
  List<String> get listidclientes => _listidclientes;
  set listidclientes(List<String> value) {
    _listidclientes = value;
  }

  void addToListidclientes(String value) {
    listidclientes.add(value);
  }

  void removeFromListidclientes(String value) {
    listidclientes.remove(value);
  }

  void removeAtIndexFromListidclientes(int index) {
    listidclientes.removeAt(index);
  }

  void updateListidclientesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listidclientes[index] = updateFn(_listidclientes[index]);
  }

  void insertAtIndexInListidclientes(int index, String value) {
    listidclientes.insert(index, value);
  }

  List<BusquedaclienteStruct> _listabusquedaclientes = [];
  List<BusquedaclienteStruct> get listabusquedaclientes =>
      _listabusquedaclientes;
  set listabusquedaclientes(List<BusquedaclienteStruct> value) {
    _listabusquedaclientes = value;
  }

  void addToListabusquedaclientes(BusquedaclienteStruct value) {
    listabusquedaclientes.add(value);
  }

  void removeFromListabusquedaclientes(BusquedaclienteStruct value) {
    listabusquedaclientes.remove(value);
  }

  void removeAtIndexFromListabusquedaclientes(int index) {
    listabusquedaclientes.removeAt(index);
  }

  void updateListabusquedaclientesAtIndex(
    int index,
    BusquedaclienteStruct Function(BusquedaclienteStruct) updateFn,
  ) {
    listabusquedaclientes[index] = updateFn(_listabusquedaclientes[index]);
  }

  void insertAtIndexInListabusquedaclientes(
      int index, BusquedaclienteStruct value) {
    listabusquedaclientes.insert(index, value);
  }

  String _iduser = '';
  String get iduser => _iduser;
  set iduser(String value) {
    _iduser = value;
  }
}
