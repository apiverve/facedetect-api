# Face Detector API - Ruby Gem

Face Detector is a face detection API that analyzes an image and reports whether it contains human faces. Paid plans add the face count and bounding box coordinates with a confidence score for each detected face.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_facedetect'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_facedetect
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_facedetect'

# Initialize the client
client = APIVerve::Facedetect::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  url: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=640",
  confidence: 0.5
})

# Print the response
puts response
```

### File Upload

```ruby
# Upload a file
response = client.execute_with_file("/path/to/file.jpg")

# Or use a URL
response = client.execute_with_url("https://example.com/image.jpg")
```

### Error Handling

```ruby
begin
  response = client.execute({ url: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=640", confidence: 0.5 })
  puts response["data"]
rescue APIVerve::Facedetect::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Facedetect::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Facedetect::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/facedetect?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/facedetect?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/facedetect?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
