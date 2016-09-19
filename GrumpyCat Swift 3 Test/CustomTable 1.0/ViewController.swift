//
//  ViewController.swift
//  CustomTable 1.0
//
//  Created by Danny Nguyen on 9/2/16.
//  Copyright © 2016 Danny Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    struct GrumpyCatInfo {
        
        var thingToHate: String
        var worthyOfNo: Bool
    }

    var grumpyData = [
        GrumpyCatInfo(thingToHate: "Mondays", worthyOfNo: true),
        GrumpyCatInfo(thingToHate: "Weekends", worthyOfNo: false),
        GrumpyCatInfo(thingToHate: "Sunny days", worthyOfNo: true),
        GrumpyCatInfo(thingToHate: "Neighbors", worthyOfNo: true),
        GrumpyCatInfo(thingToHate: "Mail Man", worthyOfNo: true),
        GrumpyCatInfo(thingToHate: "John", worthyOfNo: false),
        GrumpyCatInfo(thingToHate: "Spam Email", worthyOfNo: true),
        GrumpyCatInfo(thingToHate: "Tim", worthyOfNo: false),
        GrumpyCatInfo(thingToHate: "Dogs", worthyOfNo: true),
        GrumpyCatInfo(thingToHate: "Jill", worthyOfNo: false)

    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return grumpyData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // This will try to reuse a cell if one can be found. If not, a new cell will be created. Remember to NAME your cell identifer!!!!
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyTableViewCell
        
        cell.iHate.text = grumpyData[(indexPath as NSIndexPath).row].thingToHate
        
        if grumpyData[(indexPath as NSIndexPath).row].worthyOfNo {
            cell.grumpyCat.image = UIImage(named: "No")
        } else {
            cell.grumpyCat.image = UIImage(named: "Meh")
        }
        
        return cell

    }
    func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
        cell!.contentView.backgroundColor = UIColor.gray
        
        // Invert or toggle the worthyOfNo value to its opposite.
        grumpyData[(indexPath as NSIndexPath).row].worthyOfNo = !grumpyData[(indexPath as NSIndexPath).row].worthyOfNo
        
        tableView.reloadData()
    }
    
    // From UITableViewDelegate protocol.
    func tableView(_ tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: IndexPath) -> Bool {
        
        return true
    }
    
    // From UITableViewDelegate protocol.
    func tableView(_ tableView: UITableView, didHighlightRowAtIndexPath indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
        cell?.contentView.backgroundColor = UIColor.red
    }
    
    // From UITableViewDelegate protocol.
    func tableView(_ tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
        cell?.contentView.backgroundColor = UIColor.clear
    }
   
}
