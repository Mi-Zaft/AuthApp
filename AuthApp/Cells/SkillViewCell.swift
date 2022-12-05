//
//  SkillViewCell.swift
//  AuthApp
//
//  Created by Максим Евграфов on 05.12.2022.
//

import UIKit

class SkillViewCell: UICollectionViewCell {

    @IBOutlet var skillLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(skill: String) {
        self.skillLabel.text = skill
    }

}
