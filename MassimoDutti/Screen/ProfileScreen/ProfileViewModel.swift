//
//  ProfileViewModel.swift
//  MassimoDutti
//
//  Created by AKIN on 23.01.2023.
//

import Foundation

enum ProfileViewModel: Int, CaseIterable {
    case shoppingbag
    case iade
    case notifications
    case profile
    case settings
    case information
    
    var description: String {
        switch self {
        case .shoppingbag: return "Siparişlerim"
        case .iade: return "İadelerim"
        case .notifications: return "Bildirimler"
        case .profile: return "Kişisel Bilgiler"
        case .settings: return "Ayarlar"
        case .information: return "Yardım"
        }
    }
    
    var iconImageName: String {
        switch self {
        case .shoppingbag: return "shopping-bag"
        case .iade: return "turn-right"
        case .notifications: return "bell"
        case .profile: return "user"
        case .settings: return "slider"
        case .information: return "information"
        }
    }
}
