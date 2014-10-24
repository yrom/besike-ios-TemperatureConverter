//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by yrom on 14-10-24.
//  Copyright (c) 2014年 yrom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!
    
    @IBAction func temperatureSliderChanged(sender: UISlider){
        // read the value of slider and update temperature displays
        self.updateTemperatureDisplays()
    }
    
    func updateTemperatureDisplays(){
        let c = temperatureSlider.value
        let f = (c * 9 / 5) + 32
        let k = c + 273.15
        
        celsiusLabel.text = TemperatureFormatter.format(c, u: "C")
        fahrenheitLabel.text = TemperatureFormatter.format(f, u: "F")
        kelvinLabel.text = TemperatureFormatter.format(k, p: 2, u: "K")
    }
    
    class TemperatureFormatter{
        class func format(value: Float, p: Int = 1, u: String) -> String{
            return String(format: "%.\(p)f%@", value, u)
        
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

