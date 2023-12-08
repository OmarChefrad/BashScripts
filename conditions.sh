# if condition
if [ condition ]; then
    # Code to execute if the condition is true
fi

#if else condition
if [ condition ]; then
    # Code to execute if the condition is true
else
    # Code to execute if the condition is false
fi
#elif condition
if [ condition1 ]; then
    # Code to execute if condition1 is true
elif [ condition2 ]; then
    # Code to execute if condition2 is true
else
    # Code to execute if all conditions are false
fi
#########################################
#!/bin/bash

score=75

if [ $score -ge 90 ]; then
    echo "Grade: A"
elif [ $score -ge 80 ]; then
    echo "Grade: B"
elif [ $score -ge 70 ]; then
    echo "Grade: C"
else
    echo "Grade: F"
fi
