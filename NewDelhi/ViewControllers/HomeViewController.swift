//
//  HomeViewController.swift
//  NewDelhi
//
//  Created by Julio Cesar  on 22/06/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    private let homeViewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBinders()
        homeViewModel.getLoggedUser()
    
    }
    
    private func setupBinders(){
        homeViewModel.welcomeMessage.bind{
            [weak self] message in
            if let welcomeMessage = message {
                self?.welcomeLabel.text = welcomeMessage
            }
        }
        
    }

}
