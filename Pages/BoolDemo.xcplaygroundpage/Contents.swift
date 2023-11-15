// 布尔值
let isAdult = true

// swift也是支持三目运算符的
let name: String = "vip"
let targetBool = name == "vip" ? "vip你好" : "你好"
print(targetBool)

// string的常用方法
var stringDemo: String = "str"
print("打印字符串:\(stringDemo)")

//是不是空字符串,这里的isEmpty碰到nil会报错的!
print("是不是空字符串\(stringDemo.isEmpty)")

//是不是s开头的
print("是不是s开头的:\(stringDemo.hasPrefix("s"))")

// 是不是s结尾的
print("是不是s结尾的:\(stringDemo.hasSuffix("s"))")

