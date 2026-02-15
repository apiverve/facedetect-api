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
        /// URL of the image to analyze (JPG, PNG, GIF, WebP supported)
        /// </summary>
        [JsonProperty("url")]
        public string Url { get; set; }

        /// <summary>
        /// Minimum confidence threshold for face detection (0.1 to 1.0)
        /// </summary>
        [JsonProperty("confidence")]
        public string Confidence { get; set; }
    }
}
