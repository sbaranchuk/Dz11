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

    private lazy var loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        loginButton.backgroundColor = UIColor.systemBlue
        loginButton.layer.cornerRadius = 20
        loginButton.layer.borderColor = UIColor.systemBlue.cgColor

        loginButton.layer.shadowColor = UIColor.black.cgColor
        loginButton.layer.shadowOpacity = 0.3
        loginButton.layer.shadowOffset = .zero
        loginButton.layer.shadowRadius = 10
        loginButton.layer.shouldRasterize = true
        loginButton.layer.rasterizationScale = UIScreen.main.scale
        return loginButton
    }()

    private lazy var forgotPasswordLabel: UILabel = {
        let forgotPasswordLabel = UILabel()
        forgotPasswordLabel.text = "Forgot your password?"
        forgotPasswordLabel.textColor = UIColor.white
        forgotPasswordLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        return forgotPasswordLabel
    }()

    private lazy var leftSeparatorView: UIView = {
        let leftSeparatorView = UIView()
        leftSeparatorView.backgroundColor = UIColor.systemGray6
        leftSeparatorView.layer.cornerRadius = 10
        return leftSeparatorView
    }()

    private lazy var orConnectWithLabel: UILabel = {
        let orConnectWithLabel = UILabel()
        orConnectWithLabel.text = "or connect with"
        orConnectWithLabel.textColor = UIColor.systemGray
        orConnectWithLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        return orConnectWithLabel
    }()

    private lazy var rightSeparatorView: UIView = {
        let rightSeparatorView = UIView()
        rightSeparatorView.backgroundColor = UIColor.systemGray6
        rightSeparatorView.layer.cornerRadius = 10
        return rightSeparatorView
    }()

    private lazy var facebookButton: UIButton = {
        let facebookButton = UIButton(type: .custom)
        var config = UIButton.Configuration.filled()
        var color = UIColor(red: CGFloat(68.0 / 255.0), green: CGFloat(89.0 / 255.0), blue: CGFloat(148.0 / 255.0), alpha: 1.0)

        config.image = UIImage(named: "facebook-icon")
        config.imagePadding = 8
        config.imagePlacement = .leading
        config.cornerStyle = .capsule
        config.baseBackgroundColor = color
        config.background.strokeColor = color
        config.titleAlignment = .center
        facebookButton.configuration = config

        facebookButton.setTitle("Facebook", for: .normal)
        facebookButton.setTitleColor(UIColor.white, for: .normal)
        return facebookButton
    }()

    private lazy var twitterButton: UIButton = {
        let twitterButton = UIButton(type: .custom)
        var config = UIButton.Configuration.filled()
        var color = UIColor(red: CGFloat(79.0 / 255.0), green: CGFloat(171.0 / 255.0), blue: CGFloat(240.0 / 255.0), alpha: 1.0)

        config.image = UIImage(named: "twitter-icon")
        config.imagePadding = 8
        config.imagePlacement = .leading
        config.cornerStyle = .capsule
        config.baseBackgroundColor = color
        config.background.strokeColor = color
        config.titleAlignment = .center
        twitterButton.configuration = config

        twitterButton.setTitle("Twitter", for: .normal)
        twitterButton.setTitleColor(UIColor.white, for: .normal)
        return twitterButton
    }()

    private lazy var facebookTwitterStackView: UIStackView = {
        let facebookTwitterStackView = UIStackView()
        facebookTwitterStackView.axis = .horizontal
        facebookTwitterStackView.spacing = 20
        facebookTwitterStackView.addArrangedSubview(facebookButton)
        facebookTwitterStackView.addArrangedSubview(twitterButton)
        return facebookTwitterStackView
    }()

    private lazy var dontHaveAccountLabel: UILabel = {
        let dontHaveAccountLabel = UILabel()
        dontHaveAccountLabel.text = "Dont have account?"
        dontHaveAccountLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        dontHaveAccountLabel.textColor = UIColor.systemGray
        return dontHaveAccountLabel
    }()

    private lazy var signUpLabel: UILabel = {
        let signUpLabel = UILabel()
        signUpLabel.text = "Sign up"
        signUpLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        signUpLabel.textColor = UIColor.purple
        return signUpLabel
    }()

    private lazy var offerToRegisterStack: UIStackView = {
        let offerToRegisterStack = UIStackView()
        offerToRegisterStack.axis = .horizontal
        offerToRegisterStack.addArrangedSubview(dontHaveAccountLabel)
        offerToRegisterStack.addArrangedSubview(signUpLabel)
        offerToRegisterStack.spacing = 20
        return offerToRegisterStack
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
        view.addSubview(loginButton)
        view.addSubview(forgotPasswordLabel)

        view.addSubview(leftSeparatorView)
        view.addSubview(orConnectWithLabel)
        view.addSubview(rightSeparatorView)

        view.addSubview(facebookTwitterStackView)
        view.addSubview(offerToRegisterStack)
    }

    private func setupLayout() {

        image.snp.makeConstraints { make in
            make.top.equalTo(view)
            make.left.equalTo(view)
            make.right.equalTo(view)
            make.bottom.equalTo(leftSeparatorView.snp.top)
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

        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(40)
            make.left.equalTo(view).offset(50)
            make.right.equalTo(view).offset(-50)
            make.height.equalTo(40)
        }

        forgotPasswordLabel.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(15)
            make.centerX.equalTo(view)
        }

        leftSeparatorView.snp.makeConstraints { make in
            make.top.equalTo(image.snp.bottom)
            make.left.equalTo(view).offset(50)
            make.height.equalTo(1)
        }

        orConnectWithLabel.snp.makeConstraints { make in
            make.top.equalTo(image.snp.bottom).offset(-7)
            make.left.equalTo(leftSeparatorView.snp.right).offset(10)
            make.centerX.equalTo(view)
        }

        rightSeparatorView.snp.makeConstraints { make in
            make.top.equalTo(image.snp.bottom)
            make.left.equalTo(orConnectWithLabel.snp.right).offset(10)
            make.right.equalTo(view).offset(-50)
            make.height.equalTo(1)
        }

        facebookTwitterStackView.snp.makeConstraints { make in
            make.top.equalTo(leftSeparatorView.snp.bottom).offset(30)
            make.centerX.equalTo(view)
            make.left.equalTo(view).offset(50)
            make.right.equalTo(view).offset(-50)
            make.height.equalTo(35)
        }

        offerToRegisterStack.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(facebookTwitterStackView.snp.bottom).offset(30)
            make.bottomMargin.equalTo(-30)
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
