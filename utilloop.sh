#!/bin/bash

echo "Welcome to the Train Ticket Booking System"

until [[ $age -ge 5 && $age -le 100 ]]; do
    read -p "Please enter your age: " age

    if [[ $age -lt 5 ]]; then
        echo "Children under 5 years old travel for free. Please enter a valid age."
    elif [[ $age -gt 100 ]]; then
        echo "Sorry, but you may not be eligible for this service. Please enter a valid age."
    fi
done

echo "Thank you for providing a valid age. You are eligible to book a train ticket."
# Additional logic for booking the train ticket can be added here

