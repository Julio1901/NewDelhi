//
//  HomeViewModel.swift
//  NewDelhi
//
//  Created by Julio Cesar  on 23/06/22.
//

import Foundation

final class HomeViewModel {
    
    var welcomeMessage: ObservableObject<String?> = ObservableObject(nil)
    
    func getLoggedUser(){
       let user =  NetworkService.shared.getLoggedUser()
        self.welcomeMessage.value = "Hello, \(user.firstName) \(user.lastName)"
    }
    
    
}
