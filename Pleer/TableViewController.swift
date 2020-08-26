//
//  TableViewController.swift
//  Pleer
//
//  Created by Елизавета Щербакова on 23.02.2020.
//  Copyright © 2020 Sсherbakova Elizaveta Nikolaevna. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    let imageNameArray = ["Alberto Ruiz - 7 Elements (Original Mix)",
                          "Dave Wincent - Red Eye (Original Mix)",
                          "E-Spectro - End Station (Original Mix)",
                          "Edna Ann - Phasma (Konstantin Yoodza Remix)",
                          "Ilija Djokovic - Delusion (Original Mix)",
                          "John Baptiste - Mycelium (Original Mix)",
                          "Lane 8 - Fingerprint (Original Mix)",
                          "Mac Vaughn - Pink Is My Favorite Color (Alex Stein Remix)",
                          "Metodi Hristov, Gallya - Badmash (Original Mix)",
                          "Veerus, Maxie Devine - Nightmare (Original Mix)"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNameArray.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)
        
        cell.imageView?.image = UIImage(named: imageNameArray[indexPath.row])
        cell.textLabel?.text = imageNameArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
   



    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let vc = segue.destination as! ViewController
                vc.trackTitle = imageNameArray[indexPath.row]
            }
            
        }

    }

}
