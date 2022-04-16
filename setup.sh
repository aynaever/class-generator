#!/bin/bash
# File              : setup.sh
# Author            : Aymane N <anaouadi@students.42wolfsburg.de>
# Date              : 16.04.2022
# Last Modified Date: 16.04.2022
# Last Modified By  : Aymane N <anaouadi@students.42wolfsburg.de>

bash -c "./class.sh $@"

for var in $@
do
	# Get the class name in Capitalized from filename
	classC=${var^}
	FILES="$FILES ${classC}.cpp"
done

echo -e \
	"\nNAME = main\n\
CFILES = main.cpp $FILES\n\
FLAGS = -Wall -Werror -Wextra -std=c++98\n\n\
all:\n\
	c++ \$(CFILES) -o \$(NAME)\n\n\
run: all\n\
	./\$(NAME)\n\n\
clean:\n\
	rm -rf *.o\n\n\
fclean: clean\n\
	rm -rf \$(NAME)\n\n\
re: fclean all\n\n\
.PHONY: clean fclean re all\
" > Makefile

# Add Header to Makefile
nvim -c "AddHeader" -c wq Makefile
