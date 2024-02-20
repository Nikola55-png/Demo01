//
//  ListaPozicijaViewModel.swift
//  Demo01
//
//  Created by Nikola Ilic on 14.2.24..
//

import Foundation
import Alamofire

class ListaPozicijaViewModel {
    var pozicijeDetalji: [PozicijaDetalji] = []

    func dohvatiPodatke(completion: @escaping () -> Void) {
        AF.request(url).responseDecodable(of: [PozicijaDetalji].self) { response in
            switch response.result {
            case .success(let pozicijeDetalji):
                self.pozicijeDetalji = pozicijeDetalji
                completion()
            case .failure(let error):
                print("Greška prilikom dohvatanja podataka: \(error.localizedDescription)")
            }
        }
    }

    let url = "https://3facafe67f0f4c1aa354290968b24481.api.mockbin.io/"
}

