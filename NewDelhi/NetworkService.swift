//
//  NetworkService.swift
//  NewDelhi
//
//  Created by Julio Cesar  on 22/06/22.
//

import Foundation
import Metal

//This class has a mock service to simulate requests
final class NetworkService{
    
    static let shared = NetworkService()
    private var user: User?
    
    
    private init() {}
    
    func login(email: String, password: String, completion: @escaping(Bool) -> Void){
        
        //Simulate delay request
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            [weak self] in
            if email == "test@test.com" && password == "password"{
                self?.user = User(firstName: "Julio", lastName: "Cesar", email: "test@test.com", age: 25)
                completion(true)
                
            }else{
                self?.user = nil
                completion(false)
            }
                
        }
    }
    
    func getLoggedUser() -> User{
        self.user!
    }
    
    
}
