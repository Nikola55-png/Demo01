//
//  DetaljiVC.swift
//  Demo01
//
//  Created by Nikola Ilic on 14.2.24..
//

import UIKit
import Branch

class DetaljiVC: UIViewController {
    
    var viewModel = DetaljiPozicijeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        prikazi()
   


        
            }
       
    func prikazi () {
        if let detalji = viewModel.pozicijaDetalji {
                    nazivPozicije.text = detalji.pozicija.naziv
                    rangPlate.text = detalji.pozicija.plata
                    image.af.setImage(withURL: URL(string: detalji.pozicija.slika)!)
                    spisakTehnologija.text = detalji.tehnologije.joined(separator: ", ")
                    opisPozicije.text = detalji.opisPozicije
                    opisKompanije.text = detalji.opisFirme
                }
        
    }
    
    @IBOutlet weak var image: UIImageView!
    

    @IBOutlet weak var nazivPozicije: UILabel!
    
    @IBOutlet weak var rangPlate: UILabel!
    
    @IBOutlet weak var spisakTehnologija: UILabel!
    
    @IBOutlet weak var opisPozicije: UITextView!
    
    @IBOutlet weak var opisKompanije: UITextView!
    
    @IBAction func AcShare(_ sender: Any) {
        share ()
    }
    
    func share () {
        if let brancLink = viewModel.kreirajBrancLink() {
            let activityVC = UIActivityViewController(activityItems: [brancLink], applicationActivities: nil)
            present(activityVC, animated: true, completion: nil)
        }
    }
    
  
    

    

    

    
    
    
}
