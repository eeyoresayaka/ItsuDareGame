//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 大島彩也夏 on 2023/05/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel : UILabel!
    @IBOutlet var dokodeLabel : UILabel!
    @IBOutlet var daregaLabel : UILabel!
    @IBOutlet var doshitaLabel : UILabel!
    
    @IBOutlet var changeButton: UIButton!
    @IBOutlet var resetButton: UIButton!
    @IBOutlet var randomButton: UIButton!
    
    let itsuArrey: [String] = ["昨日","地球が滅亡する日","30年後","10年前","明日","今"]
    let dokodeArrey: [String] = ["大学で","トイレの中で","テニスコートで","みんなの前で","プールで","更衣室で"]
    let daregaArrey: [String] = ["先生が","さやかが","ジャルジャルが","いぬが","かりんが","いっちーが"]
    let doshitaArrey: [String] = ["大声で叫んだ","ダンスした","歌った","盗撮した","告白した","裸になった"]
    var index:Int = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        changeButton.layer.cornerRadius = 30
        resetButton.layer.cornerRadius = 30
        randomButton.layer.cornerRadius = 30
        
        itsuLabel.layer.cornerRadius = 12
        dokodeLabel.layer.cornerRadius = 12
        daregaLabel.layer.cornerRadius = 12
        doshitaLabel.layer.cornerRadius = 12
        
        itsuLabel.clipsToBounds = true
        dokodeLabel.clipsToBounds = true
        daregaLabel.clipsToBounds = true
        doshitaLabel.clipsToBounds = true
        

    }
    
    @IBAction func change(){
        itsuLabel.text = itsuArrey[index]
        dokodeLabel.text = dokodeArrey[index]
        daregaLabel.text = daregaArrey[index]
        doshitaLabel.text = doshitaArrey[index]
        
        if index == 5 {
            index=0
        } else {
            index = index + 1
        }

        
    }
    
    @IBAction func reset(){
        itsuLabel.text = "-----"
        dokodeLabel.text = "-----"
        daregaLabel.text = "-----"
        doshitaLabel.text = "-----"
        index = 0
        
    }
    
    @IBAction func random(){
        let itsuIndex = Int.random(in: 0...5)
        let dokodeIndex = Int.random(in: 0...5)
        let daregaIndex = Int.random(in: 0...5)
        let doshitaIndex = Int.random(in: 0...5)
        itsuLabel.text = itsuArrey[itsuIndex]
        dokodeLabel.text = dokodeArrey[dokodeIndex]
        daregaLabel.text = daregaArrey[daregaIndex]
        doshitaLabel.text = doshitaArrey[doshitaIndex]
        
    }


}

