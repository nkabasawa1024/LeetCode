import Cocoa

var greeting = "Hello, playground"

//problem14. Longest Common Prefix

/*
 Input: strs = ["flower","flow","flight"]
 Output: "fl"
 
 Input: strs = ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
 */

/*
 この問題で学んだこと
 String.prefixの使い方
 
 var a = "flow"
 
 .prefix 先頭から何文字とるか
 var a = "flow"
 a.prefix(1) -> "f" String型
 a.prefix(2) -> "fl"
 
 じゃあ、文字列より長いものを指定すると？
 a.prefix(10) -> "flow" となる
 
 
 */

var strs = ["flower","flow","flight"]

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


while count < repeatCount {
    
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

print(result)



