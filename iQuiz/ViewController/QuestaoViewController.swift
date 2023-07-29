//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Lorenzo Campos on 28/07/23.
//

import UIKit

class QuestaoViewController: UIViewController {
    var pontuação = 0
    var numeroQuestao = 0

    @IBOutlet weak var TituloQuestao: UILabel!
    @IBOutlet var botoesRespostas: [UIButton]!
    
    @IBAction func BotaoRespostaPressionado(_ sender: UIButton) {
        let usuarioAcertou = sender.tag == questoes[numeroQuestao].indexResposta
        if usuarioAcertou {
            pontuação += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        }else{
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if numeroQuestao < questoes.count - 1 {
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        }else{
            navegaParaDesempenho()
        }
    }
    
    func navegaParaDesempenho(){
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarQuestao()
        
    }
    
    func configurarLayout() {
        navigationItem.hidesBackButton = true
        TituloQuestao.numberOfLines = 0
        TituloQuestao.textAlignment = .center
        for botao in botoesRespostas {
            botao.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configurarQuestao(){
        for botao in botoesRespostas {
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
        TituloQuestao.text = questoes[numeroQuestao].titulo
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }
        desempenhoVC.pontuacao = pontuação
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
