//
//  ViewController.swift
//  Sett
//
//  Created by Shivesh Kaushik on 01/09/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var image = ["airplane_mode","wifi","bluetooth"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cellcustom", for: indexPath) as! CustomCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(image[indexPath.row])
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Settings"
    }
    

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.dataSource = self
        tableview.delegate = self
        tableview.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "cellcustom")
    }


}

