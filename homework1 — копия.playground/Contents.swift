import UIKit

print("1. Квадратное уравнение")
let a: Float = 1
let b: Float = 12
let c: Float = 16

var x1: Float = 0
var x2: Float = 0

print("a= ",a, "b= ",b, "c= ",c)

let D = Float(pow(b, 2) - 4 * a * c)
print("Дискриминант равен", D)

if (D > 0) {
    x1 = (-b + sqrt(D)) / 2 * a
    x2 = (-b - sqrt(D)) / 2 * a
    print("Уравнение имеет 2 корня\n=", x1, "x2=", x2)
} else if (D == 0) {
    x1 = -b / 2 * a
    print("Корень уравнения равен ", x1)
} else {
    print("Уравнение не имеет корней")
}

print("2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.")

let catet1: Float = 2
let catet2: Float = 3

var gypo: Float = 0
var S: Float = 0
var P: Float = 0

if (catet1 <= 0 || catet2 <= 0) {
    print("Введена отрицательная либо нулевая величина катета")
} else {
    gypo = sqrt(pow(catet1, 2) + pow(catet2, 2))
    S = catet1 * catet2 / 2
    P = catet1 + catet2 + gypo
    print("Гипотенуза равна ", gypo, "\nПлощадь S=", S, "\nПериметр P=", P)
}

print("3. Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.")

var summ: Float = 150
var percent: Float = 12
let years: Float = 5
var yearCount: Float = 0

percent = percent / 100

print("Сумма первоначального вклада ", summ)
while yearCount < years {
    summ = summ + summ * percent
    yearCount = yearCount + 1
    print("В", yearCount, "-й год сумма вклада с учетом процентов составит ", String(format: "%.2f", summ))
}








