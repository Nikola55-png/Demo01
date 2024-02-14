//
//  ListaPozicijaViewModel.swift
//  Demo01
//
//  Created by Nikola Ilic on 14.2.24..
//

import Foundation
import Alamofire

class ListaPozicijaViewModel {
    var pozicija: [Pozicija] = []
    
    func dohvatiPodatke(completion: @escaping () -> Void) {
        AF.request(url).responseDecodable(of: [Pozicija].self) { response in
            switch response.result {
            case .success(let pozicije):
                self.pozicija = pozicije
                completion()
            case .failure(let error):
                print("Greška prilikom dohvatanja podataka: \(error.localizedDescription)")
            }
        }
    }
    
    let url = "https://cd00f355ac8d4a77a328f02229680d8c.api.mockbin.io/"
}
