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
                    DispatchQueue.main.async {
                        self.tabela.reloadData()
                    }
                }
    }

    @IBOutlet weak var tabela: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.pozicijeDetalji.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CelijaPozicije else {
            fatalError("Nemoguće dohvatiti celiju")
        }

        let pozicijaDetalji = viewModel.pozicijeDetalji[indexPath.row]
        cell.nazivFirmeLbl.text = pozicijaDetalji.pozicija.naziv
        cell.plataLbl.text = pozicijaDetalji.pozicija.plata
        cell.postaviSliku(pozicijaDetalji.pozicija.slika)

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detaljiVC = storyboard?.instantiateViewController(withIdentifier: "DetaljiVC") as! DetaljiVC
        detaljiVC.viewModel.pozicijaDetalji = viewModel.pozicijeDetalji[indexPath.row]
        navigationController?.pushViewController(detaljiVC, animated: true)
    }


}

