//
//  ViewController.swift
//  SwiftyCamera
//
//  Created by Harvey He on 2019/7/26.
//  Copyright © 2019 Harvey He. All rights reserved.
//

import UIKit
class ViewController:UIViewController {

    let cameraController = CameraController()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(capturePreviewView)
    }
    
    func configCameraController(){
        cameraController.prepare { (error) in
            if let error = error{
                print(error)
            }
            try? self.cameraController.displayPreview(on:self.capturePreviewView)
        }
    }
    
    fileprivate lazy var capturePreviewView:UIView = {
        let capturePreviewView = UIView(frame:UIScreen.main.bounds)
        capturePreviewView.backgroundColor = .red
        return capturePreviewView
    }()
    
}

extension ViewController{
    
    func toggleFlash(){
       cameraController.toggleFlash()
    }
    
    func switchCamera(){
        try? cameraController.switchCameras()
    }
    
    func captureImage(){
        cameraController.captureImage { (image, error) in
            if let image = image{
                print("captureImage",image)
            }
        }
    }
}
