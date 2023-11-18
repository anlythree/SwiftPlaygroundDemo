// 创建一个自定义的function

// 返回两个数字中比较小的的那个数字
func anlyMin(a: Int, b: Int) -> Int{
    return a < b ? a : b
}

print("min结果",anlyMin(a: 4, b: 34))


// 创建一个能寻找Collection<String>中包含指定字符串的元素

func findContainStr(collection: any Collection<String>, target: String) -> String{
    var resultStr = String.init()
    for indexStr: String in collection{
        if(indexStr.contains(target)){
            resultStr += indexStr + ",";
        }
    }
    return resultStr.isEmpty ? resultStr : String(resultStr.dropLast())
}


var result : String = findContainStr(collection: ["234h","👍","haha","嘻嘻"], target: "h")

print("结果:", result)

