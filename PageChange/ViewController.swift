//
//  ViewController.swift
//  PageChange
//
//  Created by Yung on 2018/10/5.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var labelChange: UILabel!
    
    //注意： 此事件只會發生一次
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        print("初始 view1 載入完成")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view1 即將出現")
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("view1已經完成介面佈置")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view1即將消失")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view1 已經消失")
    }
    @IBAction func touchBtn(_ sender: UIButton)
    {
        print("你點到我了")
        labelChange.text = "Hello Word"
        
        //在點擊之後 順便替換斷掉按鈕名稱的方法 
        sender.setTitle("哇林爸爸", for: .normal)
    }
    // 下一頁按鈕
    @IBAction func nextToBtn(_ sender: UIButton!) //允許參數為預先拆封的選擇值 以方便滑動手勢呼叫
    {
        //由storyboard ID 取得下一頁執行實體（記得向下轉型）
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as? ViewController2
        
        vc?.str = labelChange.text
        self.show(vc!, sender: nil)
    }
    
    //向左滑動手勢
    @IBAction func swipeToVC(_ sender: UISwipeGestureRecognizer)
    {
        print("手勢測試...")
        
        //<方法一>按一下 下一頁按鈕
        //nextToBtn(nil)
        //<方法二>用換頁線
        self.performSegue(withIdentifier: "gotoSecondVc", sender: nil)
        
    }
    
    //由連接線換頁時
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //
        super.prepare(for: segue, sender: sender)
        
        print("即將由轉換線:\(segue.identifier!)換頁")
        
        if segue.identifier == "gotoSecondVc"
        {
            let vc =  segue.destination as! ViewController2
            //vc.str = "hello"
            vc.str = labelChange.text
            
//此時第二頁只完成初始化 vclabel2屬性質還沒配置完成暫時還為nil  所以無法操作此屬性 會爆出錯誤！！
            //vc.vclabel2.text = labelChange.text
        }
        else if segue.identifier == "gotoInfoVC"
        {
            print("即將切換到資訊頁")
            _ = segue.destination as! InfoViewController
        }
    }
    
    
    
    //反初始化函式 在類別被釋放前的最後一刻會被呼叫
    deinit {
        print("view1 被釋放!")
    }
}

