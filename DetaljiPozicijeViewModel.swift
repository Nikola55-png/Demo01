//
//  DetaljiPozicijeViewModel.swift
//  Demo01
//
//  Created by Nikola Ilic on 14.2.24..
//

import Branch

class DetaljiPozicijeViewModel {
    var pozicijaDetalji: PozicijaDetalji?
    
    func kreirajBrancLink () -> String? {
        guard let pozicija = pozicijaDetalji?.pozicija else {
            return nil
        }
        
        let branchObjekat = BranchUniversalObject(canonicalIdentifier: "itemId = \(pozicija.naziv)")
        branchObjekat.title = pozicija.naziv
        branchObjekat.imageUrl = pozicija.slika
        branchObjekat.contentMetadata.customMetadata["plata"] = pozicija.plata
        
        
        let linkPropertiji = BranchLinkProperties()
        linkPropertiji.feature = "share"
        linkPropertiji.addControlParam("$desktop_url", withValue: "")
        
        
        let shareOpcije = BranchActivityItemProvider(placeholderItem: BranchShareLink(universalObject: branchObjekat, linkProperties: linkPropertiji))
        let activityVC = UIActivityViewController(activityItems: [shareOpcije], applicationActivities: nil)
        
        return nil
    }
}
