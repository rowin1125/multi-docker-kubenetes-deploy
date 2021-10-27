docker build -t stephengrider/multi-client:latest -t rowin1125/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t rowin1125/multi-server:latest -t rowin1125/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t rowin1125/multi-worker:latest -t rowin1125/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push rowin1125/multi-client:latest
docker push rowin1125/multi-server:latest
docker push rowin1125/multi-worker:latest

docker push rowin1125/multi-client:$SHA
docker push rowin1125/multi-server:$SHA
docker push rowin1125/multi-worker:$SHA
