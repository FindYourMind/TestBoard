//
//  ViewController.swift
//  TestBoard
//
//  Created by Fedor on 13.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    @IBOutlet weak var sunImageView: UIImageView!
    
    private var isSun: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        skyUpdate()
        
        
    }

    fileprivate func skyUpdate() {
        if isSun {
            sunImageView.image = UIImage(systemName: "sun.max")
            sunImageView.tintColor = .orange
            view.backgroundColor = .white
            changeButton.backgroundColor = UIColor.black
            changeButton.tintColor = UIColor.white
        } else {
            sunImageView.image = UIImage(systemName: "moon")
            sunImageView.tintColor = .yellow
            view.backgroundColor = .black
            changeButton.backgroundColor = UIColor.white
            changeButton.tintColor = UIColor.black
        }
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        print("Выотпустили кнопку.")
        isSun.toggle()
        skyUpdate()

    }
    
    @IBAction func buttonTap(_ sender: Any) {
        print("Вы нажали кнопку, но ещё не отпустили.")
    }
}

