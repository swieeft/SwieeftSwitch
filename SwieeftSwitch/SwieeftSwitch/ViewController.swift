//
//  ViewController.swift
//  SwieeftSwitch
//
//  Created by 1 on 14/02/2020.
//  Copyright © 2020 swieeft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchButton: SwieeftSwitchButton!
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        switchButton.delegate = self

        label.text = "\(switchButton.isOn)"
    }

    @IBAction func setOnChangeButtonAction(_ sender: Any) {
        switchButton.setOn(on: !switchButton.isOn, animated: true)
    }

    @IBAction func isOnChangeButtonAction(_ sender: Any) {
        switchButton.isOn = !switchButton.isOn
    }
}

extension ViewController: SwieeftSwitchButtonDelegate {
    func isOnValueChange(isOn: Bool) {
        label.text = "\(isOn)"
    }
}
