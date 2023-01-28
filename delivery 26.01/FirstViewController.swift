

import UIKit

class FirstViewController: UIViewController {
    let back = UIImageView()
    let rus = UIButton()
    let eng = UIButton()
    let uz = UIButton()
    let rusIm = UIImageView()
    let engIm = UIImageView()
    let uzIm = UIImageView()
    let del = UIImageView()
    let label1 = UILabel()
    let label2 = UILabel()
    let button = UIButton()
    let butIm = UIImageView()
    let labelBU = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        
        back.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(back)
        back.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        back.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        back.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        back.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        back.image = UIImage(named: "back")
        
        eng.translatesAutoresizingMaskIntoConstraints = false
        back.addSubview(eng)
        eng.topAnchor.constraint(equalTo: back.topAnchor, constant: 60).isActive = true
        eng.leftAnchor.constraint(equalTo: back.leftAnchor,constant: 10).isActive = true
        eng.heightAnchor.constraint(equalToConstant: 50).isActive = true
        eng.widthAnchor.constraint(equalToConstant: 50).isActive = true
        eng.backgroundColor = .systemGray5
        eng.clipsToBounds = true
        eng.layer.cornerRadius = 25
        eng.addTarget(self, action: #selector(buttonEng), for: .touchUpInside)
        
        engIm.translatesAutoresizingMaskIntoConstraints = false
        eng.addSubview(engIm)
        engIm.centerXAnchor.constraint(equalTo: eng.centerXAnchor).isActive = true
        engIm.centerYAnchor.constraint(equalTo: eng.centerYAnchor).isActive = true
        engIm.heightAnchor.constraint(equalToConstant: 30).isActive = true
        engIm.widthAnchor.constraint(equalToConstant: 40).isActive = true
        engIm.image = UIImage(named: "eng")
        
        
        rus.translatesAutoresizingMaskIntoConstraints = false
        back.addSubview(rus)
        rus.topAnchor.constraint(equalTo: back.topAnchor, constant: 60).isActive = true
        rus.leftAnchor.constraint(equalTo: eng.rightAnchor,constant: 10).isActive = true
        rus.heightAnchor.constraint(equalToConstant: 50).isActive = true
        rus.widthAnchor.constraint(equalToConstant: 50).isActive = true
        rus.backgroundColor = .systemGray5
        rus.clipsToBounds = true
        rus.layer.cornerRadius = 25
        rus.addTarget(self, action: #selector(buttonRus), for: .touchUpInside)
        
        rusIm.translatesAutoresizingMaskIntoConstraints = false
        rus.addSubview(rusIm)
        rusIm.centerXAnchor.constraint(equalTo: rus.centerXAnchor).isActive = true
        rusIm.centerYAnchor.constraint(equalTo: rus.centerYAnchor).isActive = true
        rusIm.heightAnchor.constraint(equalToConstant: 30).isActive = true
        rusIm.widthAnchor.constraint(equalToConstant: 40).isActive = true
        rusIm.image = UIImage(named: "rus")
        
        uz.translatesAutoresizingMaskIntoConstraints = false
        back.addSubview(uz)
        uz.topAnchor.constraint(equalTo: back.topAnchor, constant: 60).isActive = true
        uz.leftAnchor.constraint(equalTo: rus.rightAnchor,constant: 10).isActive = true
        uz.heightAnchor.constraint(equalToConstant: 50).isActive = true
        uz.widthAnchor.constraint(equalToConstant: 50).isActive = true
        uz.backgroundColor = .systemGray5
        uz.clipsToBounds = true
        uz.layer.cornerRadius = 25
        uz.addTarget(self, action: #selector(buttonUz), for: .touchUpInside)
        
        uzIm.translatesAutoresizingMaskIntoConstraints = false
        uz.addSubview(uzIm)
        uzIm.centerXAnchor.constraint(equalTo: uz.centerXAnchor).isActive = true
        uzIm.centerYAnchor.constraint(equalTo: uz.centerYAnchor).isActive = true
        uzIm.heightAnchor.constraint(equalToConstant: 30).isActive = true
        uzIm.widthAnchor.constraint(equalToConstant: 40).isActive = true
        uzIm.image = UIImage(named: "uz")
        
        del.translatesAutoresizingMaskIntoConstraints = false
        back.addSubview(del)
        del.topAnchor.constraint(equalTo: uz.bottomAnchor,constant: 30).isActive = true
        del.leftAnchor.constraint(equalTo: back.leftAnchor, constant: 20).isActive = true
        del.rightAnchor.constraint(equalTo: back.rightAnchor,constant: -20).isActive = true
        del.heightAnchor.constraint(equalToConstant: 200).isActive = true
        del.image = UIImage(named: "1")
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        back.addSubview(label1)
        label1.topAnchor.constraint(equalTo: del.bottomAnchor,constant: 20).isActive = true
        label1.leftAnchor.constraint(equalTo: back.leftAnchor,constant: 10).isActive = true
        label1.rightAnchor.constraint(equalTo: back.rightAnchor, constant: -10).isActive = true
        label1.text = "wlc".localized()
        label1.font = .systemFont(ofSize: 40)
        label1.textAlignment = .center
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        back.addSubview(label2)
        label2.topAnchor.constraint(equalTo: label1.bottomAnchor,constant: 20).isActive = true
        label2.leftAnchor.constraint(equalTo: back.leftAnchor,constant: 10).isActive = true
        label2.rightAnchor.constraint(equalTo: back.rightAnchor, constant: -10).isActive = true
        label2.text = "about".localized()
        label2.font = .systemFont(ofSize: 20)
        label2.textAlignment = .center
        label2.textColor = .gray
        label2.numberOfLines = 0
        
        button.translatesAutoresizingMaskIntoConstraints = false
        back.addSubview(button)
        button.topAnchor.constraint(equalTo: label2.bottomAnchor,constant: 20).isActive = true
        button.leftAnchor.constraint(equalTo: back.leftAnchor,constant: 15).isActive = true
        button.rightAnchor.constraint(equalTo: back.rightAnchor,constant: -15).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        button.backgroundColor = .yellow
        button.clipsToBounds = true
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(butonRegs), for: .touchUpInside)

        butIm.translatesAutoresizingMaskIntoConstraints = false
        button.addSubview(butIm)
        butIm.centerYAnchor.constraint(equalTo: button.centerYAnchor).isActive = true
        butIm.leftAnchor.constraint(equalTo: button.leftAnchor,constant: 100).isActive = true
        butIm.image = UIImage(systemName: "rectangle.portrait.and.arrow.right.fill")
        butIm.tintColor = .red
        
        labelBU.translatesAutoresizingMaskIntoConstraints = false
        button.addSubview(labelBU)
        labelBU.centerYAnchor.constraint(equalTo: button.centerYAnchor).isActive = true
        labelBU.leftAnchor.constraint(equalTo: butIm.rightAnchor,constant: 10).isActive = true
        labelBU.text = "sign".localized()
        labelBU.font = .systemFont(ofSize: 20)
        

    }
    
    @objc func butonRegs(){
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)

    }
    
    @objc func buttonUz(){
        Bundle.setLanguage(lang: "uz")
        label1.text = "wlc".localized()
        label2.text = "about".localized()
        labelBU.text = "sign".localized()
    }
    
    @objc func buttonEng(){
        Bundle.setLanguage(lang: "eng")
        label1.text = "wlc".localized()
        label2.text = "about".localized()
        labelBU.text = "sign".localized()
    }
    
    @objc func buttonRus(){
        Bundle.setLanguage(lang: "rus")
        label1.text = "wlc".localized()
        label2.text = "about".localized()
        labelBU.text = "sign".localized()
    }
}


extension Bundle {
    private static var bundle: Bundle!

    public static func localizedBundle() -> Bundle! {
        if bundle == nil {
            let appLang = UserDefaults.standard.string(forKey: "app_lang") ?? "ru"
            let path = Bundle.main.path(forResource: appLang, ofType: "lproj")
            bundle = Bundle(path: path!)
        }

        return bundle;
    }

    public static func setLanguage(lang: String) {
        UserDefaults.standard.set(lang, forKey: "app_lang")
        let path = Bundle.main.path(forResource: lang, ofType: "lproj")
        bundle = Bundle(path: path!)
    }
}
extension String {
    func localized() -> String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.localizedBundle(), value: "", comment: "")
    }

    func localizeWithFormat(arguments: CVarArg...) -> String{
        return String(format: self.localized(), arguments: arguments)
    }
}
