//
//  ViewController.swift
//  Sun&Moon
//
//  Created by Юрий Яковлев on 05.09.2022.
//

import UIKit

class ViewController: UIViewController {
    private var isSun = true
    private var count = 0

    @IBOutlet weak private var countLabel: UILabel!
    @IBOutlet weak private var changeButton: UIButton!
    @IBOutlet weak private var skyImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func buttonDidTap(_ sender: Any) {
        isSun.toggle()
        count += 1
        countLabel.text = "Значение счётчика: \(count)"
        toggleIcon()
    }
    
    private func toggleIcon() {
        skyImageView.image = UIImage(systemName: isSun ? "sun.max" : "moon")
        skyImageView.tintColor = isSun ? .systemYellow : .gray
    }
    
}

