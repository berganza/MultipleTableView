//
//  ViewController.swift
//  MultipleTableView
//
//  Created by Berganza on 7/11/15.
//  Copyright © 2015 Berganza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let lista1 = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16"]
    let lista2 = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","ñ","o"]

    @IBOutlet weak var tablaUno: UITableView!
    @IBOutlet weak var tablaDos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.cyanColor()
        
        self.tablaDos.dataSource = self
        self.tablaDos.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == self.tablaUno {
            return lista1.count
        } else {
            return lista2.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Celda")!
        
        if tableView == self.tablaUno {
            celda.textLabel?.text = lista1[indexPath.row]
        } else {
            celda.textLabel?.text = lista2[indexPath.row]
        }
        return celda
    }
}
