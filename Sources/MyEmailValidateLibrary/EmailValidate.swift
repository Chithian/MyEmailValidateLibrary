//
//  EmailValidate.swift
//  EmailValidate
//
//  Created by Samony Chithian on 12/10/22.
//

import Foundation

public class EmailValidate {
    
    public static func validateEmail(email:String) -> Bool {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        
        return emailPred.evaluate(with: email)
    }
}
