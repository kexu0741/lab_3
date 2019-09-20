#!/bin/bash
# Authors : Kevin Xu
# Date: 9/20/2019

#Problem 1 Code:
#reading and saving filename/regEx
echo "Enter file name:"
read fileName
echo "Enter regular expression:"
read exp

#executes grep of user input
grep exp fileName

#looks for matches to phone number format (3digit-3digit-4digit), each digit 1-9
grep -c -E '([[:digit:]])([- ][[:digit:]]{3}[- ][[:digit:]]{4}|[[:digit:]]{7})$' "regex_practice.txt" 

#looks for matches to email format (any @any.com)
grep -c -E '.+[@].+[.]com$' "regex_practice.txt"

#same exp as phone number, with first three digits hard coded (303)
grep -E '(303)([- ][[:digit:]]{3}[- ][[:digit:]]{4}|[[:digit:]]{7})$' "regex_practice.txt"

#similar to previous email expression, with @geocities.com ending hardcoded
#writes to email_results.txt
grep -E '.+@geocities[.]com$' "regex_practice.txt" >> email_results.txt







