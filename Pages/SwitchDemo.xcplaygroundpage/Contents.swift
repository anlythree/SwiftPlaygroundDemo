// switch一定要包含所有的情况，否则在编译期间会报错，通常会先加一个default来实现
// 这样写起来不会右边一直爆红
// 创建一个用于swith判断的变量
var name: String = "西猫"

// 声明
switch name{
case "haha":
    print("这是\(name)")
case "西":
    // 如果什么都不做需要显式的使用break，来直接忽略下边的case,即跳出整个switch
    break
case "西猫":
    print("找到西猫了")
    // fallthrough 的意思是直接跳到下一个case
    fallthrough
default:
    print("\(name)不匹配所有，打印默认值")
}


// 可以搭配Range来匹配范围
var temperature = 26

switch(temperature){
case 30...:
    // 大于等于30度
    print("炎热")
case 20...:
    // 大于等于20度，小于30度
    print("较舒适")
case 10...:
    // 大于等于10度，小于20度
    print("寒冷")
default:
    // 小于10度
    print("过冷")
}


// 搭配Tuple使用
// 创建一个用于switch的Tuple,注意Tuple的定义
var userTuple = (name: "王木木", age: 27)

switch(userTuple){
case (_,40...):
    // swift中经常会出现 _ ,这个表示忽略这个入参的意思
    print("高龄用户")
case(let name1,let age1):
    // switch中可以这样在case中定义变量，并且在下边去使用
    print("叫\(name1)的\(age1)岁的用户")
    // 使用fallthrough来直接跳到下一个case的时候要注意：下边case的变量名要跟当前这个变量的名称相同，就像这个name1一样，要上下保持一致
    fallthrough
case(let name1,...30) where name1.hasPrefix("王"):
    // case中只能写String类型，不能写Boolen类型去匹配
    // 可以在where中加Boolen类型去匹配，case和where的条件关系是 并且
    if(name1 == "王木木"){
        // switch中是可以写if的
        print("名字叫王木木的适龄用户")
    }
    print("姓王的适龄用户")
default:
    print("非目标用户")
}


print("end :)")
