#!/bin/bash

# Check Cpp files for linting errors
check_linting_errors()
{
	echo "Check Cpp files for linting erros......"
	if find . -name '*.cpp' -o -name '*.hpp' | clang-format -Werror --dry-run --style=webkit;
	then 
		echo "No linting errors were found!"
		exit 0
	fi
}


# Fix all the linting errors inplace if the "FIXIT" keyword mentioned in the commit message
fix_linting_errors()
{
	check_linting_errors

	# Fix all the errors inplace using -i option
	if find . -name '*.cpp' -o -name '*.hpp' | xargs clang-format -Werror -i --style=webkit
	then
		echo "All errors were resolved"
	else
		echo "Not all errors were resolved, please double check!"
		exit 1
	fi
}

if [ "$*" = "FIXIT" ];
then
	fix_linting_errors
else
	check_linting_errors
fi
