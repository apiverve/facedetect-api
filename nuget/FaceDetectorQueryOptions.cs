using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.FaceDetector
{
    /// <summary>
    /// Query options for the Face Detector API
    /// </summary>
    public class FaceDetectorQueryOptions
    {
        /// <summary>
        /// Image file upload (JPG, PNG, GIF, WebP supported, max 10MB)
        /// </summary>
        [JsonProperty("image")]
        public string Image { get; set; }

        /// <summary>
        /// Minimum confidence threshold for face detection (0.1 to 1.0)
        /// </summary>
        [JsonProperty("confidence")]
        public double? Confidence { get; set; }
    }
}
