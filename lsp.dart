//  Derived classes should be substitutable for their base classes.

abstract class Data {
  final String title;
  final String description;

  Data({required this.title, required this.description});
}

class TextData extends Data {
  TextData({required super.title, required super.description});
}

class ImageData extends Data {
  ImageData({required super.title, required super.description});
}

void main(List<String> args) {
  Data d1 = TextData(title: "Text title", description: "description1");
  Data d2 = ImageData(title: "Image title", description: "description2");

  MyRandomData.showData(d1);
  MyRandomData.showData(d2);
}

class MyRandomData {
  MyRandomData._();
  static void showData(Data data) {
    print(data.title);
  }
}
