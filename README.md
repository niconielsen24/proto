# proto

Shared Protobuf definitions for the gRPC practice project.

This repo is the single source of truth for the service contract between `api-gateway` and `greeter-service`. Both repos import this as a Go module.

## Structure

```
proto/
├── greeter/
│   └── greeter.proto       # Protobuf service definition
└── gen/
    └── go/
        └── greeter/        # Generated Go code (committed)
```

## Usage

Import the generated Go package in your service or gateway:

```go
import greeter "github.com/your-org/proto/gen/go/greeter"
```

## Regenerating code

Requires `protoc` and the Go plugins:

```bash
protoc --go_out=gen/go --go-grpc_out=gen/go \
  --go_opt=paths=source_relative \
  --go-grpc_opt=paths=source_relative \
  greeter/greeter.proto
```

## Service: Greeter

A simple greeting service used to practice end-to-end gRPC communication across a real deployment.
