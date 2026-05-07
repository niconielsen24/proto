PROTO_DIR   := greeter
OUT_DIR     := gen/go

.PHONY: generate clean

generate:
	protoc \
		--go_out=$(OUT_DIR) \
		--go_opt=paths=source_relative \
		--go-grpc_out=$(OUT_DIR) \
		--go-grpc_opt=paths=source_relative \
		$(PROTO_DIR)/*.proto

clean:
	rm -rf $(OUT_DIR)/$(PROTO_DIR)
