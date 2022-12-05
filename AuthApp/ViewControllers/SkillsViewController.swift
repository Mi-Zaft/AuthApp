//
//  SkillsViewController.swift
//  AuthApp
//
//  Created by Максим Евграфов on 05.12.2022.
//

import UIKit

class SkillsViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    
    var skills: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.register(UINib(nibName: "SkillViewCell", bundle: nil), forCellWithReuseIdentifier: "SkillViewCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
    }
}

extension SkillsViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return skills.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "SkillViewCell",
            for: indexPath
        ) as? SkillViewCell else { return SkillViewCell() }
        
        cell.setupCell(skill: skills[indexPath.item])
        
        return cell
    }
    
    
}
