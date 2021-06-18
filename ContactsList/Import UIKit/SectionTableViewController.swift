//
//  SectionTableViewControllerswift
//  HW3
//
//  Created by Alexey Efimov on 17.06.2018.
//  Copyright © 2018 Alexey Efimov. All rights reserved.
//

import SwiftUI

class SectionTableViewController: UITableViewController {
    
    let persons = Person.getContactList()
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    //Использование метода для присваивания заголовка секции
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "mail")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

struct SectionTableViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UITableViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "SectionTableViewController") as! SectionTableViewController
    }
    
    func updateUIViewController(_ uiViewController: UITableViewController, context: Context) {
        
    }
}

struct SectionTableViewControllerPreview: PreviewProvider {
    static var previews: some View {
        SectionTableViewControllerRepresentable()
    }
}
