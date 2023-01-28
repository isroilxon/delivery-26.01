//
//  FirsyViewController.swift
//  Lungo project
//
//  Created by mac on 18/01/23.
//

import UIKit

class SecondViewController: UIViewController {
    let logo = UILabel()
    let logoView = UIView()
    let welcome = UILabel()
    let log = UILabel()
    let texField = UITextField()
    let password = UITextField()
    let buttonSig = UIButton()
    let signTex = UILabel()
    let goog = UIButton()
    let gText = UILabel()
    let google = UIImageView()
    let eye = UIButton()
    let eyeImg = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        logoView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoView)
        logoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        logoView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        logoView.backgroundColor = .green.withAlphaComponent(1)
        logoView.clipsToBounds = true
        logoView.layer.cornerRadius = 10
        
        logo.translatesAutoresizingMaskIntoConstraints = false
        logoView.addSubview(logo)
        logo.centerXAnchor.constraint(equalTo: logoView.centerXAnchor).isActive = true
        logo.centerYAnchor.constraint(equalTo: logoView.centerYAnchor).isActive = true
        logo.text = "L"
        logo.font = .systemFont(ofSize: 70)
        logo.textColor = .white
        
        welcome.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(welcome)
        welcome.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 20).isActive = true
        welcome.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        welcome.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        welcome.textAlignment = .center
        welcome.text = "Welcome to Lungo !!"
        welcome.font = .systemFont(ofSize: 30)
        
        log.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(log)
        log.topAnchor.constraint(equalTo: welcome.bottomAnchor, constant: 20).isActive = true
        log.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        log.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        log.textAlignment = .center
        log.text = "Login to Continue"
        
        texField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(texField)
        texField.topAnchor.constraint(equalTo: log.bottomAnchor, constant: 20).isActive = true
        texField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        texField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        texField.placeholder = "Email Address"
        texField.backgroundColor = .systemGray5
        texField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        texField.layer.cornerRadius = 5
        
        password.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(password)
        password.topAnchor.constraint(equalTo: texField.bottomAnchor, constant: 20).isActive = true
        password.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        password.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        password.placeholder = "Password"
        password.isSecureTextEntry = true
        password.backgroundColor = .systemGray5
        password.heightAnchor.constraint(equalToConstant: 50).isActive = true
        password.layer.cornerRadius = 5
        
        eye.translatesAutoresizingMaskIntoConstraints = false
        password.addSubview(eye)
        eye.topAnchor.constraint(equalTo: password.topAnchor, constant: 10).isActive = true
        eye.rightAnchor.constraint(equalTo: password.rightAnchor,constant: -10).isActive = true
        eye.bottomAnchor.constraint(equalTo: password.bottomAnchor, constant: -10).isActive = true
        eye.widthAnchor.constraint(equalToConstant: 40).isActive = true
        eye.addTarget(self, action: #selector(eyeTap), for: .touchUpInside)

        eyeImg.translatesAutoresizingMaskIntoConstraints = false
        eye.addSubview(eyeImg)
        eyeImg.topAnchor.constraint(equalTo: eye.topAnchor).isActive = true
        eyeImg.leftAnchor.constraint(equalTo: eye.leftAnchor).isActive = true
        eyeImg.rightAnchor.constraint(equalTo: eye.rightAnchor).isActive = true
        eyeImg.bottomAnchor.constraint(equalTo: eye.bottomAnchor).isActive = true
        eyeImg.image = UIImage(systemName: "eye")
        eyeImg.tintColor = .gray
        
        buttonSig.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonSig)
        buttonSig.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 30).isActive = true
        buttonSig.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        buttonSig.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        buttonSig.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonSig.layer.cornerRadius = 5
        buttonSig.backgroundColor = .green
        buttonSig.addTarget(self, action: #selector(checkPass), for: .touchUpInside)
        
        signTex.translatesAutoresizingMaskIntoConstraints = false
        buttonSig.addSubview(signTex)
        signTex.centerXAnchor.constraint(equalTo: buttonSig.centerXAnchor).isActive = true
        signTex.centerYAnchor.constraint(equalTo: buttonSig.centerYAnchor).isActive = true
        signTex.text = "Sign in"
        signTex.textColor = .white
        
        goog.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(goog)
        goog.topAnchor.constraint(equalTo: buttonSig.bottomAnchor, constant: 10).isActive = true
        goog.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        goog.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        goog.heightAnchor.constraint(equalToConstant: 70).isActive = true
        goog.layer.cornerRadius = 5
        goog.backgroundColor = .systemGray5
        goog.addTarget(self, action: #selector(googleLink), for: .touchUpInside)
        
        google.translatesAutoresizingMaskIntoConstraints = false
        goog.addSubview(google)
        google.leftAnchor.constraint(equalTo: goog.leftAnchor,constant: 10).isActive = true
        google.topAnchor.constraint(equalTo: goog.topAnchor,constant: 10).isActive = true
        google.bottomAnchor.constraint(equalTo: goog.bottomAnchor,constant: -10).isActive = true
        google.image = UIImage(named: "google")
        google.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        gText.translatesAutoresizingMaskIntoConstraints = false
        goog.addSubview(gText)
        gText.centerXAnchor.constraint(equalTo: goog.centerXAnchor).isActive = true
        gText.centerYAnchor.constraint(equalTo: goog.centerYAnchor).isActive = true
        gText.text = "Sign in with Google"
        
        

    }
    
    @objc func checkPass(){
        if password.text == "55555" && texField.text == "Isroil6133@gmail.com"{
            let vc = RegistrViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
        else {
            password.backgroundColor = .red
            texField.backgroundColor = .red
            DispatchQueue.main.asyncAfter(deadline: .now()+0.5){
                self.password.backgroundColor = .white
                self.texField.backgroundColor = .white
            }
        }
    }
    
    @objc func googleLink() {
        guard let url = URL(string: "https://myaccount.google.com/") else { return  }
        UIApplication.shared.open(url)
    }
    
    @objc func eyeTap(){
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5){
            self.password.isSecureTextEntry = false
        }
    }

}
