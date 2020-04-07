//
//  FirstViewController.swift
//  test
//
//  Created by Mohammed Bahbahani on 17/03/2020.
//  Copyright © 2020 Hamour Soft. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, PPKControllerDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var logTextView: UITextView!
    
    @IBAction func stopBtn(_ sender: UIButton) {
        if(PPKController.isEnabled() == true){
            PPKController.disable()
            logTextView.text = logTextView.text+"PPK Disabled! \(getTimeString()) \n"
        }else{
            logTextView.text = logTextView.text+"PPK Already Stopped! \n"
        }
    }
    
    
    @IBAction func startBtn(_ sender: UIButton) {
        if(PPKController.isEnabled() == false){

           PPKController.enable(withConfiguration: "d0b27de13e9d4ef3acd40b44611f53c1", observer:self)
           logTextView.text = logTextView.text+"PPK Enabled! \(getTimeString()) \n"
        }else{
            logTextView.text = logTextView.text+"PPK Already Enabled! \n"
        }
    }
    
    
    func ppkControllerInitialized() {
      // ready to start discovering nearbys
        logTextView.text = logTextView.text+"PPK Initialised! \(getTimeString())\n"
        PPKController.enableProximityRanging()

        PPKController.startDiscovery(withDiscoveryInfo: "Hello".data(using: .utf8), stateRestoration: true)
    }
    
    func PPKControllerFailed(_ withError:(PPKErrorCode)){
        logTextView.text = logTextView.text+"PPK Error! \n"

    }
    
    func peerDiscovered(_ peer: PPKPeer) {
      if let discoveryInfo = peer.discoveryInfo {
        let discoveryInfoString = String(data: discoveryInfo, encoding: .utf8)
        logTextView.text = logTextView.text+"\(peer.peerID) is here with discovery info: \(String(describing: discoveryInfoString)) at \(getTimeString()) \n"
      }
        logTextView.text = logTextView.text+"peer signal strength: "+proximityToString(proximity: peer.proximityStrength)
    }

    func peerLost(_ peer: PPKPeer) {
        logTextView.text = logTextView.text+"\(peer.peerID) is no longer here at \(getTimeString())\n"

    }
    
    
    func proximityStrengthChanged(for peer: PPKPeer) {
      logTextView.text = logTextView.text+"Signal from \(peer.peerID) is "+proximityToString(proximity: peer.proximityStrength)+" \(getTimeString())\n"
       
      }
    
    
    
    
    //convert strength raw value (int) to string
    func proximityToString(proximity: PPKProximityStrength)->String{
        switch proximity.rawValue{
               case PPKProximityStrength.extremelyWeak.rawValue:
                   return "extremely weak"
                   
               case PPKProximityStrength.weak.rawValue:
                    return "weak"

               case PPKProximityStrength.medium.rawValue:
                    return "medium"
                   
               case PPKProximityStrength.strong.rawValue:
                  return "strong"
                   
               case PPKProximityStrength.immediate.rawValue:
                  return "immediate"

               default:
               return "not in range"
        }
    }
    

    func getTimeString()->String{
        let currentDateTime = Date()
        let time : String;
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        formatter.dateStyle = .none
        time = formatter.string(from: currentDateTime)
        
        
        return time
        
    }
    
}

