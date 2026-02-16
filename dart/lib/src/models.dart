/// Response models for the Face Detector API.

/// API Response wrapper.
class FacedetectResponse {
  final String status;
  final dynamic error;
  final FacedetectData? data;

  FacedetectResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory FacedetectResponse.fromJson(Map<String, dynamic> json) => FacedetectResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? FacedetectData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Face Detector API.

class FacedetectData {
  List<FacedetectDataFacesItem>? faces;
  int? faceCount;
  bool? hasFaces;
  int? imageWidth;
  int? imageHeight;

  FacedetectData({
    this.faces,
    this.faceCount,
    this.hasFaces,
    this.imageWidth,
    this.imageHeight,
  });

  factory FacedetectData.fromJson(Map<String, dynamic> json) => FacedetectData(
      faces: (json['faces'] as List?)?.map((e) => FacedetectDataFacesItem.fromJson(e)).toList(),
      faceCount: json['faceCount'],
      hasFaces: json['hasFaces'],
      imageWidth: json['imageWidth'],
      imageHeight: json['imageHeight'],
    );
}

class FacedetectDataFacesItem {
  int? x;
  int? y;
  int? width;
  int? height;
  double? confidence;

  FacedetectDataFacesItem({
    this.x,
    this.y,
    this.width,
    this.height,
    this.confidence,
  });

  factory FacedetectDataFacesItem.fromJson(Map<String, dynamic> json) => FacedetectDataFacesItem(
      x: json['x'],
      y: json['y'],
      width: json['width'],
      height: json['height'],
      confidence: json['confidence'],
    );
}

class FacedetectRequest {
  String url;
  double? confidence;

  FacedetectRequest({
    required this.url,
    this.confidence,
  });

  Map<String, dynamic> toJson() => {
      'url': url,
      if (confidence != null) 'confidence': confidence,
    };
}
