//
//  ViewController.swift
//  CollectionViewEmpDetls
//
//  Created by Bimal@AppStation on 04/05/22.
//

import UIKit

class EmployeeViewController: UIViewController {
    
    @IBOutlet weak var collectionview: UICollectionView!
    var emplyDetls = [Employee]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        datasOfEmply()
        
    }
    func datasOfEmply() {
        let emp1 = Employee(emplyName: "Amal", emplyAge: "30", emplyImg: "personimg")
        let emp2 = Employee(emplyName: "Kannan", emplyAge: "32", emplyImg: "personimg")
        let emp3 = Employee(emplyName: "Vishnu", emplyAge: "28", emplyImg: "personimg")
        let emp4 = Employee(emplyName: "Amal", emplyAge: "30", emplyImg: "personimg")
        let emp5 = Employee(emplyName: "Kannan", emplyAge: "32", emplyImg: "personimg")
        let emp6 = Employee(emplyName: "Vishnu", emplyAge: "28", emplyImg: "personimg")
        let emp7 = Employee(emplyName: "Amal", emplyAge: "30", emplyImg: "personimg")
        let emp8 = Employee(emplyName: "Kannan", emplyAge: "32", emplyImg: "personimg")
        let emp9 = Employee(emplyName: "Vishnu", emplyAge: "28", emplyImg: "personimg")
        emplyDetls = [emp1,emp2,emp3,emp4, emp5, emp6, emp7, emp8, emp9]
        
      
    }

}
extension EmployeeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return emplyDetls.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "emplyCell", for: indexPath as IndexPath) as! EmployeeCollectionViewCell
        
        cell.setEmplyCell(emplystr: emplyDetls[indexPath.item])
        return cell
    }
}
