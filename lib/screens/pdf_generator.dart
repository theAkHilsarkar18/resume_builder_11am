import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_builder/screens/home/components/pdf_text.dart';
import 'package:resume_builder/utils/colors.dart';
import 'package:resume_builder/utils/globals.dart';

Future<Uint8List> pdfGenerator() {
  final pdf = pw.Document();
  // profileImage = pw.MemoryImage(fileImage!.readAsBytesSync());
  // pw.Image(profileImage),
  pdf.addPage(pw.Page(
    margin: pw.EdgeInsets.zero,
    pageFormat: PdfPageFormat.a4,
    build: (context) {
      return pw.Row(
        children: [
          pw.Container(
            width: 170,
            color: pdfOrange,
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.SizedBox(height: 20),
                pw.Align(
                  alignment: pw.Alignment.center,
                  child: pw.Container(
                    height: 100,
                    width: 100,
                    decoration: pw.BoxDecoration(
                        border: pw.Border.all(width: 2, color: pdfOffWhite),
                        shape: pw.BoxShape.circle,
                        image: pw.DecorationImage(
                            image:
                                pw.MemoryImage(fileImage!.readAsBytesSync()))),
                  ),
                ),
                pw.SizedBox(height: 10),
                pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                  child: pdfText(
                    text: 'Contacts',
                    fontSize: 18,
                    color: pdfOffWhite,
                    isBold: true,
                  ),
                ),
                pw.Divider(color: pdfOffWhite,thickness: 1.5),
                pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                  child: pdfText(
                    text: 'Phone',
                    fontSize: 14,
                    color: pdfOffWhite,
                    isBold: true,
                  ),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                  child: pdfText(
                    text: "+91 ${txtPhone.text}",
                    fontSize: 14,
                    color: pdfOffWhite,
                    isBold: false,
                  ),
                ),
                pw.SizedBox(height: 5),
                pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                  child: pdfText(
                    text: 'Email',
                    fontSize: 14,
                    color: pdfOffWhite,
                    isBold: true,
                  ),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                  child: pdfText(
                    text: txtEmail.text,
                    fontSize: 14,
                    color: pdfOffWhite,
                    isBold: false,
                  ),
                ),
              ],
            ),
          ),
          pw.SizedBox(width: 10),
          pw.Expanded(
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pdfText(
                  text: txtName.text,
                  fontSize: 30,
                  color: pdfBlue,
                  isBold: true,
                ),
                pdfText(
                  text: txtDesignation.text,
                  fontSize: 20,
                  color: pdfBlack,
                  isBold: false,
                ),
                pdfText(
                    text: txtAboutMe.text,
                    fontSize: 14,
                    color: pdfGrey,
                    isBold: false)
              ],
            ),
          ),
        ],
      );
    },
  ));
  return pdf.save();
}
