# VPN Proxy Detector API - PHP Package

VPN Proxy Detector checks any IP address to detect active VPN connections and cloud datacenter hosting. Lookups return boolean flags for VPN and datacenter status plus the verification date, with paid tiers adding Tor detection and risk levels.

## Installation

Install via Composer:

```bash
composer require apiverve/vpndetector
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Vpndetector\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['ip' => '103.62.49.210']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Vpndetector\Client;
use APIVerve\Vpndetector\Exceptions\APIException;
use APIVerve\Vpndetector\Exceptions\ValidationException;

try {
    $response = $client->execute(['ip' => '103.62.49.210']);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/vpndetector?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/vpndetector?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/vpndetector?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
