#!/bin/bash
echo
echo "-------------------------------"
echo "Running tests for"
echo "-------------------------------"
echo

$(./test 2> test_out)
output=$(cat test_out)
echo $output
expected_output="Passing: 1"

if [ $? -eq 0 ]; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit -1
fi

if grep -Fq "$expected_output" test_out; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output' but got: $output"
  exit -1
fi

echo
echo "Result of test"
echo "All tests passed."
echo
exit 0
