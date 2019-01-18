//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    func add (lhs: Int, rhs: Int) -> Int{
        return lhs + rhs
    }
    
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int){
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    func add(_ args: [Int]) -> Int {
        var value = 0
        for i in 0...args.count - 1 {
            value = value + args[i]
        }
        return value
    }
    
    func add(lhs: [String : Int], rhs: [String : Int]) -> ([String : Int]){
        var dict = [String: Int]()
        dict["x"] = lhs["x"]! + rhs["x"]!
        dict["y"] = lhs["y"]! + rhs["y"]!
        return dict
    }
    
    func subtract (lhs: Int, rhs: Int) -> Int{
        return lhs - rhs
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int){
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    func subtract(lhs: [String : Int], rhs: [String : Int]) -> ([String : Int]){
        var dict = [String: Int]()
        dict["x"] = lhs["x"]! - rhs["x"]!
        dict["y"] = lhs["y"]! - rhs["y"]!
        return dict
    }
    
    func multiply (lhs: Int, rhs: Int) -> Int{
        return lhs * rhs
    }
    
    func multiply(_ args: [Int]) -> Int {
        var value = 1
        for i in 0...args.count - 1 {
            value = value * args[i]
        }
        return value
    }
    
    func divide (lhs: Int, rhs: Int) -> Int{
        return lhs / rhs
    }
    
    func divide(_ args: [Int]) -> Int {
        var value = args[0]
        for i in 1...args.count - 1 {
            value = value / args[i]
        }
        return value
    }
    
    func count (_ args: [Int]) -> Int {
        return args.count
    }
    
    func avg (_ args: [Int]) -> Int {
        var total = 0
        for i in 0...args.count - 1 {
            total = total + args[i]
        }
        return total / args.count
    }
    
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var total = beg
        for i in 0...args.count-1 {
            total = op(total, args[i])
        }
        return total
    }
}
