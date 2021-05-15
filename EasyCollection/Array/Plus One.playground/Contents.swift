class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        func updatePrevious(_ digits: inout [Int], number: Int) {
            if digits[number] == 9 {
                digits[number] = 0
                if number == 0 {
                    digits.insert(1, at: 0)
                } else {
                    updatePrevious(&digits, number: number - 1)
                }
            } else {
                digits[number] += 1
            }
        }
    
        var numbers = digits
        updatePrevious(&numbers, number: numbers.count - 1)
        return numbers
    }
}
