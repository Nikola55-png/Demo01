//
//  Model.swift
//  Demo01
//
//  Created by Nikola Ilic on 14.2.24..
//

import Foundation


struct Pozicija: Decodable {
    let slika: String
    let naziv: String
    let plata: String
    
    
    init(slika: String, naziv: String, plata: String) {
        self.slika = slika
        self.naziv = naziv
        self.plata = plata
        
    }
}

struct PozicijaDetalji {
    let pozicija: Pozicija
    let tehnologije: [String]
    let opisPozicije: String
    let opisFirme: String
}
