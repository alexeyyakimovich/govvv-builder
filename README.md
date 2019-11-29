# govvv-builder
Builder image to assemble go binaries with govvv (https://github.com/ahmetb/govvv)

## Example

```Docker
FROM govvv-builder as builder

WORKDIR /src

COPY . .

RUN govvv build cmd/main.go

########################################################################
FROM scratch

COPY --from=builder src/main /

CMD ["/main"]
```