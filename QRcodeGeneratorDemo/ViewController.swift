//
//  ViewController.swift
//  QRcodeGeneratorDemo
//
//  Created by mac on 28/07/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_enterbyuser: UITextField!
    
    @IBOutlet weak var img_myimage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn_convert(_ sender: Any) {
        if let mystring = txt_enterbyuser.text{
            let data = mystring.data(using: .ascii, allowLossyConversion: true)
            let filter = CIFilter(name: "CIQRCodeGenerator")
            filter?.setValue(data, forKey: "inputMessage")
            
            let image = UIImage(ciImage: (filter?.outputImage)!)
            img_myimage.image = image
        }
    }

}

