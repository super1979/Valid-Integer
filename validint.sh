# Name: Tay How Yang Gilbert 
# Student ID: 10512374
#!/bin/bash

# while loop to repeat the input process until the user enters a valid value
while true; do

    read -p "Enter an integer that is greater than or equal to 200 but less than or equal to 299: " input # prompts user to enter a valid value and stores the value in the variable 'input'

    if [[ -n $input ]] && [[ $input =~ ^[0-9]+$ ]] && [[ $input -ge 200 ]] && [[ $input -le 299 ]]; then # checks for 1) empty input 2) non-numeric characters 3) value between 200 and 299 inclusive
        break # exits the while loop
    fi
    
    echo "You have entered $input and it is not a valid integer. Please try again." # tells the user the value he has entered and the value is invalid. Prompts the user to try again 
done

echo "A valid input of $input has been made." # tells the user the value he has entered and the value is valid

exit 0