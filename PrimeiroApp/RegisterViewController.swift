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
        print("oko")
    }
    
}
