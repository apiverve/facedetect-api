# [Face Detector API](https://apiverve.com/marketplace/facedetect?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)

Face Detector API analyzes images to detect human faces and returns bounding box coordinates for each detected face.

The Face Detector API provides a simple, reliable way to integrate face detector functionality into your applications. Built for developers who need production-ready face detector capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/facedetect?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/facedetect?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-POST-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/facedetect)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.FaceDetector)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-facedetect/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_facedetect)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/facedetect)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_facedetect)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callFaceDetectorAPI() {
    try {
        const requestBody = {
    "url": "https://example.com/group-photo.jpg",
    "confidence": 0.5
};

        const response = await fetch('https://api.apiverve.com/v1/facedetect', {
            method: 'POST',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(requestBody)
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callFaceDetectorAPI();
```

### Using cURL

```bash
curl -X POST "https://api.apiverve.com/v1/facedetect" \
  -H "x-api-key: YOUR_API_KEY_HERE" \
  -F "image=@/path/to/your-file"
# Accepted formats: .jpg, .jpeg, .png, .gif, .webp (max 10MB)
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/facedetect
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/facedetect) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.FaceDetector
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.FaceDetector) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-facedetect
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-facedetect/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_facedetect
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_facedetect) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/facedetect
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/facedetect) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_facedetect
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_facedetect) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:facedetect-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/facedetect-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Face Detector API](https://apiverve.com/marketplace/facedetect?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/facedetect](https://docs.apiverve.com/ref/facedetect)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Face Detector API is commonly used for:

- **Web Applications** - Add face detector features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with face detector capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Face Detector API:

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
    "imageHeight": 480,
    "averageConfidence": 0.9627,
    "imageCoverage": 10.23
  },
  "code": 200
}
```

---

## Support & Community

- 🏠 **API Home**: [Face Detector API](https://apiverve.com/marketplace/facedetect?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
