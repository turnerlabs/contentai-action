# contentai-action

A Github Action for Content AI.

## Inputs

* `args` - **Required**. This is the arguments you want to use for the `contentai` cli


## Environment variables

* `API_KEY` - **Required**. This is your API key required for ContentAI.
* `CONTENTAI_ENV` - **Optional**. ContentAI environment.  Defaults to `prod`.

## Usage Example

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
        with:
          args: deploy my_extractor \
            -e SECRET=$SECRET \
            --cpu 1024 \
            --memory 8192          
        env:
          API_KEY: ${{ secrets.API_KEY }}
```