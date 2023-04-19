//
//  MVVMViewModel.swift
//  TableViewMVCMVVM
//
//  Created by Anderson Sales on 18/04/23.
//

import Foundation

class MVVMViewModel {
    
    private var sfSymbols: [SFSymbol] = [SFSymbol(name: "gear")]
    
    func setNewSFSymbol(name: String) {
        sfSymbols.append(SFSymbol(name: name))
    }
    
    func clearSFSymbols() {
        sfSymbols.removeAll()
    }
    
    var numberOfRowsInSection: Int {
        return sfSymbols.count
    }
    
    func getSFSymbol(index: Int) -> SFSymbol {
        return sfSymbols[index]
    }
    
    var heightForRowAt: CGFloat{
        80
    }
    
}
