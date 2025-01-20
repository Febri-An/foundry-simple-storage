# Simple Storage Project

A simple smart contract project built using [Foundry](https://book.getfoundry.sh/) that demonstrates basic Solidity concepts such as state variables, structs, mappings, and functions.

---

## Features
1. Store and retrieve a favorite number.
2. Add people to a list along with their favorite numbers.
3. Query the favorite number of a person by their name.

---

## Prerequisites

Install Foundry by running:
```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

## Setup

Clone the repository:
```bash
git clone https://github.com/Febri-An/foundry-simple-storage.git
cd foundry-simple-storage
```
Install dependencies:
```bash
forge install
```

## Usage
### Running the Tests
To run the unit tests:
```bash
forge test
```
### Formatting Code
Ensure your code is formatted:
```bash
forge fmt
```
### Deploying the Contract
To deploy the contract locally:
```bash
forge script script/DeploySimpleStorage.s.sol --fork-url http://127.0.0.1:8545 --broadcast
```
## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.


