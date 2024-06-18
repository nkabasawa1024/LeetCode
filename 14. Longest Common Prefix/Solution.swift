class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {

        var result = ""
        var tempPrefix = ""
        var tempString = ""

        var count = 1
        var repeatCount = 0
        var addflg:Bool = false

        for str in strs {
            
            if str.count > repeatCount {
                repeatCount = str.count
            }
            print(repeatCount)
        }

        // testcase: strs=["a"]とかの対応
        if strs.count == 1 {
            return strs[0]
        }


        while count <= repeatCount {
            
            var tempString = strs[0].prefix(count)
            
            for str in strs {
                
                if tempString == str.prefix(count){
                    addflg = true
                }else{
                    addflg = false
                    break
                }
            }
            
            if addflg {
                result = String(tempString) //prefixで得られるものはString型ではない？？？
            }
            
            count += 1
            
        }

      return result
    }
}