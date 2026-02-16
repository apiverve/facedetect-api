# Face Detector API - Dart/Flutter Client

Face Detector API analyzes images to detect human faces and returns bounding box coordinates for each detected face.

[![pub package](https://img.shields.io/pub/v/apiverve_facedetect.svg)](https://pub.dev/packages/apiverve_facedetect)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Face Detector API](https://apiverve.com/marketplace/facedetect?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_facedetect: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_facedetect/apiverve_facedetect.dart';

void main() async {
  final client = FacedetectClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'url': 'https://example.com/group-photo.jpg',
      'confidence': 0.5
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "faces": [
      {
        "x": 142,
        "y": 85,
        "width": 98,
        "height": 112,
        "confidence": 0.9847
      },
      {
        "x": 312,
        "y": 92,
        "width": 87,
        "height": 103,
        "confidence": 0.9623
      },
      {
        "x": 478,
        "y": 78,
        "width": 95,
        "height": 118,
        "confidence": 0.9412
      }
    ],
    "faceCount": 3,
    "hasFaces": true,
    "imageWidth": 640,
    "imageHeight": 480
  },
  "code": 200
}
```

## API Reference

- **API Home:** [Face Detector API](https://apiverve.com/marketplace/facedetect?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/facedetect](https://docs.apiverve.com/ref/facedetect?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
