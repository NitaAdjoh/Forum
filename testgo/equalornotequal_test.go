package problems

import "testing"
func TestThreeEqualNumbers(t *testing.T) {
	t.Log("Given three numbers are equal")
	t.Logf("\tWhen we make a call to EqualOrNotEqual(%d,%d,%d)",1,1,1)
	isThreeNumbersEqual := EqualOrNotEqual(1, 1, 1)
	if isThreeNumbersEqual {
		t.Log("\tThen we should get",isThreeNumbersEqual)
	}else{
		t.Error("\tExpected true, got ", isThreeNumbersEqual)
	}
}