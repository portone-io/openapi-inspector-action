# OpenAPI Inspector for GitHub Action
This action validates the changes between two OpenAPI specifications,
with a particular focus on backward-compatibility and style conventions.

## Inputs
* `original-spec`: The path of the original OpenAPI yaml file.
* `changed-spec`: The path of the changed OpenAPI yaml file.

## Example
```
jobs:
  diff-openapi:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Original
        uses: actions/checkout@v3
        with:
         path: 'original'
         ref: ${{ github.base_ref || 'main' }}

      - name: Checkout Changed
        uses: actions/checkout@v3
        with:
          path: 'changed'

      - uses: portone-io/openapi-inspector-action@v0.2.0
        with:
          original-spec: 'original/your/spec/path/openapi.yml'
          changed-spec: 'changed/your/spec/path/openapi.yml'
```
