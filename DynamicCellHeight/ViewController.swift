//
//  ViewController.swift
//  DynamicCellHeight
//
//  Created by praveen on 10/26/18.
//  Copyright © 2018 DemoApps. All rights reserved.
//

import UIKit
struct CompanyDTO {
    var name: String?
    var code: String?
    var location: String?
    var description: String?
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let data = [
        CompanyDTO(name: "focus", code: "5252", location: "hyderabad", description: nil),
        CompanyDTO(name: "crm", code: "t3et", location: "panjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjagutta", description: nil),
        CompanyDTO(name: "focus", code: nil, location: "hyderabad", description: nil),
        CompanyDTO(name: "focus", code: nil, location: "hyderabad", description: "haglvng"), CompanyDTO(name: "focus", code: "5252", location: "hyderabad", description: nil),
        CompanyDTO(name: "crm", code: "t3et", location: nil, description: "khdshgka fgdk khsgadhlwe hgsdlah ghdalgh hdalsgh"),
        CompanyDTO(name: nil, code: nil, location: "hyderabad", description: nil),
        CompanyDTO(name: "focus", code: "5252", location: "hyderabad", description: "haglvng"), CompanyDTO(name: "focus", code: "5252", location: "hyderabad", description: nil),
        CompanyDTO(name: "crm", code: "t3et", location: nil, description: nil),
        CompanyDTO(name: "focus", code: nil, location: "hyderabad", description: "khdshgka fgdk khsgadhlwe khdshgka fgdk khsgadhlwe khdshgka fgdk khsgadhlwe khdshgka fgdkpanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjagutta khsgadhlwe hgsdlah ghdalgh hdalsgh"),
        CompanyDTO(name: "focus", code: "5252", location: "hyderabad", description: "haglvng"), CompanyDTO(name: "focus", code: "5252", location: "hyderabad", description: nil),
        CompanyDTO(name: "crm", code: "t3et", location: nil, description: nil),
        CompanyDTO(name: "focus", code: nil, location: "hyderabad", description: "khdshgka fgdk khsgadhlwe khdshgka fgdk khsgadhlwe khdshgka fgdk khsgadhlwe khdshgka fgdk khsgadhlwe hgsdlah ghdalghpanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttahdalsgh"),
        CompanyDTO(name: nil, code: "5252", location: "hyderabad", description: "haglvng"), CompanyDTO(name: "focus", code: "5252", location: "hyderabad", description: nil),
        CompanyDTO(name: "crm", code: "t3et", location: "panjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjagutta", description: "khdshgka fgdk khsgadhlwe hgsdlah ghdalgh hdalsghpanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjagutta"),
        CompanyDTO(name: "focus", code: nil, location: "hyderabad", description: "khdshgka fgdk khsgadhlwe khdshgka fgdk khsgadhlwe khdshgka fgdk khsgadhlwe khdshgka fgdk khsgadhlwe hgsdlah ghdalgh hdalsgh"),
        CompanyDTO(name: "focus", code: "5252", location: "hyderabad", description: nil), CompanyDTO(name: "focus", code: "5252", location: "hyderabad", description: nil),
        CompanyDTO(name: "crm", code: nil, location: "panjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjagutta", description: "khdshgka fgdk khsgadhlwe hgsdlah ghdalgh hdalsghpanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjagutta"),
        CompanyDTO(name: "focus", code: nil, location: "hyderabad", description: "khdshgka fgdk khsgadhlwe khdshgka fgdk khsgadhlwe khdshgka fgdk khsgadhlwe khdshgka fgdk khsgadhlwe hgsdlah ghdalgh hdalsgh"),
        CompanyDTO(name: "focus", code: "5252", location: "hyderabad", description: "haglvng"), CompanyDTO(name: "focus", code: "5252", location: "hyderabad", description: nil),
        CompanyDTO(name: "crm", code: "t3et", location: nil, description: "panjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttapanjaguttakhdshgka fgdk khsgadhlwe hgsdlah ghdalgh hdalsgh"),
        CompanyDTO(name: "focus", code: nil, location: "hyderabad", description: "khdshgka fgdk khsgadhlwe khdshgka fgdk khsgadhlwe khdshgka fgdk khsgadhlwe khdshgka fgdk khsgadhlwe hgsdlah ghdalgh hdalsgh"),
        CompanyDTO(name: "focus", code: "5252", location: nil, description: "haglvng")
    ]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let table = UITableView()
        table.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        table.register(TableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
        table.dataSource = self
        table.delegate = self
        table.rowHeight = UITableViewAutomaticDimension
        table.estimatedRowHeight = 50
        view.addSubview(table)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath) as! TableViewCell
        cell.renderView(dto: data[indexPath.row])
        return cell
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

