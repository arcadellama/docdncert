#!/usr/bin/env sh

LE_EMAIL="${LE_EMAIL:-}"

if [ -n "$LE_EMAIL" ]; then
    if ! /usr/local/bin/acme.sh --register-account -m "$LE_EMAIL"; then
        echo "Error: Unable to register account with acme.sh." >&2
        exit 1
    fi
else
    echo "Error: LE_EMAIL not defined." >&2
    exit 1
fi
