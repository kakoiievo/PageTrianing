//
//  InfoViewController.swift
//  PageChange
//
//  Created by Yung on 2018/10/8.
//

import UIKit

class InfoViewController: UIViewController {


    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func infoBackBtn(_ sender: UIButton) {
        
        //呼叫 dismiss 方法退回去主頁 
        //self.dismiss(animated: true, completion: nil)
        
        self.navigationController?.popViewController(animated: true)
    }
    
   
}
