import 'data.dart';

final class Content {
  final List<Data> data;
  final int meta;

  const Content({
    required this.data,
    required this.meta,
  });

  factory Content.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['data'] as List;
    List<Data> dataList = list.map((i) => Data.fromJson(i)).toList();

    return Content(
      data: dataList,
      meta: parsedJson['meta']['total'],
    );
  }
}
