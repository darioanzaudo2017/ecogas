// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:signature/signature.dart';
import 'package:http/http.dart' as http;

class SignaturePadUploadSupabaseCopy extends StatefulWidget {
  const SignaturePadUploadSupabaseCopy({
    Key? key,
    required this.width,
    required this.height,
    required this.supabaseUrl,
    required this.supabaseApiKey,
    required this.fileName,
    this.onUploaded, // Callback opcional
  }) : super(key: key);

  final double width;
  final double height;
  final String supabaseUrl; // p.ej.: https://xxxxx.supabase.co
  final String supabaseApiKey; // Service Role key (no usar anon)
  final String fileName; // sin extensión, ej. firma_123

  /// Callback Action definido en el panel del widget.
  /// Debe tener un Action Parameter "url" (String).
  final Future<void> Function(String url)? onUploaded;

  @override
  _SignaturePadUploadSupabaseCopyState createState() =>
      _SignaturePadUploadSupabaseCopyState();
}

class _SignaturePadUploadSupabaseCopyState
    extends State<SignaturePadUploadSupabaseCopy> {
  late SignatureController _controller;
  bool _uploading = false;

  @override
  void initState() {
    super.initState();
    _controller = SignatureController(
      penStrokeWidth: 3,
      penColor: Colors.black,
      exportBackgroundColor: Colors.white,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _clear() {
    if (_uploading) return;
    _controller.clear();
  }

  Future<void> _uploadSignature() async {
    if (_uploading) return;

    if (_controller.isEmpty) {
      _showSnackbar('No hay firma para guardar.');
      return;
    }

    setState(() => _uploading = true);

    try {
      final imageBytes = await _controller.toPngBytes();
      if (imageBytes == null) {
        _showSnackbar('Error al generar la imagen.');
        return;
      }

      const bucket = 'fotomedidor'; // Cambia si usas otro bucket
      final uploadUrl =
          '${widget.supabaseUrl}/storage/v1/object/$bucket/${widget.fileName}.png';

      final response = await http.put(
        Uri.parse(uploadUrl),
        headers: {
          'apikey': widget.supabaseApiKey,
          'Authorization': 'Bearer ${widget.supabaseApiKey}',
          'Content-Type': 'image/png',
        },
        body: imageBytes,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final publicUrl =
            '${widget.supabaseUrl}/storage/v1/object/public/$bucket/${widget.fileName}.png';

        _showSnackbar('Firma guardada con éxito');

        // Devuelve la URL al flujo (Action → Set App State o Insert Row).
        await widget.onUploaded?.call(publicUrl);
      } else {
        _showSnackbar('Error al subir firma: ${response.statusCode}');
        // print('Error body: ${response.body}');
      }
    } catch (e) {
      _showSnackbar('Error al subir firma');
      // print(e);
    } finally {
      if (mounted) setState(() => _uploading = false);
    }
  }

  void _showSnackbar(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRect(
            child: SizedBox(
              width: widget.width,
              height: widget.height,
              child: Signature(
                controller: _controller,
                backgroundColor: Colors.grey[200]!,
              ),
            ),
          ),
          const SizedBox(height: 12),
          if (_uploading)
            const CircularProgressIndicator()
          else
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _clear,
                    child: const Text('Borrar'),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: _uploadSignature,
                    child: const Text('Guardar'),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
