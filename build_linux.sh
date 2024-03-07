#!/bin/bash
echo "On Ubuntu, you have to install (via apt):"
echo "  * cmake"
echo "  * ninja-build"
echo "  * build-essential"
echo "  * libboost1.83-all-dev"
echo "  * libboost-system-dev"
echo "  * libboost-thread-dev"
echo "  * libboost-program-options-dev"
echo "  * libboost-test-dev"
echo "  * libboost-filesystem-dev"
echo "  * unixodbc-dev"
echo "  * libprotobuf-dev"
echo "  * libssl-dev"
echo "  * libgrpc-dev"
echo "  * libgrpc++-dev"
echo "  * protobuf-compiler-grpc"
echo "  * rapidjson-dev"
mkdir build
echo "Executing cmake"
cmake -GNinja -B build -S .
cmake --build build
