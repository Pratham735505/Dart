2) Write a Java program to create an interface Searchable with a method search(String keyword) that searches for a given keyword in a text document. Create two classes Document and WebPage that implement the Searchable interface and provide their own implementations of the search() method.


class Searchable {
  bool search(String keyword) {
    return false;
  }
}

class Document implements Searchable {
  String content;

  Document(this.content);

  @override
  bool search(String keyword) {
    return content.contains(keyword);
  }
}

class WebPage implements Searchable {
  String htmlContent;

  WebPage(this.htmlContent);

  @override
  bool search(String keyword) {
    return htmlContent.contains(keyword);
  }
}

void main() {
  var doc = Document("This is a sample document.");
  var page = WebPage("<html>This is a webpage</html>");

  print(doc.search("sample")); // True
  print(page.search("webpage")); // True
}
