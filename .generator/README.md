# Salto KS API Client Generator

This client SDK is maintained and automatically updated using the centralized [OpenAPI SDK Builder](https://github.com/United-Workspace/openapi-sdk-builder) framework.

---

## Architecture Overview

```
.
├── .gitattributes                     # Strips generator/dev files from Composer archives
├── .openapi-generator-ignore          # Protects manually maintained files (composer.json, README.md)
├── .github/workflows/
│   ├── generate-client.yml            # Calls United-Workspace/openapi-sdk-builder (weekly & manual)
│   └── tag-release.yml                # Calls United-Workspace/openapi-sdk-builder (release tagging)
└── .generator/
    ├── openapi-config.json            # Generator options (namespaces, PHP settings)
    ├── enrichments.json               # Declarative enrichments (missing enums, discriminator mappings)
    └── swagger.json                   # Reference copy of the upstream API specification
```

---

## 1. Automated GitHub Actions Workflows

This repository delegates its generation and release tagging entirely to the centralized reusable workflows in `United-Workspace/openapi-sdk-builder`:
- **`generate-client.yml`**: Fetches the spec from `https://connect.my-clay.com/swagger/v-latest/swagger.json`, normalizes invalid schema definitions, executes `openapi-generator-cli`, and opens a pull request.
- **`tag-release.yml`**: Automatically pushes a Git version tag when PRs are merged into `main`.

---

## 2. Local Generation

You can run local generation against this repository using the helper script or framework CLI:

```bash
# Using local helper script:
./.generator/generate-local.sh

# Or directly using openapi-sdk-builder:
../openapi-sdk-builder/bin/generate.sh \
  --target-dir="$PWD" \
  --lang=php \
  --version=v7.13.0 \
  --skip-validate
```
