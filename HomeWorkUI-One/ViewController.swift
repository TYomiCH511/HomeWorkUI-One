//
//  ViewController.swift
//  HomeWorkUI-One
//
//  Created by Artem on 10/22/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var labelOne: UILabel!
    @IBOutlet var labelTwo: UILabel!
    @IBOutlet var labelThree: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
    }
    
    @IBAction func pressLogin() {
        print("Login")
        
        labelOne.backgroundColor = randomColor()
        
    }
    
    @IBAction func pressInfo() {
        print("Info")
        labelTwo.backgroundColor = randomColor()
    }
    
    @IBAction func pressAdd() {
        print("Added")
        labelThree.backgroundColor = randomColor()
    }
    
    
    @IBAction func tapOnLabel(_ sender: Any) {}
    
    @IBAction func tapLabelTwo(_ sender: Any) {}
    
    @IBAction func tapLabelThree(_ sender: Any) {}
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let dvc = segue.destination as? TwoViewController else { return }
        
        if segue.identifier == "one" {
            
            dvc.color = labelOne.backgroundColor
            
        } else  if segue.identifier == "two" {
            
            dvc.color = labelTwo.backgroundColor
            
        } else  if segue.identifier == "three" {
            
            dvc.color = labelThree.backgroundColor
            
        }
    }
}

