//
//  HomeViewController.swift
//  TodoList
//
//  Created by 野澤拓己 on 2020/11/14.
//

import UIKit

class HomeViewController: UIViewController {
    
    // 構成要素
//   # private let Hstack = UIStackView()
    
    private let headerView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 40
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowRadius = 8
        view.layer.shadowOffset = CGSize(width: 0, height: 4)
        view.clipsToBounds = true
        
        return view
    }()
    
    private let shadowView : UIView = {
        let view = UIView()
        view.backgroundColor = .white //背景が透明だと影が表示されない
        view.layer.cornerRadius = 40
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowRadius = 8
        view.layer.shadowOffset = CGSize(width: 0, height: 4)
        
        return view

    }()
    
    private let titleLabel : UILabel = {
        let label = UILabel()
        label.text = "Task"
        label.font = UIFont.boldSystemFont(ofSize: 40)
//        label.backgroundColor = .blue
        
        return label
    }()
    
    private let editButton : UIButton = {
        let button = UIButton()
        button.setTitle("Edit", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemRed
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 8.0
                
        
        return button
    }()
    
    private let plusButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        
        // plusの設定
        let plusImage = UIImage(systemName: "plus")
        button.setImage(plusImage, for: .normal)
        button.tintColor = .systemBlue
        button.imageView?.contentMode = .scaleAspectFit
        button.contentHorizontalAlignment = .fill
        button.contentVerticalAlignment = .fill
        button.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10);
        
        // layerの設定
        button.layer.cornerRadius = 30
        button.layer.zPosition = 99
        
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubViews()
//        configureHstack()
        
    }
    
    private func addSubViews() {
        
        view.addSubview(shadowView)
        view.addSubview(headerView)
        
        view.addSubview(plusButton)
        view.addSubview(titleLabel)
        view.addSubview(editButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // headerViewの実装
        headerView.frame = CGRect(
            x: 0,
            y: 0,
            width: view.frame.size.width,
            height: view.frame.size.height/6
        )
        
        shadowView.frame = CGRect(
            x: 0,
            y: 0,
            width: view.frame.size.width,
            height: view.frame.size.height/6
        )
        
        // plusButtonの実装
        plusButton.frame = CGRect(
            x: (headerView.frame.size.width / 2) - 30,
            y: headerView.frame.size.height - 30,
            width: 60,
            height: 60
        )
        
//    #    setHstackConstraits()
        configureHstack()
        
    }
    
    
    
    private func configureHstack() {
        
//     #   view.addSubview(Hstack)
//        Hstack.axis = .horizontal
//        Hstack.distribution = .fillProportionally
//        Hstack.spacing = 5
//        Hstack.backgroundColor = .yellow
        
//        addPartsToHstack()
        // titleLabelの実装
        headerView.addSubview(titleLabel)
        titleLabel.frame = CGRect(
            x: 20,
            y: view.safeAreaInsets.top + 10,
            width: headerView.frame.size.width - 160,
            height: 50)

        // editButtonの実装
        headerView.addSubview(editButton)
        editButton.frame = CGRect(
            x: view.frame.size.width - 100,
            y: view.safeAreaInsets.top + 20,
            width: 80,
            height: 40)
//
        
    }
    
//   # private func addPartsToHstack() {
//
//        Hstack.addArrangedSubview(titleLabel)
//        Hstack.addArrangedSubview(editButton)
//
//    }
    
//   # func setHstackConstraits() {
//
//        Hstack.translatesAutoresizingMaskIntoConstraints = false
//        Hstack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
//        Hstack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
//        Hstack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
//
//    }


}
