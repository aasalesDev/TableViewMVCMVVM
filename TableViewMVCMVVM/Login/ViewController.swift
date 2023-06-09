//
//  ViewController.swift
//  TableViewMVCMVVM
//
//  Created by Anderson Sales on 18/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func mvcButtonPressed(_ sender: UIButton) {
        if let vc = UIStoryboard(name: String(describing: MVC.self), bundle: nil).instantiateViewController(withIdentifier: String(describing: MVC.self)) as? MVC {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func mvvmButtonPressed(_ sender: UIButton) {
        if let vc = UIStoryboard(name: String(describing: MVVM.self), bundle: nil).instantiateViewController(withIdentifier: String(describing: MVVM.self)) as? MVVM {
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}

