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

// Do not remove or modify the code above this line
// Do not remove or modify the code above this line
// Do not remove or modify the code above this line
import 'package:signature/signature.dart';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

class SignaturePadUploadSupabase extends StatefulWidget {
  const SignaturePadUploadSupabase({
    Key? key,
    required this.width,
    required this.height,
    required this.supabaseUrl,
    required this.supabaseApiKey,
    required this.fileName,
  }) : super(key: key);

  final double width;
  final double height;
  final String supabaseUrl;
  final String supabaseApiKey;
  final String fileName;

  @override
  _SignaturePadUploadSupabaseState createState() =>
      _SignaturePadUploadSupabaseState();
}

class _SignaturePadUploadSupabaseState
    extends State<SignaturePadUploadSupabase> {
  late SignatureController _controller;
  bool _uploading = false;
  String? _uploadedUrl;

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

    setState(() {
      _uploading = true;
    });

    try {
      final imageBytes = await _controller.toPngBytes();
      if (imageBytes == null) {
        _showSnackbar('Error al generar la imagen.');
        return;
      }

      final bucket = 'fotomedidor';
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

        _uploadedUrl = publicUrl;

        _showSnackbar('Firma guardada con éxito');
        // Puedes usar _uploadedUrl aquí para guardar en Firestore/Supabase DB
      } else {
        _showSnackbar('Error al subir firma: ${response.statusCode}');
        print('Error body: ${response.body}');
      }
    } catch (e) {
      _showSnackbar('Error al subir firma');
      print(e);
    } finally {
      setState(() {
        _uploading = false;
      });
    }
  }

  void _showSnackbar(String message) {
    if (context.mounted) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));
    }
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
