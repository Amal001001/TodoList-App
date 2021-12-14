//  AddItemTableViewControllerDelegate.swift
//  TodoList App

import UIKit
protocol AddItemTableViewControllerDelegate {
    func addItemViewController(_ controller: addItemViewController, didFinishAddingItem text: String, details itemDetails: String, date itemDate: Date, at atIndexPath: NSIndexPath?)
    func cancelItemViewController(_ controller: addItemViewController, didPressCancelButton button: UIBarButtonItem)
}
