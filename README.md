# samo-action

Github action for [samo](https://github.com/lorislab/samo).

## Outputs

## `stdout`

The command output.

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
        id: version
        uses: lorislab/samo-action@v1
        with:
          args: samo project version
      - name: Use the value
        id: step_two
        run: |
          echo "${{ steps.version.outputs.stdout }}"
```

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
        id: version
        uses: lorislab/samo-action@v1
        with:
          entrypoint: samo
          args: project version
```