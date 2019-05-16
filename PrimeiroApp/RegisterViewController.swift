//
//  ViewController.swift
//  PrimeiroApp
//
//  Created by Anderson Moura de Oliveira on 10/05/19.
//  Copyright © 2019 Zup. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var objectTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var saveButton: UIButton!
    
    var texto: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupStyle()
    }
    
    private func setupStyle() {
        baseView.layer.cornerRadius = 5
        saveButton.layer.cornerRadius = 5
    }

    @IBAction func saveTapped(_ sender: UIButton) {
        guard let name = nameTextField.text,
              !name.isEmpty,
              let object = objectTextField.text,
              !object.isEmpty
        else { return }
        // save info
        print(name, object, datePicker.date)
        let lending = Lending(name: name, object: object, date: datePicker.date)
        LendingService.shared.lendings.append(lending)
        
    }

    @IBAction func listTapped(_ sender: Any) {
        for lending in LendingService.shared.lendings {
            print(lending.name)
        }
        for (index, value) in LendingService.shared.lendings.enumerated() {
            print(value.name, index)
        }
        
        LendingService.shared.lendings.forEach { (lending) in
            print(lending.name)
        }
        
        LendingService.shared.lendings.forEach {
            print($0.name)
        }
    }
}
