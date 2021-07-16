//
//  ViewController.swift
//  TodoList
//
//  Created by Bukunmi Ola on 15/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var item : Item?

    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        let isInAddMode = presentingViewController is UINavigationController
            
           if isInAddMode {
             dismiss(animated: true, completion: nil)
           }
           else {
             navigationController!.popViewController(animated: true)
           }
    }
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let item = item {
            nameTextField.text = item.name
        }
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender as AnyObject? === saveButton{
            let name = nameTextField.text ?? ""
                item = Item(name: name)
            
        }
    }
}

