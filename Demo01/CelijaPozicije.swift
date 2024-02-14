//
//  CelijaPozicije.swift
//  Demo01
//
//  Created by Nikola Ilic on 14.2.24..
//

import UIKit
import AlamofireImage

class CelijaPozicije: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBOutlet weak var nazivFirmeLbl: UILabel!
    
    
    
    
    @IBOutlet weak var plataLbl: UILabel!
    
    @IBOutlet weak var slika: UIImageView!
    
    func postaviSliku(_ urlString: String) {
            guard let url = URL(string: urlString) else {
                return
            }

            slika.af.setImage(withURL: url)
        }
    
}
