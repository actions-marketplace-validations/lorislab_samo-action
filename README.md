# samo-action

Github action for [samo](https://github.com/lorislab/samo).

Samo build utility. 
```yaml
name: release
on:
  push:
    tags:
      - '**'
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - name: Project version
        uses: lorislab/samo-action@v1
        with:
          args: project version
```
