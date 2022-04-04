//
//  ViewController.swift
//  KeyboardLayoutGuideExample
//
//  Created by Soumitra Bera on 04/04/22.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Subviews
    
    /// TextView for inputs
    private let textView: UITextView = {
        let textView = UITextView()
        textView.isEditable = true
        textView.backgroundColor = .systemFill
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.font = .systemFont(ofSize: 22, weight: .regular)
        return textView
    }()
    
    /// Submit Button
    private let submit: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemTeal
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Submit", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22, weight: .semibold)
        button.layer.cornerRadius = 22
        return button
    }()
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(textView)
        view.addSubview(submit)
        
        self.addConstraint()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textView.becomeFirstResponder()
    }
    /// Constraint setup
    private func addConstraint() {
        NSLayoutConstraint.activate([
            textView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            textView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            textView.bottomAnchor.constraint(equalTo: submit.topAnchor, constant: -10),
            
            submit.widthAnchor.constraint(equalToConstant: 300),
            submit.heightAnchor.constraint(equalToConstant: 50),
            submit.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            submit.bottomAnchor.constraint(equalTo: view.keyboardLayoutGuide.topAnchor, constant: -10)
        ])
    }
}

