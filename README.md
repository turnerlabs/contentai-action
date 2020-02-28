contentai-action
================

A Github Action for Content AI.

### Usage

```yaml
name: cicd
on:
  push:
    branches:
      - master
jobs:
  cicd:
    name: builds and deploys an extractor to ContentAI
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - uses: turnerlabs/contentai-action@master
        name: Deploy to ContentAI
        env:
          SECRET: ${{ secrets.SECRET }}
        run: deploy my_extractor \
            -e SECRET=$SECRET \
            --cpu 1024 \
            --memory 8192
```