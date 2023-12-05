#!/bin/bash

# Function to perform Bubble Sort
bubbleSort() {
    local arr=("$@")
    local n=${#arr[@]}

    for ((i = 0; i < n-1; i++)); do
        for ((j = 0; j < n-i-1; j++)); do
            if ((arr[j] > arr[j+1])); then
                # Swap arr[j] and arr[j+1]
                temp=${arr[j]}
                arr[j]=${arr[j+1]}
                arr[j+1]=$temp
            fi
        done
    done

    echo "${arr[@]}"
}

# Example usage
numbers=(5 3 7 2 8 1)

echo "Original array: ${numbers[@]}"
sortedArray=($(bubbleSort "${numbers[@]}"))
echo "Sorted array: ${sortedArray[@]}"

