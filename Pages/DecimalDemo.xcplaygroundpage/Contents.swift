// Decimal类型, 使用的时候需要引入这个Foundation包
import Foundation

// 为什么需要使用Decimal？因为常规的double类型是有精度丢失的，🌰：
let sum: Double = 0.1 + 0.2

// 为什么会精度丢失？因为内存中double是用二进制来记录十进制的数字的
// 结果是：0.30000000000000004。而不是0.3
print(sum)

// 正确的声明Decimal的方式，使用string来声明
// 这里的感叹号是标识，我需要这个变量一定是Decimal，而不是通过swift帮我指定类型。
// 如果不加这个感叹号并且string不能转成Decimal，最后会被swift认定成Optional
let decimalByString = Decimal(string: "0.3")!
// 而下边的写法会直接在编译阶段报错,因为=前边指定了类型，而=后边没有加!来确定类型
//let decimalByString1: Decimal = Decimal(String: "0.3")
print(decimalByString)
// Decimal 最大到128位 
print(Decimal.greatestFiniteMagnitude)
