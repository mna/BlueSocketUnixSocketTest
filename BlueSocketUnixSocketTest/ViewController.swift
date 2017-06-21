//
//  ViewController.swift
//  BlueSocketUnixSocketTest
//
//  Created by Martin Angers on 2017-06-21.
//  Copyright © 2017 mna. All rights reserved.
//

import Cocoa
import Socket

class ViewController: NSViewController {

  @IBOutlet weak var text: NSTextField!

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }
  
  @IBAction func connect(_ sender: Any) {
    let socket: Socket
    do {
      socket = try Socket.create(family: .unix, proto: .unix)
    } catch {
      print("> Socket.create failed: \(error)")
      NSAlert(error: error).runModal()
      return
    }

    do {
      try socket.connect(to: text.stringValue)
      print("> connect succeeded")
    } catch {
      print("> socket.connect failed: \(error)")
      NSAlert(error: error).runModal()
    }
  }

  override var representedObject: Any? {
    didSet {
      // Update the view, if already loaded.
    }
  }
  
  
}

