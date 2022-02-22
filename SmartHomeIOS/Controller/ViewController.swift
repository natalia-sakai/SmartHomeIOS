//
//  ViewController.swift
//  SmartHomeIOS
//
//  Created by Natalia Sakai on 14/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startPressed(_ sender: UIButton) {
       /*
        //USAR QUANDO PRECISAR PASSAR DADOS
        let homeViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeView")
        self.navigationController?.pushViewController(homeViewController!, animated: true)
        
        //USANDO SEGUE VC CONSEGUE PASSAR VALORES ENTRE VIEW, PARA ISSO VC CRIA UM IDENTIFIER NA SEGUE
        performSegue(withIdentifier: "homeViewSegue", sender: self)
        */
    }
    /*
    //PREPARE PARA MANDAR
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //verifica a acao que vai ser feita
        if(segue.identifier == "txtblabla"){
            let vc = segue.destination as? HomeViewController
            //variavel criada na segunda view, passa valores
            vc?.txtblabla = "teste"
        }
    }
     */
}

 
