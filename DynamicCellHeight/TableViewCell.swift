//
//  TableViewCell.swift
//  DynamicRowHeight
//
//  Created by praveen reddy on 8/22/18.
//  Copyright © 2018 praveen reddy. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        label2.translatesAutoresizingMaskIntoConstraints = false
        label3.translatesAutoresizingMaskIntoConstraints = false
        label4.translatesAutoresizingMaskIntoConstraints = false
        
        label1.textColor = .gray
        label1.font = UIFont.systemFont(ofSize: 24, weight: UIFont.Weight.bold)
        label2.textColor = .magenta
        label3.textColor = .red
        label4.textColor = .blue
        label4.numberOfLines = 0
        
        contentView.addSubview(label1)
        contentView.addSubview(label2)
        contentView.addSubview(label3)
        contentView.addSubview(label4)
        
        label1.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        label1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        label1.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.8).isActive = true
        
        label2.leadingAnchor.constraint(equalTo: label1.leadingAnchor).isActive = true
        label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 5).isActive = true
        label2.widthAnchor.constraint(equalTo: label1.widthAnchor).isActive = true
        
        label3.leadingAnchor.constraint(equalTo: label1.leadingAnchor).isActive = true
        label3.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 5).isActive = true
        label3.widthAnchor.constraint(equalTo: label1.widthAnchor).isActive = true
        
        label4.leadingAnchor.constraint(equalTo: label1.leadingAnchor).isActive = true
        label4.topAnchor.constraint(equalTo: label3.bottomAnchor).isActive = true
        label4.widthAnchor.constraint(equalTo: label1.widthAnchor).isActive = true
        label4.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func renderView(dto: CompanyDTO) {
        label1.text = dto.name ?? ""
        label2.text = dto.code ?? ""
        label3.text = dto.location ?? ""
        label4.text = dto.description ?? ""
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
