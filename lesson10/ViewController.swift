//
//  ViewController.swift
//  lesson10
//
//  Created by Виктория Савич on 28.09.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var commonSquare: UIView!
    
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var redSquareH: NSLayoutConstraint!
    @IBOutlet weak var redSquareW: NSLayoutConstraint!
    
    @IBOutlet weak var greenSquare: UIView!
    @IBOutlet weak var greenSquareH: NSLayoutConstraint!
    @IBOutlet weak var greenSquareW: NSLayoutConstraint!
    
    @IBOutlet weak var blueSquare: UIView!
    @IBOutlet weak var blueSquareH: NSLayoutConstraint!
    @IBOutlet weak var blueSquareW: NSLayoutConstraint!
    
    @IBOutlet weak var yellowSquare: UIView!
    @IBOutlet weak var yellowSquareH: NSLayoutConstraint!
    @IBOutlet weak var yellowSquareW: NSLayoutConstraint!
   
    
    @IBAction func actionBiggerSquare(_ sender: UIButton) {
        moreBiggerSquare()
    }
    
    @IBAction func actionReductionButton(_ sender: UIButton) {
        smallSquareR()
       

    }
    
    @IBAction func actionDisappearButton(_ sender: UIButton) {
        if self.commonSquare.isHidden == true {
            self.commonSquare.isHidden = false
        } else {
            self.commonSquare.isHidden = true
        }
    }
    
    @IBAction func handlePan(_ recognizer: UIPanGestureRecognizer) {
        guard let recognizerView = recognizer.view else {
            return
        }
        
        let translation = recognizer.translation(in: view)
        recognizerView.center.x += translation.x
        recognizer.view?.center.y += translation.y
        recognizer.setTranslation(.zero, in: view)
    }
    
    func smallSquareR() {
        if redSquareW.constant == 100 && redSquareH.constant == 100 {
            redSquareW.constant = 50
        } else {
            if greenSquareW.constant == 100 && greenSquareH.constant == 100 {
                greenSquareW.constant = 50
            } else {
                if yellowSquareW.constant == 100 && yellowSquareH.constant == 100 {
                    yellowSquareW.constant = 50
                } else {
                    if blueSquareW.constant == 100 && blueSquareH.constant == 100 {
                        blueSquareW.constant = 50
                    } else {
                        redSquareW.constant = 50
                        greenSquareW.constant = 50
                        yellowSquareW.constant = 50
                        blueSquareW.constant = 50
                    }
                }
                
            }
        }
    }
        
    func moreBiggerSquare() {
        if redSquareW.constant == 50 && redSquareH.constant == 50 {
            redSquareW.constant = 100
        } else {
            if greenSquareW.constant == 50 && greenSquareH.constant == 50 {
                greenSquareW.constant = 100
            } else {
                if yellowSquareW.constant == 50 && yellowSquareH.constant == 50 {
                    yellowSquareW.constant = 100
                } else {
                    if blueSquareW.constant == 50 && blueSquareH.constant == 50 {
                        blueSquareW.constant = 100
                    } else {
                        redSquareW.constant = 100
                        greenSquareW.constant = 100
                        yellowSquareW.constant = 100
                        blueSquareW.constant = 100
                    }
                }

            }
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

