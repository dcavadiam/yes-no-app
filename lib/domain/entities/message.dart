//Nota: todo lo que esté en la carpeta domain debe ser código puro de dart, sin dependencias de flutter.

//Este enum es para saber si el mensaje es de ella o de él
enum FromWho {
  me,
  her,
}

class Message {
  final String text;
  final String? imageUrl;
  final FromWho fromWho;

  Message({
    required this.text,
    this.imageUrl,
    required this.fromWho,
  });
}
