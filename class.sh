#!/bin/bash
# File              : class.sh
# Author            : Aymane N <anaouadi@students.42wolfsburg.de>
# Date              : 15.04.2022
# Last Modified Date: 15.04.2022
# Last Modified By  : Aymane N <anaouadi@students.42wolfsburg.de>

for var in $@
do
	nvim -c "AddHeader" -c wq $var.hpp
	nvim -c "AddHeader" -c wq $var.cpp
done
