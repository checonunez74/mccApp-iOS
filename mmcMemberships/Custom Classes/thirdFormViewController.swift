//
//  thirdFormViewController.swift
//  mmcMemberships
//
//  Created by Sergio Nunez on 9/23/19.
//  Copyright © 2019 Omega One Developers. All rights reserved.
//

import UIKit

class thirdFormViewController: UIViewController, UITextFieldDelegate  {

    // List of type of organizations to be shown in the menu
    var typeOfOrganization = ["Accounting", "Advertising", "Amusement/Entertainment", "Apartments",
                              "Attorneys","Automotive","Banks","Business Center","Computer Services","Constructions","Financial Services","Hospitals","Health Related Services","Hotels/Motels","Import/Export","Individual Memebership","Insurance","Manufacturer","Marketing","Media","MH/RV Parks/Subdivisions",
                              "Non-profit Organizations","Physicians/Medical Facilities","Public Utilities","Real Estate","Recreational","Retail-Clothing Access, etc.","Restaurants","Salons","Transportation","Wholesale/Distributor"]
    var selectedType: String?
    
    @IBOutlet weak var dropDownMenu: UIPickerView!
    @IBOutlet weak var dropDwonMenu2: UIPickerView!
    
    var areasOfInterest = ["Advertising","Networking","Sales","Seminars","Workshops"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
  
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension thirdFormViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    //functions to control PickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
                return typeOfOrganization.count
        } else {
            return areasOfInterest.count
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1  {
            self.view.endEditing(true)
            return typeOfOrganization[row]
        } else {
            return areasOfInterest[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) -> String {
        if pickerView.tag == 1 {
            selectedType = typeOfOrganization[row]
            return selectedType!
        } else {
            return areasOfInterest[row]
        }
        
    }
    
    
    
}
