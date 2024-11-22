#!/bin/bash

echo "-----------------------------------------------------------------------------"
curl -s https://raw.githubusercontent.com/BidyutRoy2/BidyutRoy2/main/logo.sh | bash
echo "-----------------------------------------------------------------------------"

# Install git and screen
sudo apt update
sudo apt install -y git screen

# Download the verifier and config file
wget https://github.com/Glacier-Labs/node-bootstrap/releases/download/v0.0.1-beta/verifier_linux_amd64
wget https://glacier-labs.github.io/node-bootstrap/config.yaml

# Open the config.yaml file for editing with nano
nano config.yaml

# Insert the example YAML content into the config.yaml file Your EVM Wallet Private Key

cat <<EOL > config.yaml
Http:
  Listen: "127.0.0.1:10801"
Network: "testnet"
RemoteBootstrap: "https://glacier-labs.github.io/node-bootstrap/"
Keystore:
  PrivateKey: "YourPrivateKey"
TEE:
  IpfsURL: "https://greenfield.onebitdev.com/ipfs/"
EOL

echo "Example YAML content has been written to config.yaml."
