PHONY: generate
generate:
	mkdir -p pkg/calendar_v1
	protoc --proto_path api/calendar_v1 \
		   --go_out=pkg/calendar_v1 --go_opt=paths=import \
		   --go-grpc_out=pkg/calendar_v1 --go-grpc_opt=paths=import \
		   api/calendar_v1/calendar.proto
	mv pkg/calendar_v1/github.com/almira-galeeva/calendar/pkg/calendar_v1/* pkg/calendar_v1
	rm -rf pkg/calendar_v1/github.com