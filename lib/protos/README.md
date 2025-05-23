# Keymapp gRPC Communication Code

## Source
This file (keymapp.proto) is from https://github.com/zsa/kontroll.

## License
[MIT License](https://github.com/zsa/kontroll/blob/main/LICENSE)

[Copyright (c) 2024 ZSA Technology Labs](https://github.com/zsa/kontroll/blob/main/LICENSE)

## Generating dart code

While in the lib folder type the following to generate valid dart code:
```
protoc --dart_out=grpc:generated -Iprotos protos/keymapp.proto
```