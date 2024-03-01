// * Manual JSON Serialization

class RecipeModel {
  final String uri;
  final String label;
  RecipeModel({
    required this.uri,
    required this.label,
  });
  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    return RecipeModel(
      uri: json['uri'] as String,
      label: json['label'] as String,
    );
  }
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'uri': uri,
      'label': label,
    };
  }
}
