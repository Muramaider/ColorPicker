//
//  ViewController.swift
//  ColorPicker
//
//  Created by Aleksey Vinogradov on 30.07.2023.
//

import UIKit

class ViewController: UIViewController {

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
        colorDisplay.backgroundColor =
        UIColor(red: CGFloat(redSlider.value),
                green: CGFloat(greenSlider.value),
                blue: CGFloat(blueSlider.value),
                alpha: 1)
    }
    
    // MARK: - IBAction
    @IBAction func redSliderAction() {
        redValueLabel.text = formatSlider(value: redSlider.value)
        colorDisplay.backgroundColor =
        UIColor(red: CGFloat(redSlider.value),
                green: CGFloat(greenSlider.value),
                blue: CGFloat(blueSlider.value),
                alpha: 1)
    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = formatSlider(value: greenSlider.value)
        colorDisplay.backgroundColor =
        UIColor(red: CGFloat(redSlider.value),
                green: CGFloat(greenSlider.value),
                blue: CGFloat(blueSlider.value),
                alpha: 1)
    }
    
    @IBAction func blueSliderAction() {
        blueValueLabel.text = formatSlider(value: blueSlider.value)
        colorDisplay.backgroundColor =
        UIColor(red: CGFloat(redSlider.value),
                green: CGFloat(greenSlider.value),
                blue: CGFloat(blueSlider.value),
                alpha: 1)
    }
    
    // MARK: - Setup formats
    private func formatSlider(value: Float) -> String {
        String(format: "%.2f", value)
    }
    
}

