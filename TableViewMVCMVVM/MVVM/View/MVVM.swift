//
//  MVVM.swift
//  TableViewMVCMVVM
//
//  Created by Anderson Sales on 18/04/23.
//

import UIKit

class MVVM: UIViewController {

    @IBOutlet weak var sfSymbolTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }

    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }
    
    private func configureTextField() {
        sfSymbolTextField.delegate = self
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        
    }
}

extension MVVM: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
}

extension MVVM: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
