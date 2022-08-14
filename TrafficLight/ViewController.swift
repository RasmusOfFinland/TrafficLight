//
//  ViewController.swift
//  TrafficLight
//
//  Created by Вячеслав Сорокин on 12.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var changeColorButton: UIButton!
    
    var colorState = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewsOfTrafficLightColor = [
            redLightView, yellowLightView, greenLightView
        ]
        
        for view in viewsOfTrafficLightColor {
            view?.alpha = 0.3
            view?.layer.cornerRadius = view?.frame.height ?? 0 / 2
            
        }
        
       changeColorButton.layer.cornerRadius = 10
        
        }
    
    @IBAction func switchColorButtonAction() {
        
        changeColorButton.setTitle("Next", for: .normal)
        
        switch colorState {
        case "red" :
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            colorState = "yellow"
        case "yellow":
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            colorState = ""
            
        default:
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            colorState = "red"
            
        }
        
        
    }
    

}

