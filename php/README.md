# Face Detector API - PHP Package

Face Detector API analyzes images to detect human faces and returns bounding box coordinates for each detected face.

## Installation

Install via Composer:

```bash
composer require apiverve/facedetect
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Facedetect\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'url' => 'https://example.com/group-photo.jpg',
    'confidence' => 0.5
]);

// Print the response
print_r($response);
```

### File Upload

```php
// Upload a file
$response = $client->executeWithFile('/path/to/file.jpg');

// Or use a URL
$response = $client->executeWithUrl('https://example.com/image.jpg');
```

### Error Handling

```php
use APIVerve\Facedetect\Client;
use APIVerve\Facedetect\Exceptions\APIException;
use APIVerve\Facedetect\Exceptions\ValidationException;

try {
    $response = $client->execute(['url' => 'https://example.com/group-photo.jpg', 'confidence' => 0.5]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/facedetect?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/facedetect?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/facedetect?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
