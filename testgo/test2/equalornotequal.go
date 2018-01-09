package problems_test

import (
  "testing"
  . "github.com/shekhargulati/problems"
)

func TestThreeEqualNumbers(t *testing.T) {
	isThreeNumbersEqual := EqualOrNotEqual(1, 1, 1)
	if !isThreeNumbersEqual {
		t.Error("\tExpected true, got ", isThreeNumbersEqual)
	}
}