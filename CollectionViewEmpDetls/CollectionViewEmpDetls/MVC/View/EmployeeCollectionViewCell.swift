//
//  EmployeeCollectionViewCell.swift
//  CollectionViewEmpDetls
//
//  Created by Bimal@AppStation on 04/05/22.
//

import UIKit

class EmployeeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    
    func setEmplyCell(emplystr: Employee) {
        self.labelName.text = emplystr.emplyName
        self.labelAge.text = emplystr.emplyAge
        let photo = UIImage(named: emplystr.emplyImg)
        self.imageview.image = photo
    }
}
