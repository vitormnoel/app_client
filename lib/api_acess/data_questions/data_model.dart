class DataModel {
  String type;
  String id;
  String flow;
  String enunciation;
  List<String>? options;

  DataModel({
    required this.type,
    required this.id,
    required this.flow,
    required this.enunciation,
    this.options,
  });

  factory DataModel.fromMap(Map<String, dynamic> json) => DataModel(
        type: json["type"],
        id: json["id"],
        flow: json["flow"],
        enunciation: json["enunciation"],
        options: json["options"] == null
            ? null
            : List<String>.from(json["options"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "type": type,
        "id": id,
        "flow": flow,
        "enunciation": enunciation,
        "options":
            options == null ? null : List<dynamic>.from(options!.map((x) => x)),
      };
}
