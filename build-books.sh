#!/bin/bash

echo "==============================="
echo "Building all mdBook projects"
echo "==============================="

# Build root mdBook (if any)
mdbook build

BOOKS=("aws" "aws-hands-on" "cpp" "javascript" "mssql" "python")

for B in "${BOOKS[@]}"; do
  echo
  echo "-------------------------------"
  echo "Building $B"
  echo "-------------------------------"

  cd "md-code/$B" || exit 1
  mdbook build
  cd - > /dev/null
done

echo
echo "==============================="
echo "All mdBooks built successfully"
echo "==============================="
