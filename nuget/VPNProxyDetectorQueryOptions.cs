using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.VPNProxyDetector
{
    /// <summary>
    /// Query options for the VPN Proxy Detector API
    /// </summary>
    public class VPNProxyDetectorQueryOptions
    {
        /// <summary>
        /// The IP address you want to check for VPN usage
        /// Example: 103.62.49.210
        /// </summary>
        [JsonProperty("ip")]
        public string Ip { get; set; }
    }
}
