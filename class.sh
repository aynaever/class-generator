#!/bin/bash
# File              : class.sh
# Author            : Aymane N <anaouadi@students.42wolfsburg.de>
# Date              : 15.04.2022
# Last Modified Date: 15.04.2022
# Last Modified By  : Aymane N <anaouadi@students.42wolfsburg.de>

for var in $@
do
	classU=${var^^}
	classC=${var^}

	echo -e \
		"\n#ifndef	${classU}_HPP\n\
#ifdef	${classU}_HPP\n" >> $classC.hpp

	echo -e \
		"class	${classC}\n\
{\n\
private:\n\
public:\n\
\t${classC} ( void );\n\
\t~${classC} ( void );\n\
\t${classC} ( const ${classC}& ${classC,,} );\n\
\t${classC} operator=( const ${classC}& ${classC,,} );\n\
}\n" >> $classC.hpp

	nvim -c "AddHeader" -c wq $classC.hpp
	nvim -c "AddHeader" -c wq $classC.cpp
done
