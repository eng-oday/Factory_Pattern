//
//  FactoryExample.swift
//  FactoryPattern
//
//  Created by 3rabApp-oday on 10/08/2023.
//

import Foundation

enum fansType {
    case realMadrid
    case barcelona
    case manCity
}


protocol CreateFanFactory {
    func createFanFrom(type:fansType) -> ClubFan
}


class FansFactory:CreateFanFactory {
    
    func createFanFrom(type: fansType) -> ClubFan {
        switch type {
            
        case .realMadrid:
            return RealMadridFans()
        case .barcelona:
            return BarcelonaFans()
        case .manCity:
            return ManCityFans()
        }
    }
}


protocol ClubFan {
    var name:String {get}
    var country:String {get}
    var sex:String {get}
}


class RealMadridFans:ClubFan{
    var name: String = "Real madrid"
    
    var country: String = "Spain"
    
    var sex: String = "Male"
}

class BarcelonaFans:ClubFan{
    var name: String = "Barcelona"
    
    var country: String = "Spain"
    
    var sex: String = "Female"
    
}

class ManCityFans:ClubFan{
    var name: String = "Manchester City"
    
    var country: String = "England"
    
    var sex: String = "Male"
    
}

// in cas i don't want to use static cases (enum) and make it more handled

// must create three classes 1 .RealMadridFansFactory   2. BarcelonaFansFactory  3. ManCityFansFactory instead of three cases in enum

// every class on it conform the protocol CreateFansFactory and implement his function and return the ClubFan object what you want

// make the function in the protocol not accept any parameter and return ClubFan

// example return RealMadridFans() in the function what you confirmed in RealMadridFansFactory class
