//
//  File.swift
//  
//
//  Created by Clint Ramirez Stephens  on 1/21/24.
//

#if os(macOS)

import Foundation
import Cocoa


public final class Window: UIElement {
  public var application: Application
  init?(_ axUIElement: AXUIElement, in application: Application) {
    self.application = application
    super.init(axUIElement)
    
    #if Disabled
    if (try? self.role()) != .window {
      if application.title == "Finder",
         let role = try? self.role(),
         role == .scrollArea { return }
      assertionFailure()
      return nil
    }
    #endif 
  }
  override internal required init(_ nativeElement: AXUIElement) {
    fatalError()
    super.init(nativeElement)
  }
}


#endif
