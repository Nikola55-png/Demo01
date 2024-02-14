//
//  DetaljiPozicijeViewModel.swift
//  Demo01
//
//  Created by Nikola Ilic on 14.2.24..
//

import Foundation

class DetaljiPozicijeViewModel {
    var pozicijaDetalji: PozicijaDetalji?
    
    func kreirajShare () -> String? {
        guard let pozicija = pozicijaDetalji?.pozicija else {
            return nil
        }
        
        return ""
    }
}
