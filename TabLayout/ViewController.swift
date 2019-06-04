//
//  ViewController.swift
//  TabLayout
//
//  Created by Dhiraaj Chowdhury on 5/17/18.
//  Copyright © 2018 -. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {

    @IBOutlet weak var btnA: UIButton!
    @IBOutlet weak var btnB: UIButton!
    @IBOutlet weak var BtnC: UIButton!    
    @IBOutlet weak var btnD: UIButton!
    
    var pageViewController = UIPageViewController()

 
    var Acont = AController()
    var Bcont = BController()
    var Ccont = CController()
    var Dcont = DController()

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.pageViewController = UIPageViewController.init(transitionStyle: UIPageViewControllerTransitionStyle.scroll, navigationOrientation: UIPageViewControllerNavigationOrientation.horizontal, options: nil)
        self.pageViewController.view.frame = self.view.frame
        self.pageViewController.view.backgroundColor = UIColor.gray
        
        
        let SB = UIStoryboard.init(name: "Main", bundle: nil)
        Acont = SB.instantiateViewController(withIdentifier: "AController") as! AController
        
        Bcont = SB.instantiateViewController(withIdentifier: "BController") as! BController
        
        Ccont = SB.instantiateViewController(withIdentifier: "CController") as! CController
        
        Dcont = SB.instantiateViewController(withIdentifier: "DController") as! DController

        
        
        
        self.pageViewController.setViewControllers([Bcont], direction: .forward, animated: true, completion: nil)
        
        self.view.addSubview(self.pageViewController.view)


    }
    
    
    override func viewWillLayoutSubviews() {
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.view.bringSubview(toFront: self.btnA)
        self.view.bringSubview(toFront: self.btnB)
        self.view.bringSubview(toFront: self.BtnC)
        self.view.bringSubview(toFront: self.btnD)

    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        return nil
    }
    
    @IBAction func BtnAClicked(_ sender: Any) {
        
         self.pageViewController.setViewControllers([Acont], direction: .forward, animated: true, completion: nil)
        
    }
    
    @IBAction func BtnBClicked(_ sender: Any) {
        
         self.pageViewController.setViewControllers([Bcont], direction: .forward, animated: true, completion: nil)
    }
    
    @IBAction func BtnCClicked(_ sender: Any) {
        
         self.pageViewController.setViewControllers([Ccont], direction: .forward, animated: true, completion: nil)
    }
    
    @IBAction func BtnDClicked(_ sender: Any) {
        
         self.pageViewController.setViewControllers([Dcont], direction: .forward, animated: true, completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

