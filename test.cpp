#include <criterion/criterion.h>
#include "double_integer.hpp"

Test(double_integer, returns_doubled_input) {
    int32_t input = 5;
    int32_t expected_output = 10;

    int32_t result = double_integer(input);

    cr_assert_eq(result, expected_output, "Input: %d, Expected Output: %d, Got: %d", input, expected_output, result);
}
