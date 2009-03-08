#! /bin/sh

# Testbed for TODO.txt CLI todo.sh script.

# Usage:  set the test configuration file below and start with empty todo.txt and done.txt files

TEST_CFG='~/todo.cfg'

run()
{
    echo "$@"
    "$@"
    echo
    echo '====================================='
}

run ./todo.sh -d $TEST_CFG add "notice the daisies"
run ./todo.sh -d $TEST_CFG list

run ./todo.sh -d $TEST_CFG replace adf asdfa

run ./todo.sh -d $TEST_CFG replace 1 "smell the cows"
run ./todo.sh -d $TEST_CFG list

run ./todo.sh -d $TEST_CFG replace 1 smell the roses
run ./todo.sh -d $TEST_CFG list

run ./todo.sh -d $TEST_CFG replace 1 smell the uppercase Roses
run ./todo.sh -d $TEST_CFG list

run ./todo.sh -d $TEST_CFG list roses

run ./todo.sh -d $TEST_CFG add notice the sunflowers
run ./todo.sh -d $TEST_CFG list

run ./todo.sh -d $TEST_CFG append 1 p:flowers @outside
run ./todo.sh -d $TEST_CFG list

run ./todo.sh -d $TEST_CFG add "stop"
run ./todo.sh -d $TEST_CFG list

run ./todo.sh -d $TEST_CFG pri B B

run ./todo.sh -d $TEST_CFG pri 1 B
run ./todo.sh -d $TEST_CFG list

run ./todo.sh -d $TEST_CFG -p list

run ./todo.sh -d $TEST_CFG pri 2 C
run ./todo.sh -d $TEST_CFG -p list

run ./todo.sh -d $TEST_CFG pri 2 A
run ./todo.sh -d $TEST_CFG -p list

run ./todo.sh -d $TEST_CFG pri 2 a
run ./todo.sh -d $TEST_CFG -p listpri

run ./todo.sh -d $TEST_CFG add "smell the coffee p:wakeup"
run ./todo.sh -d $TEST_CFG -p list

run ./todo.sh -d $TEST_CFG -p list p:flowers

run ./todo.sh -d $TEST_CFG -p list flowers

run ./todo.sh -d $TEST_CFG -p list flowers out

run ./todo.sh -d $TEST_CFG do 2
run ./todo.sh -d $TEST_CFG -p list

run ./todo.sh -d $TEST_CFG add "make the coffee p:wakeup"
run ./todo.sh -d $TEST_CFG -p list coffee

run ./todo.sh -d $TEST_CFG add "visit http://example.com"

run ./todo.sh -d $TEST_CFG -p list

run ./todo.sh -d $TEST_CFG archive
run ./todo.sh -d $TEST_CFG -p list
run ./todo.sh -d $TEST_CFG report

run ./todo.sh -d $TEST_CFG report


run ./todo.sh -d $TEST_CFG append g a
run ./todo.sh -d $TEST_CFG append 2 and think

run ./todo.sh -d $TEST_CFG -p list

run ./todo.sh -d $TEST_CFG pri 2 C
run ./todo.sh -d $TEST_CFG replace  10 "hej!"

run ./todo.sh -d $TEST_CFG -p list

run ./todo.sh -d $TEST_CFG append 10 "hej!"
run ./todo.sh -d $TEST_CFG -p list


run ./todo.sh -d $TEST_CFG do 10
run ./todo.sh -d $TEST_CFG -p list

run ./todo.sh -d $TEST_CFG add "the coffee p:wakeup"
run ./todo.sh -d $TEST_CFG -p list

run ./todo.sh -d $TEST_CFG prepend 6 "make"
run ./todo.sh -d $TEST_CFG -p list

run ./todo.sh -d $TEST_CFG remdup
run ./todo.sh -d $TEST_CFG -p list

exit 0
