//
//  ViewController.swift
//  exam_localDatabase
//
//  Created by R87 on 01/01/24.
//

import UIKit
import SQLite3

class ViewController: UIViewController {

    @IBOutlet weak var t1: UITextField!
    @IBOutlet weak var t2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sqlite.createFile()
        
    
    }
    @IBAction func addButtonAction(_ sender: Any) {
        
        
     
    }
    @IBAction func showButtonAction(_ sender: Any) {
        
    
    }
    
    @IBAction func deleteButtonAction(_ sender: Any) {
    }
    
}

