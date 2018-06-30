//
//  ViewController.swift
//  autoLayoutConstraints
//
//  Created by Nathaniel Banderas on 6/29/18.
//  Copyright © 2018 Nathaniel Banderas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        
        return textView
    }()
    
    let titleLabel: UILabel = {
        let labelView = UILabel()
        labelView.text = "What is Lorem Ipsum?"
        labelView.font = UIFont.boldSystemFont(ofSize: 20)
        labelView.textAlignment = .center
        
        return labelView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(titleLabel)
        view.addSubview(descriptionTextView)
        
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

