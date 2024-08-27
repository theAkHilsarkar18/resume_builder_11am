import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resume_builder/screens/pdf_generator.dart';
import 'package:resume_builder/utils/globals.dart';

class PdfViewPage extends StatefulWidget {
  const PdfViewPage({super.key});

  @override
  State<PdfViewPage> createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        pdfFileName: '${txtName.text} resume',
        build: (format) => pdfGenerator(),
      ),
    );
  }
}
