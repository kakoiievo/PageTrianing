//
//  ViewController2.swift
//  PageChange
//
//  Created by Yung on 2018/10/5.
//

import UIKit

class ViewController2: UIViewController
{
    
    //給上一頁傳遞資料過來儲存  nil可以不用寫 所以註解掉
    var str:String? //= nil
    
    
    
    @IBOutlet weak var vclabel2: UILabel!
    
    @IBAction func backBtn(_ sender: UIButton!)
    {
        //移除畫面
        self.dismiss(animated: true, completion: nil)
    }
    //注意 ： 此事件只會出現一次
    override func viewDidLoad()
    {
        super.viewDidLoad()
       // print("初始 view2 載入完成")
        
        vclabel2.text = str
    }
    
    @IBAction func swipeNextBtn(_ sender: UISwipeGestureRecognizer) {
        
        //backBtn(nil)
        //self.dismiss(animated: true, completion: nil) 原先用這來消失
        
        //現在前面加了navigationController 所以移除畫面要用這導覽消失方法
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "gotoThirdVC", sender: nil)
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view2 即將出現")
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("view2 已經完成介面佈置")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view2 即將消失")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view2 已經消失")
    }
    
    //即將由換頁線換頁 (第二頁換到第三頁)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        //由換頁線取得第三頁的執行實體
        let thirdVC = segue.destination as! ViewController3
        thirdVC.seconVC = self
    }
    
    //反初始化函式 在類別被釋放前的最後一刻會被呼叫
    deinit
    {
        print("view2被釋放!")
    }
    

}
