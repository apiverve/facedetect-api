/// Response models for the Face Detector API.

/// API Response wrapper.
class FacedetectResponse {
  final String status;
  final dynamic error;
  final FacedetectData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  FacedetectResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory FacedetectResponse.fromJson(Map<String, dynamic> json) => FacedetectResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? FacedetectData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Face Detector API.

class FacedetectData {
  List<FacedetectDataFacesItem>? faces;
  num? faceCount;
  bool? hasFaces;
  num? imageWidth;
  num? imageHeight;
  num? averageConfidence;
  num? imageCoverage;

  FacedetectData({
    this.faces,
    this.faceCount,
    this.hasFaces,
    this.imageWidth,
    this.imageHeight,
    this.averageConfidence,
    this.imageCoverage,
  });

  factory FacedetectData.fromJson(Map<String, dynamic> json) => FacedetectData(
      faces: (json['faces'] as List?)?.map((e) => FacedetectDataFacesItem.fromJson(e)).toList(),
      faceCount: json['faceCount'],
      hasFaces: json['hasFaces'],
      imageWidth: json['imageWidth'],
      imageHeight: json['imageHeight'],
      averageConfidence: json['averageConfidence'],
      imageCoverage: json['imageCoverage'],
    );
}

class FacedetectDataFacesItem {
  num? x;
  num? y;
  num? width;
  num? height;
  num? confidence;

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
  String? url;
  num? confidence;

  FacedetectRequest({
    this.url,
    this.confidence,
  });

  Map<String, dynamic> toJson() => {
      if (url != null) 'url': url,
      if (confidence != null) 'confidence': confidence,
    };
}
