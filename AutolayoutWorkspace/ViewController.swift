//
//  ViewController.swift
//  AutolayoutWorkspace
//
//  Created by EMİN ÇETİN on 10.01.2023.
//

import UIKit


class HeaderView: UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .cyan
        
    
        
        let headerImage = UIImageView(image: UIImage(named: "twitterback"))
        headerImage.translatesAutoresizingMaskIntoConstraints = false
        headerImage.clipsToBounds = true

        self.addSubview(headerImage)
        
        headerImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        headerImage.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 0).isActive = true
        headerImage.rightAnchor.constraint(equalTo:  self.rightAnchor, constant: 0).isActive = true
        headerImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        
        let profileImage = UIImageView(image: UIImage(named: "twitterprofil"))
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        profileImage.clipsToBounds = true
        profileImage.layer.cornerRadius = 45
        profileImage.layer.borderWidth = 3
        profileImage.layer.borderColor = UIColor.black.cgColor
        self.addSubview(profileImage)
        
        
        profileImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 25).isActive = true
        profileImage.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -10).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 90).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
        let editProfile = UIButton()
        editProfile.setTitle("Edit Profile", for: .normal)

        editProfile.translatesAutoresizingMaskIntoConstraints = false
        editProfile.clipsToBounds = true
        editProfile.layer.cornerRadius = 15
        editProfile.layer.borderWidth = 2
        editProfile.layer.borderColor = UIColor.black.cgColor
        self.addSubview(editProfile)
        
        editProfile.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -25).isActive = true
        editProfile.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -39).isActive = true
        editProfile.heightAnchor.constraint(equalToConstant: 34).isActive = true
        editProfile.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
            
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
  
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
        let headerView = HeaderView()
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(headerView)
        
        headerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        headerView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 0).isActive = true
        headerView.rightAnchor.constraint(equalTo:  view.rightAnchor, constant: 0).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
    }
}

