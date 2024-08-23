import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_builder/utils/globals.dart';

Future<Uint8List> pdfGenerator()
{
  final pdf = pw.Document();
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (context) {
        return pw.Column(
          children: List.generate(projectList.length, (index) => pw.Text('${projectList[index]['title'].text}\n${projectList[index]['description'].text}'),)
        );
      },
    )
  );
  return pdf.save();
}
