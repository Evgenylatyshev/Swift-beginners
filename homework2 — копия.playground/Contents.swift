import UIKit

// Функция, которая определяет, четное число или нет
func isEven (_ number: Int = 0) -> Bool {
    return number % 2 == 0
}

// Функция, которая определяет, делится ли число без остатка на 3
func isDividedWithoutRemainder (_ number: Int = 0, _ divider: Int = 1) -> Bool {
    return number % divider == 0
}

var n: Int = 14
var div: Int = 3

print(isEven(n) ? String(n) + " - четное число" : String(n) + " - не четное число")
print(isDividedWithoutRemainder(n, div)
    ? "делится без остатка на " + String(div)
    : "НЕ делится без остатка на " + String(div))

// Возрастающий массив из 100 чисел
var incrArr: [Int] = []
for i in 1...100 {
    incrArr.append(i)
}
print("Длина массива - \(incrArr.count), начинается с \(String(incrArr.first ?? 0)), заканчивается - \(String(incrArr.last ?? 0))")

print("убираем четные и не кратные 3 числа")
incrArr.removeAll { isEven($0) || !isDividedWithoutRemainder($0,3)}
print("Длина массива - \(incrArr.count), начинается с \(incrArr[0]), заканчивается - \(incrArr[incrArr.count > 0 ? incrArr.count - 1 : 0])")
print("incrArr = \(incrArr)")




