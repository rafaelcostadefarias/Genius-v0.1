//
//  ViewController.swift
//  Genius v0.1
//
//  Created by Rafael Farias on 05/02/18.
//  Copyright © 2018 IceBox. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //MARK: Outlets
    
    @IBOutlet weak var viewGreen: UIView!
    @IBOutlet weak var viewRed: UIView!
    @IBOutlet weak var viewYellow: UIView!
    @IBOutlet weak var viewBlue: UIView!
    @IBOutlet weak var lblRodada: UILabel!
    
    
    //MARK: Propriedades
    
    var corAudioPlayer = AVAudioPlayer()
    var nomeNota = ""


    
    var arraySequencia : [Int] = []
    var arrayViews : [UIView]!
    
    var arrayCores : [UIView] = []
    var minhaCor : UIView = UIView()
    
    var rodada : Int = 0
    
    //Array com os cliques dados pelo usuario
    var arrayClicado : [Int] = []
    var corView = UIView()
    
    override func viewDidAppear(_ animated: Bool) {
        alerta(titulo: "Genius", mensagem: "Pronto(a)?", acao: "Começar!")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Alerta de memória")
    }
    
    //MARK: Actions
    
    @IBAction func tapGreen(_ sender: UITapGestureRecognizer) {
        var novaCor : Int = 0
        
        if let tag = sender.view?.tag{
            clicaCor(tag)
            //Primeira vez
            //  if arrayClicado.isEmpty{
            arrayClicado.append(tag)
            // }
        }
        
        if arrayClicado.count == arraySequencia.count{
            
            
            //            print("Sequencia \(arraySequencia)")
            //            print()
            //            print("Clicado \(arrayClicado)")
            if arraySequencia.containsSameElements(as: arrayClicado){
                lblRodada.text = "Acertou"
                
                
                novaCor = randomCor()
                arraySequencia.append(novaCor)
                arrayClicado.removeAll()
                
                arrayCores.removeAll()
                for cor in arraySequencia{
                    print(cor)
                    switch cor {
                    case 0:
                        arrayCores.append(viewGreen)
                    case 1:
                        arrayCores.append(viewRed)
                    case 2:
                        arrayCores.append(viewYellow)
                    case 3:
                        arrayCores.append(viewBlue)
                    default:
                        break
                    }
                }
                simonAte15()
            } else {
                
                lblRodada.text = "Errou"
                alerta(titulo: "Genius", mensagem: "Tente novamente!", acao: "OK")
                lblRodada.text = "Rodada"
                
            }
        }
    }
    
    //MARK: Métodos próprios
    
    func simonAte15(){
        
        UIView.animate(withDuration: 1, delay: 1, animations: {
            
            self.rodada += 1
            
            self.lblRodada.text = "Rodada \(self.rodada)"
            
        }, completion: { (true) in
            
            UIView.animate(withDuration: 1.0, delay: 1, animations: {
                    self.myAnimation(0)

            }, completion: { (true) in
                
                UIView.animate(withDuration: 1.0, animations: {
                    self.myAnimation(1)
                    
                }, completion: { (true) in
                    UIView.animate(withDuration: 1.0, animations: {
                        self.myAnimation(2)
                        
                    }, completion: { (true) in
                        UIView.animate(withDuration: 1.0, animations: {
                            self.myAnimation(3)
                            
                        }, completion: { (true) in
                            UIView.animate(withDuration: 1.0, animations: {
                                self.myAnimation(4)
                                
                            }, completion: { (true) in
                                UIView.animate(withDuration: 1.0, animations: {
                                    self.myAnimation(5)
                                    
                                }, completion: { (true) in
                                    UIView.animate(withDuration: 1.0, animations: {
                                        self.myAnimation(6)
                                        
                                    }, completion: { (true) in
                                        UIView.animate(withDuration: 1.0, animations: {
                                            self.myAnimation(7)
                                        }, completion: { (true) in
                                            UIView.animate(withDuration: 1.0, animations: {
                                                self.myAnimation(8)
                                            }, completion: { (true) in
                                                UIView.animate(withDuration: 1.0, animations: {
                                                    self.myAnimation(9)
                                                }, completion: { (true) in
                                                    UIView.animate(withDuration: 1.0, animations: {
                                                        self.myAnimation(10)
                                                    }, completion: { (true) in
                                                        UIView.animate(withDuration: 1.0, animations: {
                                                            self.myAnimation(11)
                                                        }, completion: { (true) in
                                                            UIView.animate(withDuration: 1.0, animations: {
                                                                self.myAnimation(12)
                                                            }, completion: { (true) in
                                                                UIView.animate(withDuration: 1.0, animations: {
                                                                    self.myAnimation(13)
                                                                }, completion: { (true) in
                                                                    UIView.animate(withDuration: 1.0, animations: {
                                                                        self.myAnimation(14)
                                                                    }, completion: { (true) in
                                                                        UIView.animate(withDuration: 1.0, animations: {
                                                                            self.myAnimation(15)
                                                                        }, completion: { (true) in
                                                                            UIView.animate(withDuration: 1.0, delay: 1.5, animations: {
                                                                                //   self.lblRodada.text = "Sua vez!"
                                                                            }, completion: { (true) in
                                                                                ///////
                                                                                self.simon1530()
                                                                            })
                                                                        })
                                                                    })
                                                                })
                                                            })
                                                        })
                                                    })
                                                })
                                            })
                                        })
                                    })
                                })
                            })
                        })
                    })
                })
                
            })
            
        })
    }
    
    func simon1530(){
        UIView.animate(withDuration: 1, delay: 1, animations: {
            //
            //            self.rodada += 1
            //
            //            self.lblRodada.text = "Rodada \(self.rodada)"
            
        }, completion: { (true) in
            
            UIView.animate(withDuration: 1.0, animations: {
                self.myAnimation(16)
            }, completion: { (true) in
                
                UIView.animate(withDuration: 1.0, animations: {
                    self.myAnimation(17)
                    
                }, completion: { (true) in
                    UIView.animate(withDuration: 1.0, animations: {
                        self.myAnimation(18)
                        
                    }, completion: { (true) in
                        UIView.animate(withDuration: 1.0, animations: {
                            self.myAnimation(19)
                            
                        }, completion: { (true) in
                            UIView.animate(withDuration: 1.0, animations: {
                                self.myAnimation(20)
                                
                            }, completion: { (true) in
                                UIView.animate(withDuration: 1.0, animations: {
                                    self.myAnimation(21)
                                    
                                }, completion: { (true) in
                                    UIView.animate(withDuration: 1.0, animations: {
                                        self.myAnimation(22)
                                        
                                    }, completion: { (true) in
                                        UIView.animate(withDuration: 1.0, animations: {
                                            self.myAnimation(23)
                                        }, completion: { (true) in
                                            UIView.animate(withDuration: 1.0, animations: {
                                                self.myAnimation(24)
                                            }, completion: { (true) in
                                                UIView.animate(withDuration: 1.0, animations: {
                                                    self.myAnimation(25)
                                                }, completion: { (true) in
                                                    UIView.animate(withDuration: 1.0, animations: {
                                                        self.myAnimation(26)
                                                    }, completion: { (true) in
                                                        UIView.animate(withDuration: 1.0, animations: {
                                                            self.myAnimation(27)
                                                        }, completion: { (true) in
                                                            UIView.animate(withDuration: 1.0, animations: {
                                                                self.myAnimation(28)
                                                            }, completion: { (true) in
                                                                UIView.animate(withDuration: 1.0, animations: {
                                                                    self.myAnimation(29)
                                                                }, completion: { (true) in
                                                                    UIView.animate(withDuration: 1.0, animations: {
                                                                        self.myAnimation(30)
                                                                    }, completion: { (true) in
                                                                        UIView.animate(withDuration: 1.0, animations: {
                                                                            self.myAnimation(31)
                                                                        }, completion: { (true) in
                                                                            UIView.animate(withDuration: 1.0, delay: 1.5, animations: {
                                                                                self.lblRodada.text = "Sua vez!"
                                                                            }, completion: { (true) in
                                                                                ///////
                                                                            })
                                                                        })
                                                                    })
                                                                })
                                                            })
                                                        })
                                                    })
                                                })
                                            })
                                        })
                                    })
                                })
                            })
                        })
                    })
                })
                
            })
            
        })
    }
    
    func myAnimation(_ rodada : Int){
        
        if arrayCores.count > rodada{
            
            switch arrayCores[rodada] {
            case viewGreen:
                 nomeNota = "3"
            case viewRed:
                 nomeNota = "3"
            case viewYellow:
                 nomeNota = "3"
            case viewBlue:
                 nomeNota = "3"
            default:
                break
            }
            
            let notaURL = Bundle.main.url(forResource: nomeNota, withExtension: "m4a")
           // print(notaURL!)
            
            corAudioPlayer = try! AVAudioPlayer(contentsOf: notaURL!)
            print(corAudioPlayer)
            corAudioPlayer.prepareToPlay()
          //  corAudioPlayer.play()
            
            
            
            minhaCor = arrayCores[rodada]
            minhaCor.alpha = 0
            minhaCor.alpha = 1
        }
    }
    
    func zeraVariaveis(){
        
        arraySequencia.removeAll()
        arrayViews?.removeAll()
        
        arrayCores.removeAll()
        minhaCor = UIView()
        
        rodada = 0
        
        arrayClicado.removeAll()
        corView = UIView()
    }
    
    func alerta(titulo : String, mensagem : String, acao : String){
        
        zeraVariaveis()
        
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        
        let acaoOk = UIAlertAction(title: acao, style: .default) { (acao) in
            
            let primeiraCor = self.randomCor()
            
            self.clicaCor(primeiraCor)
            self.arraySequencia.append(primeiraCor)
        }
        
        alerta.addAction(acaoOk)
        //  print("alerta")
        present(alerta, animated: true, completion: nil)
    }
    
    //Apos o usuario clicar OK no alerta essa funcao sera disparada com a primeira cor random
    func clicaCor(_ cor : Int){
        
        nomeNota = "3"
        
        let notaURL = Bundle.main.url(forResource: nomeNota, withExtension: "m4a")
        // print(notaURL!)
        
        corAudioPlayer = try! AVAudioPlayer(contentsOf: notaURL!)
        print(corAudioPlayer)
        corAudioPlayer.prepareToPlay()
        //corAudioPlayer.play()
        
        
        switch cor {
        case 0:
            corView = viewGreen
        case 1:
            corView = viewRed
        case 2:
            corView = viewYellow
        case 3:
            corView = viewBlue
        default:
            break
        }
        
        
        UIView.animate(withDuration: 1) {
            self.corView.alpha = 0
        }
        
        
        UIView.animate(withDuration: 1) {
            self.corView.alpha = 1
        }
        
        
        
    }
    
    func randomCor() -> Int{
        /*
         Mesma sequencia numerica está nas tags das views
         0 = verde
         1 = vermelho
         2 = amarelo
         3 = azul
         */
        let numeroCor = arc4random_uniform(UInt32(4))
        // print(numeroCor)
        return Int(numeroCor)
    }
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
    
}

//MARK: Extensions
extension Array where Element: Comparable {
    func containsSameElements(as other: [Element]) -> Bool {
        return self.count == other.count && self.sorted() == other.sorted()
    }
}



