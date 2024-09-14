//
//  ViewController.swift
//  Calculator
//
//  Created by Umut Yüksel on 28.08.2024.
//

import UIKit

class Anasayfa: UIViewController {

    var ilkSayi: Double!
    var ikinciSayi:Double?
    var islem:String?
    
    @IBOutlet weak var labelSonuc: UILabel!
    
    
    @IBAction func numbers(_ sender: UIButton) {
        if labelSonuc.text == "0" {
            labelSonuc.text = String(sender.tag)
        }
        else{
            labelSonuc.text = labelSonuc.text! + String(sender.tag)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonTemizle(_ sender: Any) {
        labelSonuc.text = "0"
    }
    
    @IBAction func buttonBol(_ sender: Any) {
        ilkSayi = Double(labelSonuc.text!)
        labelSonuc.text = "0"
        islem = "/"
    }
    
    @IBAction func buttonCarp(_ sender: Any) {
        ilkSayi = Double(labelSonuc.text!)
        labelSonuc.text = "0"
        islem = "*"
    }
    
    @IBAction func buttonCikar(_ sender: Any) {
        ilkSayi = Double(labelSonuc.text!)
        labelSonuc.text = "0"
        islem = "-"
    }
    
    @IBAction func buttonTopla(_ sender: UIButton) {
        ilkSayi = Double(labelSonuc.text!)
        labelSonuc.text = "0"
        islem = "+"
    }
    
    @IBAction func buttonEsittir(_ sender: Any) {
        ikinciSayi = Double(labelSonuc.text!)
        var sonuc:Double = 0.0
        
        if let islem = islem {
            if islem == "/"{
                sonuc = Double(ilkSayi / ikinciSayi!)
            }
            else if islem == "*"{
                sonuc = Double(ilkSayi * ikinciSayi!)
            }
            else if islem == "-"{
                sonuc = Double(ilkSayi - ikinciSayi!)
            }
            else if islem == "+"{
                sonuc = Double(ilkSayi + ikinciSayi!)
            }
        }
        if sonuc.truncatingRemainder(dividingBy: 1)  == 0 {
            labelSonuc.text = String(format: "%.0f", sonuc)
        }else{
            labelSonuc.text = String(sonuc)
        }
        
    }
    

    
}

