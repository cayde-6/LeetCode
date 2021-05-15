class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var i = 0
        var j = 0
        var result = [Int]()
        var num1 = nums1
        num1.sort()
        var num2 = nums2
        num2.sort()
        
        while i < num1.count && j < num2.count {
            if num1[i] > num2[j] {
                j += 1
            } else if num1[i] < num2[j] {
                i += 1
            } else {
                result.append(num1[i])
                i += 1
                j += 1
            }
        }
        return result
    }
}
