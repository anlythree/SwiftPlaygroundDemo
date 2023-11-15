// set的构造

// 最完整（老实）的创建方式
var setCreate1 :Set<String> = ["1","2"]

// 创建空set
var setCreate2 = Set<String>()

// 创建带有默认值的set
var setCreate3 = Set(["1","2"])
 
// 根据Array创建Set对象(会自动去重)
var arrayCreate1 = Array<String>(["1","2","3","4","4"])
var setCreate4 = Set(arrayCreate1)

print("setCreate4:\(setCreate4)")

// 打印结果：set1:["2", "1"],set2:[],set3:["1", "2"]
// 注意！set是无序的集合，所以set1和set3的值是相同的
print("set1:\(setCreate1),set2:\(setCreate2),set3:\(setCreate3)")

// set的新增 & 修改
// insert 返回的结果是一个对象，inserted返回是否新增成功，memberAfterInsert返回insert执行过后的元素值
var insertResult = setCreate1.insert("inserted item")
print("set1:\(setCreate1),insertResult:\(insertResult)")

var insertResult2 = setCreate1.insert("inserted item")
print("set1:\(setCreate1),insertResult:\(insertResult2)")

// update返回的结果是被修改之前的值
var updateResult = setCreate3.update(with: "updated item")
print("setCreate3:\(setCreate3),updateResult:\(updateResult)")

var updateResult2 = setCreate3.update(with: "updated item")
print("setCreate3:\(setCreate3),updateResult:\(updateResult2)")

// set的删除
// remove 返回的结果是被删除之前的值
var removeResult = setCreate1.remove("1")
print("setCreate1:\(setCreate1),removeResult:\(removeResult)")

var removeResult2 = setCreate1.remove("1")
print("setCreate1:\(setCreate1),removeResult2:\(removeResult2)")

var removeAllResult = setCreate1.removeAll();
print("setCreate1:\(setCreate1),removeAllResult:\(removeAllResult)")
 
