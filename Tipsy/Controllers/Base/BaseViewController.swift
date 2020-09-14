//
//  BaseViewController.swift
//  Tipsy
//
//  Created by Jose C. Hernandez on 13/09/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO: Action
    }
    
    func showPlainAlertError(title: String? = nil, message: String, shouldDismissView: Bool = false, shouldPopView: Bool = false ) {
        let alertController = UIAlertController(title: title ?? "view.default.title".localized, message: message, preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "alert.title.OK".localized, style: .default) { action in
            if shouldDismissView {
                self.dismiss(animated: true, completion: nil)
            }
            if shouldPopView {
                self.navigationController?.popViewController(animated: true)
            }
        }
        alertController.addAction(defaultAction)
        
        present(alertController, animated: false, completion: nil)
    }
}
