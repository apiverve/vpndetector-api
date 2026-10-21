# VPN Proxy Detector API - Ruby Gem

VPN Proxy Detector checks any IP address to detect active VPN connections and cloud datacenter hosting. Lookups return boolean flags for VPN and datacenter status plus the verification date, with paid tiers adding Tor detection and risk levels.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_vpndetector'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_vpndetector
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_vpndetector'

# Initialize the client
client = APIVerve::Vpndetector::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ ip: "103.62.49.210" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ ip: "103.62.49.210" })
  puts response["data"]
rescue APIVerve::Vpndetector::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Vpndetector::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Vpndetector::Client.new(
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
    "ip": "103.62.49.210",
    "is_vpn": false,
    "is_datacenter": true,
    "is_tor": false,
    "asn": "AS137409",
    "asn_name": "GSLNETWORKS-AS-AP GSL Networks Pty LTD",
    "checked_on": "2026-09-14",
    "risk_level": "Moderate",
    "threat_level": "Low"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/vpndetector?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/vpndetector?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/vpndetector?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
