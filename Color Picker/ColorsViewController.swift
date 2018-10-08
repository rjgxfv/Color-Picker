//
//  ColorsViewController.swift
//  Color Picker
//
//  Created by Robert Graman on 10/8/18.
//  Copyright © 2018 Robert Graman. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController ,UIPickerViewDataSource,UIPickerViewDelegate{

    @IBOutlet weak var colorPicker: UIPickerView!
    @IBOutlet weak var Label: UILabel!
    
    //let colors=["Red","Orange","Yellow","Green","Blue","Purple"]
    let colors = [Color(name: "Red",UIColor:UIColor.red),
                  Color(name: "Orange",UIColor:UIColor.orange),
                  Color(name: "Yellow",UIColor:UIColor.yellow),
                  Color(name: "Green",UIColor:UIColor.green),
                  Color(name: "Blue",UIColor:UIColor.blue),
                  Color(name: "Purple",UIColor:UIColor.purple),]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Label.text = colors[row].name
        self.view.backgroundColor = colors[row].UIColor
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let row=0
        colorPicker.selectRow(row, inComponent: 0, animated: true)
        Label.text=colors[row].name
        self.view.backgroundColor=colors[row].UIColor
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
