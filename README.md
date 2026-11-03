# Salto KS API PHP SDK

PHP SDK for the [Salto KS Connect API](https://connect.my-clay.com) used for cloud-based smart locks, digital keys, and access control management.

> [!NOTE]
> This SDK is generated from the Salto KS (Clay) API specification and maintained as an integration library.

## Features

- **Full API Coverage**: Access Salto KS Connect API endpoints including Sites, Locks, Pods, Users, Access Groups, Entries, and Incidents.
- **Modern PHP**: Built for PHP 8.0+ with Guzzle 7.
- **Automated Updates**: Integrated with the centralized [OpenAPI SDK Builder](https://github.com/United-Workspace/openapi-sdk-builder) for automated weekly updates and version tagging.

## Installation (Consumer Project)

This package is **not published on Packagist**, so plain `composer install` in a different project will not fetch it automatically.

### Option A: Configure `composer.json` manually

Add this to your consuming project's `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/United-Workspace/saltoks-php-client.git"
    }
  ],
  "require": {
    "united-workspace/saltoks-api": "dev-main"
  }
}
```

Then run:

```bash
composer update united-workspace/saltoks-api --with-all-dependencies
```

### Option B: Configure via Composer CLI

```bash
composer config repositories.saltoks vcs https://github.com/United-Workspace/saltoks-php-client.git
composer require united-workspace/saltoks-api:dev-main
```

## Getting Started

Authentication requires a Bearer JWT access token from your Salto KS account.

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

use SaltoKS\Configuration;
use SaltoKS\Api\SitesApi;
use GuzzleHttp\Client;

// 1. Configure the host and Bearer JWT authorization
$config = Configuration::getDefaultConfiguration()
    ->setHost('https://connect.my-clay.com')
    ->setAccessToken('YOUR_JWT_ACCESS_TOKEN');

// 2. Instantiate the API client
$apiInstance = new SitesApi(new Client(), $config);
$organizationId = 'your-organization-uuid';

try {
    // 3. Fetch sites for your organization
    $result = $apiInstance->getSitesV2($organizationId);
    foreach ($result->getItems() as $site) {
        echo "Site: " . $site->getName() . " (ID: " . $site->getId() . ")\n";
    }
} catch (Exception $e) {
    echo 'Exception when calling SitesApi->getSitesV2: ', $e->getMessage(), PHP_EOL;
}
```

## Documentation

- **[Detailed API Documentation (API_README.md)](API_README.md)**: Generated endpoint list, model schemas, and parameter references.
- Generated endpoint/model markdown docs: `docs/`
- Generated PHP source classes: `lib/`

## Automated Generation & Release

This repository delegates client generation and release tagging to the centralized reusable workflows in `United-Workspace/openapi-sdk-builder`:

- **`Generate Salto KS Client`** (`.github/workflows/generate-client.yml`):
  - Runs automatically on a weekly schedule (Mondays at 06:00 UTC) and can be triggered manually via `workflow_dispatch`.
  - Downloads the latest spec from `https://connect.my-clay.com/swagger/v-latest/swagger.json`, normalizes definitions, generates code, and opens a pull request.
- **`Tag Release`** (`.github/workflows/tag-release.yml`):
  - Runs on merges to `main` to create Git release tags when upstream versions increment.

For local generation instructions and configuration, see [.generator/README.md](.generator/README.md).

## Requirements

- PHP 8.0 or later
- Extensions: `curl`, `json`, `mbstring`

## Development (This Repository)

- Install local dependencies: `composer install`
- Run test suite: `./vendor/bin/phpunit`
