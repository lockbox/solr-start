#!/bin/bash
set -e

# for all documents in /initial_data, post to the database
find /initial_data -iname "*" -exec solr post -c data-store {} -params "literal.id=$(basename {})" \;
