//
//  RegistrViewController.swift
//  Lungo project
//
//  Created by mac on 18/01/23.
//

import UIKit

class RegistrViewController: UIViewController {
    
    let logo = UILabel()
    let logoView = UIView()
    let welcome = UILabel()
    let log = UILabel()
    let name = UITextField()
    let email = UITextField()
    let password = UITextField()
    let repassword = UITextField()
    let eye = UIButton()
    let eyeImg = UIImageView()
    let eye2 = UIButton()
    let eyeImg2 = UIImageView()
    let buttonSig = UIButton()
    let signTex = UILabel()

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
        
        name.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(name)
        name.topAnchor.constraint(equalTo: log.bottomAnchor, constant: 20).isActive = true
        name.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        name.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        name.placeholder = "Name"
        name.backgroundColor = .systemGray5
        name.heightAnchor.constraint(equalToConstant: 50).isActive = true
        name.layer.cornerRadius = 5
        
        email.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(email)
        email.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 20).isActive = true
        email.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        email.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        email.placeholder = "Email"
        email.backgroundColor = .systemGray5
        email.heightAnchor.constraint(equalToConstant: 50).isActive = true
        email.layer.cornerRadius = 5
        
        password.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(password)
        password.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 20).isActive = true
        password.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        password.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        password.placeholder = "Password"
        password.isSecureTextEntry = true
        password.backgroundColor = .systemGray5
        password.heightAnchor.constraint(equalToConstant: 50).isActive = true
        password.layer.cornerRadius = 5
        
        repassword.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(repassword)
        repassword.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 20).isActive = true
        repassword.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        repassword.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        repassword.placeholder = "Re - type password"
        repassword.isSecureTextEntry = true
        repassword.backgroundColor = .systemGray5
        repassword.heightAnchor.constraint(equalToConstant: 50).isActive = true
        repassword.layer.cornerRadius = 5
        
        eye.translatesAutoresizingMaskIntoConstraints = false
        password.addSubview(eye)
        eye.topAnchor.constraint(equalTo: password.topAnchor, constant: 10).isActive = true
        eye.rightAnchor.constraint(equalTo: password.rightAnchor,constant: -10).isActive = true
        eye.bottomAnchor.constraint(equalTo: password.bottomAnchor, constant: -10).isActive = true
        eye.widthAnchor.constraint(equalToConstant: 40).isActive = true
//        eye.addTarget(self, action: #selector(eyeTap), for: .touchUpInside)

        eyeImg.translatesAutoresizingMaskIntoConstraints = false
        eye.addSubview(eyeImg)
        eyeImg.topAnchor.constraint(equalTo: eye.topAnchor).isActive = true
        eyeImg.leftAnchor.constraint(equalTo: eye.leftAnchor).isActive = true
        eyeImg.rightAnchor.constraint(equalTo: eye.rightAnchor).isActive = true
        eyeImg.bottomAnchor.constraint(equalTo: eye.bottomAnchor).isActive = true
        eyeImg.image = UIImage(systemName: "eye")
        eyeImg.tintColor = .gray
        
        eye2.translatesAutoresizingMaskIntoConstraints = false
        repassword.addSubview(eye2)
        eye2.topAnchor.constraint(equalTo: repassword.topAnchor, constant: 10).isActive = true
        eye2.rightAnchor.constraint(equalTo: repassword.rightAnchor,constant: -10).isActive = true
        eye2.bottomAnchor.constraint(equalTo: repassword.bottomAnchor, constant: -10).isActive = true
        eye2.widthAnchor.constraint(equalToConstant: 40).isActive = true
//        eye.addTarget(self, action: #selector(eyeTap), for: .touchUpInside)

        eyeImg2.translatesAutoresizingMaskIntoConstraints = false
        eye2.addSubview(eyeImg2)
        eyeImg2.topAnchor.constraint(equalTo: eye2.topAnchor).isActive = true
        eyeImg2.leftAnchor.constraint(equalTo: eye2.leftAnchor).isActive = true
        eyeImg2.rightAnchor.constraint(equalTo: eye2.rightAnchor).isActive = true
        eyeImg2.bottomAnchor.constraint(equalTo: eye2.bottomAnchor).isActive = true
        eyeImg2.image = UIImage(systemName: "eye")
        eyeImg2.tintColor = .gray
        
        buttonSig.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonSig)
        buttonSig.topAnchor.constraint(equalTo: repassword.bottomAnchor, constant: 30).isActive = true
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
        signTex.text = "Register"
        signTex.textColor = .white

    }
    
    @objc func checkPass(){
        if password.text == repassword.text {
            let vc = SuccesViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
        else {
            password.backgroundColor = .red
            repassword.backgroundColor = .red
            DispatchQueue.main.asyncAfter(deadline: .now()+0.5){
                self.password.backgroundColor = .white
                self.repassword.backgroundColor = .white
            }
        }
    }

  

}
