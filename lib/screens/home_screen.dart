import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdfview_test/screens/reader_screen.dart';

import '../models/document_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text('PDF Reader'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recent Documents",
                style: GoogleFonts.roboto(
                    fontSize: 28.0, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              Column(
                children: Document.docList
                    .map((doc) => ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReaderScreen(doc)));
                          },
                          title: Text(
                            doc.docTitle!,
                            style: GoogleFonts.nunito(),
                          ),
                          subtitle: Text("${doc.pageNum!}"),
                          trailing: Text(
                            doc.docDate!,
                            style: GoogleFonts.nunito(color: Colors.grey),
                          ),
                          leading: const Icon(
                            Icons.picture_as_pdf,
                            color: Colors.blue,
                            size: 32.0,
                          ),
                        ))
                    .toList(),
              )
            ],
          ),
        ),
      )),
    );
  }
}
