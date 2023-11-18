// String.index

let emojis : String = "👨‍👩‍👧‍👦说水果🍉🍑好吃👍👍🏻"

public func printStringInfo(_ string: String){
    print("Str:\(string),字数：\(string.count)")
    for strIndex in string.indices{
        let word = string[strIndex]
        print(word,"包含",word.unicodeScalars.count,"个Unicode字符")
    }
}

printStringInfo(emojis)

// 打印最后的字符
print("打印最后的字符:",emojis[emojis.index(before: emojis.endIndex)])

// 创建一个为nai的String对象
var a : String?

// 如果是空就返回??之后的字符串
print("测试非空",a ?? "haha")

// string的offset方法
// 第一个参数是开始移动的点，第二个参数是要移动几位
print("第一位字符",emojis[emojis.startIndex])
var offsetStr = emojis[emojis.index(emojis.startIndex,offsetBy:3)]
print("后移3位的字符",offsetStr)

// 上边的方法有缺陷：如果整个字符串的长度不到1+3=4位的话，就会下标越界，所以可以用下边的方法

var offsetStrWithLimited = 
emojis[
    emojis.index(
        emojis.startIndex,
        offsetBy: 19,
        limitedBy: emojis.endIndex
    )
    ??
    (emojis.startIndex)
]
print("swift中String的index返回的并不是第几个字符，而是第几个bit开始的，例如开始的index是:",emojis.startIndex)
print("截取第7位（不存在）的字符",offsetStrWithLimited)
