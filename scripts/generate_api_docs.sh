#!/bin/sh

# pyinfra
# File: scripts/generate_api_docs.sh
# Desc: use sphinx-apidoc and remove the facts/modules which are not autogenerated


# Autodoc the API reference
sphinx-apidoc -e -M -f -o docs/apidoc/ pyinfra/

# Remove fluff
rm -f \
    docs/apidoc/modules.rst \
    docs/apidoc/pyinfra.rst \
    docs/apidoc/pyinfra.api.rst \
    docs/apidoc/pyinfra.version.rst \
    docs/apidoc/pyinfra.facts* \
    docs/apidoc/pyinfra.modules*
