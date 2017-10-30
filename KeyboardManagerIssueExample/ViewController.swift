//
//  ViewController.swift
//  KeyboardManagerIssueExample
//
//  Created by Linar Chabibulin on 30/10/2017.
//  Copyright © 2017 Whatever. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    @IBOutlet private weak var autocompletionTextfield: UITextField!
    @IBOutlet private weak var tableView: UITableView!
    
    private let autocompletionList = ["1_example_text",
                                      "2_example_text",
                                      "3_example_text",
                                      "4_example_text",
                                      "5_example_text",
                                      "6_example_text",
                                      "7_example_text",
                                      "8_example_text",
                                      "9_example_text"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        autocompletionTextfield.text = "0_example_text"
        
    }

    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return autocompletionList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell()
        
        cell.textLabel?.text = autocompletionList[indexPath.row]
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        autocompletionTextfield.text = autocompletionList[indexPath.row]
        tableView.isHidden = true
    }
    
    // MARK: - UITextFieldDelegate

    func textFieldDidBeginEditing(_ textField: UITextField) {
        tableView.isHidden = false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        tableView.isHidden = true
    }
}

