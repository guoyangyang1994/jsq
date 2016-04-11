//
//  ViewController.swift
//  jsq
//
//  Created by 20131105798 on 16/3/28.
//  Copyright © 2016年 20131105798. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var 计算器:计算 = 计算()
    var 显示缓存:String = ""
    var 缓存 = 0.0
    var 缓存2:Double?


    @IBOutlet weak var 屏幕: UITextField!
    @IBAction func number1(sender: AnyObject) {
        点按("1")
    }
    @IBAction func number2(sender: AnyObject) {
        点按("2")
    }
       @IBAction func number3(sender: AnyObject) {
        点按("3")
    }
    @IBAction func number4(sender: AnyObject) {
        点按("4")
    }
    @IBAction func number5(sender: AnyObject) {
        点按("5")
    }
    @IBAction func number6(sender: AnyObject) {
        点按("6")
    }
    @IBAction func number7(sender: AnyObject) {
        点按("7")
    }
    @IBAction func number8(sender: AnyObject) {
        点按("8")
    }
   
    @IBAction func number9(sender: AnyObject) {
        点按("9")
    }
    @IBAction func number0(sender: AnyObject) {
        点按("0")
    }
    @IBAction func cheng(sender: AnyObject) {
    }
    @IBAction func chu(sender: AnyObject) {
    }
    @IBAction func jia(sender: AnyObject) {
    }
    @IBAction func jian(sender: AnyObject) {
    }
    @IBAction func dian(sender: AnyObject) {
        点按(".")
    }
    @IBAction func 算法加(sender: AnyObject) {
        计算器.设置当前算法(.jia)
        求值()
    }
    @IBAction func 算法减(sender: AnyObject) {
        计算器.设置当前算法(.jian)
        求值()
    }
    @IBAction func 算法乘(sender: AnyObject) {
        计算器.设置当前算法(.cheng)
        求值()
    }
    @IBAction func 算法除(sender: AnyObject) {
        计算器.设置当前算法(.chu)
        求值()
                }
        func 求值() {
            
            if !显示缓存.isEmpty {
                let 临时 = 显示缓存 as NSString
                缓存 = 临时.doubleValue
                显示缓存 = ""
            }
            let 临时 = 缓存
            var 结果 = ""
            
            if let 前一个数字 = 缓存2 {
                结果 = 计算器.求结果(前一个数字, 被操作数: 临时)
                
                self.屏幕.text = 结果
                let 临 = 结果 as NSString
                缓存2 = 临.doubleValue
            } else {
                缓存2 = 缓存
                缓存 = 0.0
            }
            
        }



    @IBAction func result(sender: AnyObject) {
        求值()
    }
    func 点按(数字:String) {
        显示缓存 += 数字
        self.屏幕.text = 显示缓存
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

