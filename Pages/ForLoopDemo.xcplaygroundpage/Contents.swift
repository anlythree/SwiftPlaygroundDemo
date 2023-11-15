// for循环

// 简单demo 这里的num默认是一个let变量
for num in 0...5{
    print(num)
}

// 多层循环，这里以双层循环举例
let personList :Array<String> = ["小花","小白" , "小菜"]

let workList :Array<String> = ["领资料","调研","写代码"]

// swift的break可以选择break掉哪个循环
// : for 前边的名字就是当前循环的名称，根据名称可以使用continue、break、return掉哪个循环
workFor : for workIndex in workList{
    personFor : for persionIndex in personList{
        print("\(persionIndex)开始做\(workIndex)")
        if(persionIndex == "小白"){
            break personFor
        }
    }
    print("工作结束")
}
