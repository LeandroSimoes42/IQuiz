//
//  ViewController.swift
//  iQuiz
//
//  Created by Lorenzo Campos on 28/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botaoQuiz: UIButton!
    
    @IBAction func botaoPressionado(_ sender: Any) {
        print("Botão foi apertado")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
    }
    
    func configurarLayout() {
        botaoQuiz.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true
    }


}

