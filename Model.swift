//
//  Model.swift
//  Demo01
//
//  Created by Nikola Ilic on 14.2.24..
//

import Foundation


struct Pozicija {
    let slika: String
    let naziv: String
    let plata: String
    let tehnologije: [String]
    
    init(slika: String, naziv: String, plata: String, tehnologije: [String]) {
        self.slika = slika
        self.naziv = naziv
        self.plata = plata
        self.tehnologije = tehnologije
    }
}


struct DetaljiPozicije {
    let pozicija: [Pozicija]
    let opis: String
    let opisFirme: String
    
    init(pozicija: [Pozicija], opis: String, opisFirme: String) {
        self.pozicija = pozicija
        self.opis = opis
        self.opisFirme = opisFirme
    }
    
}
