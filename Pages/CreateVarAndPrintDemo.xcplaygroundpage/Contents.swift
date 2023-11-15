// Comment （注释跟java一样）

// 创建常量、变量
let finalField : String = "a"

// swift可以自己猜测类型，但是很不推荐，他可能猜错，haha
var finalField2 : Int = 1

// swift可以像java一样只创建先不赋值，比如：
let number2: Int
print(finalField2)

// 修改变量
finalField2 = 2
print(finalField2)

// debug
number2 = 3
print(number2)

// 打招呼
let name = "anlythree"
let location = "hangzhou"
print("hello " + name)

//separator标识分隔符，terminator标识结尾字符串，但是这样是没有换行效果的
print("hello", name , "from", location , separator: "---", terminator: "!!!")
print("")

//反斜线加（）会让swift识别为变量
print("hello \(name) from \(location)")


// 作业：定义三个变量，分别代表年、月、日，假设今天是2022年8月5日，然后打印今天的日期，再修改变量打印明天的日期

let year: Int = 2022
let month: Int = 8
var day: Int = 5

print("今天的日期是\(year)年\(month)月\(day)日")
day = 6
print("明天的日期是\(year)年\(month)月\(day)日")

