[![](https://images.microbadger.com/badges/image/alexeyyakimovich/govvv-builder.svg)](https://microbadger.com/images/alexeyyakimovich/govvv-builder "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/commit/alexeyyakimovich/govvv-builder.svg)](https://microbadger.com/images/alexeyyakimovich/govvv-builder "Get your own commit badge on microbadger.com")

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