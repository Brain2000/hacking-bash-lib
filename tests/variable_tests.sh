#!/bin/bash -u

source ../usr/lib/hacking-bash.sh

DEBUG="true"
#LOGGING=""

function test_run_echo_return
{
	MSG="\"${1}\" = "
	$(${1}) && MSG+="true" || MSG+="false"
	echo "${MSG}"
}

unset SOME_NONEXISTANT_VAR
SOME_EMPTY_VAR=""
SOME_SET_VAR="hello!"

test_run_echo_return "is_defined   SOME_NONEXISTANT_VAR"
test_run_echo_return "is_defined   SOME_EMPTY_VAR"
test_run_echo_return "is_defined   SOME_SET_VAR"

test_run_echo_return "is_undefined SOME_NONEXISTANT_VAR"
test_run_echo_return "is_undefined SOME_EMPTY_VAR"
test_run_echo_return "is_undefined SOME_SET_VAR"

test_run_echo_return "is_defined_and_set    SOME_NONEXISTANT_VAR"
test_run_echo_return "is_defined_and_set    SOME_EMPTY_VAR"
test_run_echo_return "is_defined_and_set    SOME_SET_VAR"

test_run_echo_return "is_undefined_or_unset SOME_NONEXISTANT_VAR"
test_run_echo_return "is_undefined_or_unset SOME_EMPTY_VAR"
test_run_echo_return "is_undefined_or_unset SOME_SET_VAR"


