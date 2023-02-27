#!/usr/bin/env bash

carburator print terminal info "Invoking Hetzner DNS provider..."

# ATTENTION: --preserve-env (or -k) flag forwards domain env from here to provisioner.
# Check if provisioner exists and gives OK response.
carburator provisioner request \
    dns-provider \
    create \
    zone \
    --provider "$DNS_PROVIDER_NAME" \
    --provisioner "$PROVISIONER_NAME" \
    --preserve-env || exit 120
