//
//  MyCellCollectionViewCell.swift
//  MyCollectionView
//
//  Created by seif on 2023-10-20.
//

import UIKit

class MyCell: UICollectionViewCell {

    let daylabel: UILabel={
        
        let control = UILabel()
        control.textColor = UIColor.white
        control.translatesAutoresizingMaskIntoConstraints = false
        return control
//        let control = UIFont.system
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let myTextLabel:UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 14)
        control.textColor = .red
        control.text = "Seif"
        control.textColor = .yellow
        control.translatesAutoresizingMaskIntoConstraints = false
        return control
    }()
    private func addView(){
        backgroundColor = UIColor.black
        addSubview(myTextLabel)
        addSubview(daylabel)
        
        daylabel.pinCenter(to: self)
        myTextLabel.pinLeft(to: self)
        
        
        
    }
}
