#!/bin/bash

# Check if 'bc' command is installed
if ! command -v bc &> /dev/null
then
    echo "Error: 'bc' could not be found. Please install it to proceed."
    exit 1
fi

# Prompt user to enter the temperature in Celsius
echo -n "Masukkan suhu dalam Celcius: "
read celcius

# Validate that input is a number (positive, negative, or decimal)
if ! [[ "$celcius" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]
then
    echo "Error: Input harus berupa angka."
    exit 1
fi

# Convert Celsius to Fahrenheit
fahrenheit=$(echo "scale=2; ($celcius * 9 / 5) + 32" | bc)

# Display the result
echo "$celcius derajat Celcius sama dengan $fahrenheit derajat Fahrenheit."
