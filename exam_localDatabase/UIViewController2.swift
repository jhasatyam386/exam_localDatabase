//
//  UIViewController2.swift
//  exam_localDatabase
//
//  Created by R87 on 12/04/23.
//

import UIKit

class UIViewController2: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    var arr : [] = []
    @IBOutlet weak var MytableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    

    
}
