//  addItemTableViewController.swift
//  TodoList App

import UIKit

class addItemViewController: UIViewController {

    @IBOutlet weak var itemTitleTextField: UITextField!
    @IBOutlet weak var itemDetailsTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var item : String?
    var itemDetails : String?
  //  var itemDate : Date?
    var indexPath : NSIndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        itemTitleTextField.text = item
        itemDetailsTextField.text = itemDetails
      //  datePicker.date = itemDate
    }

    var delegate: AddItemTableViewControllerDelegate?

    @IBAction func cancelBarButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelItemViewController(self, didPressCancelButton: sender)
    }

    @IBAction func addButtonPressed(_ sender: UIButton) {
        delegate?.addItemViewController(self, didFinishAddingItem: itemTitleTextField.text!,details : itemDetailsTextField.text!, date : datePicker.date, at: indexPath)
    }

}
