//
//  EmployeeTableViewCell.swift
//  CollectionViewEmpDetls
//
//  Created by Bimal@AppStation on 04/05/22.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var imageview: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setEmplyCell(emplystr: Employee) {
        self.labelName.text = emplystr.emplyName
        self.labelAge.text = emplystr.emplyAge
        let photo = UIImage(named: emplystr.emplyImg)
        self.imageview.image = photo
    }

}
