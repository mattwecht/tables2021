//
//  DogTableViewController.swift
//  tables2021
//
//  Created by Matthew Wecht on 5/12/21.
//

import UIKit

struct Dogs {
    var id : Int
    var title : String
    var text : String
    var image : String
}//this just contains properties, like an interface

class DogTableViewController: UITableViewController {

    var allDogs = [
          Dogs(id: 1,
                title: "Poodle",
                text: "ITS SO FLUFFY",
                image: "poodle-pup"),
          Dogs(id: 2,
                title: "German Shepard",
                text: "Now thats a big floof",
                image: "angry-fluff"),
          Dogs(id: 3,
                title: "Mutt",
                text: "Where it came from? No one knows. Where it belongs? My heart",
                image: "sammy")
      ]

   
    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1//will only return 1 overall section of rows
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return allDogs.count//changes to the amount of dogs in my array
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)//replaced string with our own label from story board

        cell.textLabel?.text = allDogs[indexPath.row].title

        return cell
    }//function was uncomented
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Types of Dogs"
    }
    
}
