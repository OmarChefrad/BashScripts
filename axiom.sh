#!/bin/bash

# Define the set of possible outcomes Ω
Omega=(1 2 3 4 5 6)

# Define a function to check if an event is in the set A
is_in_set() {
    local event=$1
    for e in "${A[@]}"; do
        if [ "$e" -eq "$event" ]; then
            return 0  # Event is in the set A
        fi
    done
    return 1  # Event is not in the set A
}

# Axiom: If two events A and B can occur, then A ∩ B can occur.
# Example: A = {2, 4}, B = {4, 6}
A=(2 4)
B=(4 6)

echo "Axiom: If two events A and B can occur, then A ∩ B can occur."
echo "Example: A = {2, 4}, B = {4, 6}"

for event in "${Omega[@]}"; do
    is_in_set "$event"
    in_A=$?
    is_in_set "$event" "${B[@]}"
    in_B=$?

    if [ "$in_A" -eq 0 ] && [ "$in_B" -eq 0 ]; then
        echo "Event $event is in A ∩ B"
    else
        echo "Event $event is not in A ∩ B"
    fi
done
