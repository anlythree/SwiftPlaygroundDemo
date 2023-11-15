// Dictionary就相当于java中的HashMap

// Dictionary构造 构造方式很多，涉及到范性的定义，在尖括号中一定是逗号，在方括号里一定是冒号

// 最完整（老实）的创建方式
var dictionaryCreate1 : Dictionary<String,String> = [:]
// 这样swift也会识别出这是一个Dictionary
var dictionaryCreate2 : [String:String] = [:]
var dictionaryCreate3  = Dictionary<String,String>()
var dictionaryCreate4 = [String:String]()
// 最简单的定义方式,构造的时候尝试放入相同的key会直接报错
var dictionaryCreate5 = ["key1":"value1"]
// 设置预留空间大小为4，用来优化code性能
dictionaryCreate1.reserveCapacity(4)

// 新增或修改 返回值是新增或修改之前的值，类似java里HashMap的put
var updateResult = dictionaryCreate5.updateValue("update1", forKey: "key1")!
print("dictionaryCreate5:\(dictionaryCreate5),updateResult:\(updateResult)")

var updateResult2 = dictionaryCreate5.updateValue("update2", forKey: "key1")!
print("dictionaryCreate5:\(dictionaryCreate5),updateResult:\(updateResult2)")

// 累加
var dictionaryCreate6 = ["苹果Origin":1]
// 如果很确定这里一定不会空指针,可以直接在变量后加!（加了!如果这里真的为空会直接报错Fatal error: Unexpectedly found nil while unwrapping an Optional value）
dictionaryCreate6["苹果Origin"]! += 1
// 如果不确定会不会有值,防止空指针这里可以给一个默认值
dictionaryCreate6["苹果",default: 0] += 4
print("dictionaryCreate6:\(dictionaryCreate6)")

// 删除
// 删除指定key
dictionaryCreate6.removeValue(forKey: "苹果")
print("dictionaryCreate6:\(dictionaryCreate6)")
// 删除所有
dictionaryCreate6.removeAll()
print("dictionaryCreate6:\(dictionaryCreate6)")

// 循环
dictionaryCreate5.updateValue("其实就是西红柿", forKey: "番茄")
for fruitTuple in dictionaryCreate5{
    print("完整Tuple-fruitTuple:\(fruitTuple)")
}
// 只循环key的三种方式(value同理)
// 获取Tuple后.key
for fruitName in dictionaryCreate5{
    print("only fruitName:\(fruitName.key)")
}
// 直接循环Dictionary的keys
for fruitName in dictionaryCreate5.keys{
    print("only fruitName:\(fruitName)")
}
// 只取key值
for (fruitName,_) in dictionaryCreate5{
    print("only fruitName:\(fruitName)")
}



// 小🌰：根据 movieArray 初始化一个可以根据movieName查找movie信息的Dictionary

var movieArray = [(movieName:"沙丘",movieRemark:"奥斯卡提名",movieNo:"0000"),(movieName:"夏洛特烦恼",movieRemark:"有沈腾",movieNo:"0001")]

var movieDict = [String:(movieName:String,movieRemark:String,movieNo:String)]()

for movieDto in movieArray{
    movieDict.updateValue(movieDto, forKey: movieDto.movieName)
}

// 验证结果
print("获取沙丘的信息:\(movieDict["沙丘"]!)")
