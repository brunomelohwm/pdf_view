// ignore_for_file: public_member_api_docs, sort_constructors_first
class Document {
  String? docTitle;
  String? docUrl;
  String? docDate;
  int? pageNum;
  Document(
    this.docTitle,
    this.docUrl,
    this.docDate,
    this.pageNum,
  );

  static List<Document> docList = [
    Document(
      "ISSO É APENAS UM TESTE DE PDF",
      "images/sample.pdf",
      "28_03_2018",
      1,
    ),
    Document(
      "ISSO É APENAS UMA TENTATIVA",
      "images/sample.pdf",
      "28_03_2018",
      33,
    ),
    Document(
      "ISSO É A ULTIMA TENTATIVA",
      "images/sample.pdf",
      "28_03_2018",
      200,
    ),
  ];
}
