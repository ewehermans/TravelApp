//
//  RecommendationsTableViewController.swift
//  TravelApp
//
//  Created by Ewoud Hermans on 12/12/16.
//  Copyright © 2016 Parse. All rights reserved.
//

import UIKit
import Parse

class RecommendationsTableViewController: UITableViewController {
    
    var recTitles = [String]()
    var recPlacenames = [String]()
    var recObjectIDs = [String]()
    var row: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()


        self.tableView.rowHeight = 60.0
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let user = PFUser.current()
        
        let query = PFQuery(className: "Recommendations")
        
        query.whereKey("User", equalTo: user!)
        
        query.findObjectsInBackground(block: { (objects, error) in
            
            for recommendation in objects! {
                
                let title = recommendation["Title"]
                let placename = recommendation["Placename"]
                let objectID = recommendation.objectId
                
                self.recPlacenames.append(placename as! String)
                self.recTitles.append(title as! String)
                self.recObjectIDs.append(objectID!)

                self.tableView.reloadData()
                
                
            }
            print (self.recPlacenames)
            print (self.recTitles)
            
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return recPlacenames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell

        
        
        cell.recTitleLabel.text = recTitles[indexPath.row]
        cell.recPlacenameLabel.text = recPlacenames[indexPath.row]

        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        row = indexPath.row
        
        self.performSegue(withIdentifier: "showRec", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "showRec") {
            let DestViewController : ViewRecommendationViewController = segue.destination as! ViewRecommendationViewController
            
            DestViewController.objectID = recObjectIDs[row]

        }
    }

   
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
