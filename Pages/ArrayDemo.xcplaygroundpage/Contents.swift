// 创建一个Array变量
var phoneList : Array<String> = ["156*******234","132*******434","178*******534","143*******904"]

// 打印结果：电话簿:["156*******234", "132*******434", "178*******534", "143*******904"]
print("电话簿:\(phoneList)")


// 添加
phoneList.insert("添加的电话号", at: 1)

// 打印结果：电话簿:["156*******234", "添加的电话号", "132*******434", "178*******534", "143*******904"]
print("电话簿:\(phoneList)")

// 友好格式打印Array
// 打印结果: 电话薄:156*******234,添加的电话号,132*******434,178*******534,143*******904
print("电话薄:\(phoneList.joined(separator:","))")

// Array的删除
// 指定删除下标为1的
phoneList.remove(at: 1)
print("电话薄:\(phoneList.joined(separator:","))")

// 删除第一个，⚠️当Array中没有元素的时候会报错
phoneList.removeFirst()
print("电话薄:\(phoneList.joined(separator:","))")

// 弹出最后一个（这个方法当Array中没有元素的时候不会报错）
phoneList.popLast()
print("电话薄:\(phoneList.joined(separator:","))")
print("end :)")

// 排序 可以看到是根据字符串类型一个char一个char的去排序的

var numList :Array<Int> = [3,65,2,7,3]
numList.insert(2,at: phoneList.endIndex)
let numList2 = numList.sorted()
print("Int类型Array\(numList2)")
// 排序后翻转
let numList3 = numList.sorted().reversed()

// 打印结果：Int类型ArrayReversedCollection<Array<Int>>(_base: [2, 2, 3, 3, 7, 65])
// 因为这里swift是为了节省内存，并没有开辟新的内存重新创建一个新的Array
// 而是swift根据上边正序的list模拟出了一个反转的list，使用起来跟Array没啥区别
print("反转Int类型Array:\(numList3)")
//当前也可以手动变成Array
print("手动创建反转Array:\(Array(numList3))")
