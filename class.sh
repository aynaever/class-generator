#!/bin/bash
# File              : class.sh
# Author            : Aymane N <anaouadi@students.42wolfsburg.de>
# Date              : 15.04.2022
# Last Modified Date: 15.04.2022
# Last Modified By  : Aymane N <anaouadi@students.42wolfsburg.de>

for var in $@
do
	# Get the class name in Uppercase and Capitalized from filename
	classU=${var^^}
	classC=${var^}

	# Write in the header file the definition guards
	echo -e \
		"\n#ifndef	${classU}_HPP\n\
#ifdef	${classU}_HPP\n" >> $classC.hpp

	# Write in the header file the class Definition
	echo -e \
		"class	${classC}\n\
{\n\
private:\n\t\n\
public:\n\
\t${classC} ( void );\n\
\t~${classC} ( void );\n\
\t${classC} ( const ${classC}& ${classC,,} );\n\
\t${classC} operator=( const ${classC}& ${classC,,} );\n\
}\n" >> $classC.hpp

	# Write in the .cpp file the function implementation
	echo -e \
"\n${classC}::${classC} ( void ) { }\n\
${classC}::~${classC} ( void ) { }\n\
${classC}::${classC} ( const ${classC}& ${classC,,} ) { }\n\
${classC}::${classC} operator=( const ${classC}& ${classC,,} ) { }\n\n\
}" >> $classC.cpp

	# Add headers both in .hpp and .cpp files
	nvim -c "AddHeader" -c wq $classC.hpp
	nvim -c "AddHeader" -c wq $classC.cpp
done
