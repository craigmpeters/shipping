build:
	GOOS=linux GOARCH=amd64 go build -o ${GOPATH}/src/shipping/consignment-cli/bin/consignment-cli shipping/consignment-cli
	GDOS=Linux GOARCH=amd64 go build -o ${GOPATH}/src/shipping/consignment-service/bin/consignment-service shipping/consignment-service
	GDOS=Linux GOARCH=amd64 go build -o ${GOPATH}/src/shipping/vessel-service/bin/vessel-service shipping/vessel-service
	docker build -t consignment-cli consignment-cli
	docker build -t consignment-service consignment-service
	docker build -t vessel-service vessel-service