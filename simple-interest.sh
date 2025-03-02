#!/bin/bash

# Simple Interest Calculator
# Formula: Interest = Principal × Rate × Time

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 Principal InterestRate(%) Time(years)"
    exit 1
fi

principal=$1
rate=$2
time=$3

interest=$(echo "$principal * $rate * $time / 100" | bc -l)
total=$(echo "$principal + $interest" | bc -l)

echo "Principal: $principal"
echo "Rate: $rate%"
echo "Time: $time 年"
echo "Interest: $interest"
echo "TotalAmount: $total"
