# SMTLIBParser-Test

## Requirements
```
cmake > 2.8.12
sudo apt update
sudo apt install pkg-config
sudo apt install libboost-all-dev
sudo apt install libgmp-dev
```

## Update SMTLIBParser
Submodule init:
```
git submodule update --init --recursive
```
Submodule update:
```
git submodule update --remote --merge
```

## Run Command
```
mkdir build && cd build
cmake ..
make -j12
./SMTLIBParser_Test ../test/1.smt2
```
