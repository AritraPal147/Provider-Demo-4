import 'content.dart';

final class MainModel {
  MainModel({
    required this.content,
    required this.status,
  });

  final Content content;
  final bool status;

  factory MainModel.fromJson(Map<String, dynamic> parsedJson) {
    return MainModel(
      content: Content.fromJson(parsedJson['content']),
      status: parsedJson['status'],
    );
  }
}
