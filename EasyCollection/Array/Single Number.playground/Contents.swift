class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var addedDict = [Int: Int]()
        var value = 0
        for i in nums {
            value = addedDict[i] ?? 0
            value += 1
            addedDict[i] = value
        }
        addedDict = addedDict.filter({ $0.value == 1})
        return addedDict.first?.key ?? 0
    }
}
