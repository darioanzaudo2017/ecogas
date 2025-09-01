import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

List<String>? findSelectedClientes(
  List<BusquedaclienteStruct>? allClientes,
  List<int>? selectedIndex,
) {
  if (allClientes == null || selectedIndex == null) {
    return [];
  }

  List<String> selectedIds = [];

  for (final index in selectedIndex) {
    if (index >= 0 && index < allClientes.length) {
      final cliente = allClientes[index];
      if (cliente.id != null && cliente.id.isNotEmpty) {
        selectedIds.add(cliente.id);
      }
    }
  }

  return selectedIds;
}

DateTime? fechasegundavisita(DateTime fechaprimeravisita) {
  // return 2 dias mas a partir de fechaprimeravisita
  return fechaprimeravisita.add(Duration(days: 2));
}
