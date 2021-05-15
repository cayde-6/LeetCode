class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        var indx = 1
        for i in 1..<nums.count {
            if nums[i-1] != nums[i] {
                nums[indx] = nums[i]
                indx += 1
            }
        }
        return indx
    }
}
