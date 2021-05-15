class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let max = nums.count
        var newArray = Array<Int>(repeating: 0, count: max)
        for i in 0..<max {
            let index = (i + k) % max
            newArray[index] = nums[i]
        }
        nums = newArray
    }
}
