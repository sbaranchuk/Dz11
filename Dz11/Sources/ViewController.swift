//
//  ViewController.swift
//  Dz11
//
//  Created by Admin on 25/12/2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    // MARK: - UI Elements

    private lazy var image: UIImageView = {
        let image = UIImage(named: "background-gradient")
        let imageView = UIImageView(image: image)
        return imageView
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return label
    }()

    private lazy var loginTextField: UITextField = {
        let loginTextField = UITextField()
        loginTextField.textColor = UIColor.gray
        loginTextField.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        loginTextField.placeholder = "keanureveese01"
        loginTextField.backgroundColor = UIColor.white
        loginTextField.layer.cornerRadius = 20
        loginTextField.setLeftIcon(UIImage(named: "login-icon")!)
        loginTextField.setRightIcon(UIImage(named: "ok-icon")!)
        return loginTextField
    }()

    private lazy var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.textColor = UIColor.gray
        passwordTextField.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        passwordTextField.placeholder = "Password"
        passwordTextField.backgroundColor = UIColor.white
        passwordTextField.layer.cornerRadius = 20
        passwordTextField.setLeftIcon(UIImage(named: "password-icon")!)
        return passwordTextField
    }()

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setups

    private func setupView() {
        view.backgroundColor = .white
    }

    private func setupHierarchy() {
        view.addSubview(image)
        view.addSubview(label)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
    }

    private func setupLayout() {

        image.snp.makeConstraints { make in
            make.top.equalTo(view)
            make.left.equalTo(view)
            make.right.equalTo(view)
        }

        label.snp.makeConstraints { make in
            make.top.equalTo(view).offset(70)
            make.centerX.equalTo(view)
        }

        loginTextField.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(40)
            make.left.equalTo(view).offset(50)
            make.right.equalTo(view).offset(-50)
            make.height.equalTo(40)
        }

        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(loginTextField.snp.bottom).offset(20)
            make.left.equalTo(view).offset(50)
            make.right.equalTo(view).offset(-50)
            make.height.equalTo(40)
        }
    }
}

// MARK: - Extensions

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 25, y: 6, width: 20, height: 17))
        iconView.image = image
        let iconConteinerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 55, height: 30))
        iconConteinerView.addSubview(iconView)
        leftView = iconConteinerView
        leftViewMode = .always
    }

    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 0, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconConteinerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        iconConteinerView.addSubview(iconView)
        rightView = iconConteinerView
        rightViewMode = .always
    }
}
