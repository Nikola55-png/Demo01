//
//  ViewController.swift
//  Demo01
//
//  Created by Nikola Ilic on 14.2.24..
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var viewModel = ListaPozicijaViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tabela.dataSource = self
        self.tabela.delegate = self
        viewModel.dohvatiPodatke {
                    self.tabela.reloadData()
                }
    }

    @IBOutlet weak var tabela: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.pozicija.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CelijaPozicije else {
            fatalError("Nemoguće dohvatiti celiju")
        }

        let pozicija = viewModel.pozicija[indexPath.row]
        cell.nazivFirmeLbl.text = pozicija.naziv
        cell.plataLbl.text = pozicija.plata
        cell.postaviSliku(pozicija.slika)

        return cell
    }

    
}

