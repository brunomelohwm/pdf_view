import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../models/document_model.dart';

class ReaderScreen extends StatefulWidget {
  ReaderScreen(this.doc, {Key? key}) : super(key: key);
  Document doc;

  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  late PdfViewerController _pdfViewerController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.doc.docTitle!),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = 3.0;
              },
              icon: Icon(Icons.zoom_in)),
          IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = 1.0;
              },
              icon: Icon(Icons.zoom_out))
        ],
      ),
      body: SfPdfViewer.asset(
        widget.doc.docUrl!,
        controller: _pdfViewerController,
      ),
    );
  }
}
