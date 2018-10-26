//
//  ViewController3.swift
//  PageChange
//
//  Created by Yung on 2018/10/8.
//

import UIKit

class ViewController3: UIViewController {
    
    //記錄第二頁的類別實體 (以方便回主頁時 同步釋放第二頁使用)
    var seconVC:ViewController2!

    //注意 ： 此事件只會出現一次
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //回上一頁
    @IBAction func backBtn(_ sender: UIButton)
    {
        //移除畫面
        //self.dismiss(animated: true, completion: nil)
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    //回主頁的按鈕
    @IBAction func BtnMain(_ sender: UIButton) {
        
//        self.dismiss(animated: true) {
//            //同時移除第二頁畫面
//            self.seconVC.dismiss(animated: true, completion: nil)
//        }
        
        //使用navigationController 同時移除第二頁畫面
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        
        //self.dismiss(animated: true, completion: nil)
        
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view3 即將出現")
        print("view3 即將出現")
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("view3 已經完成介面佈置")
        print("view3 已經完成介面佈置")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view3 即將消失")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view2 已經消失")
    }
    
    //反初始化函式 在類別被釋放前的最後一刻會被呼叫
    deinit
    {
        print("view2被釋放!")
        print("view2被釋放!")
    }
    

   

}
