//
//  ViewController.swift
//  ColorPicker
//
//  Created by Aleksey Vinogradov on 30.07.2023.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet var colorDisplay: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    // MARK: - Life cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorDisplay.layer.cornerRadius = 15
        
        setColor()
        
        redValueLabel.text = string(from: redSlider)
        greenValueLabel.text = string(from: greenSlider)
        blueValueLabel.text = string(from: blueSlider)
    }
    
    // MARK: - IBAction
    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        switch sender {
        case redSlider:
            redValueLabel.text = string(from: redSlider)
        case greenSlider:
            greenValueLabel.text = string(from: greenSlider)
        default:
            blueValueLabel.text = string(from: blueSlider)
        }
    }
    
    // MARK: - Setup Value Label
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    //MARK: - Setup background color
    private func setColor() {
        colorDisplay.backgroundColor = UIColor(
            red: redSlider.value.cgFloat(),
            green: greenSlider.value.cgFloat(),
            blue: blueSlider.value.cgFloat(),
            alpha: 1
        )
    }
}

extension Float {
    func cgFloat() -> CGFloat {
        CGFloat(self)
    }
}
