class Quote {

  late String text;
  late String author;

  Quote({ String? text, required String author }){
    this.text = text!;
    this.author = author;
  }
}