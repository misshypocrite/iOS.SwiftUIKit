//
//  Typography.swift
//  SwiftUIKit-Example
//
//  Created by admin on 4/25/21.
//

import UIKit
import SwiftUIKit


struct Typography : Stylable {
    
    var fontName : String
    var fontSize : CGFloat
    var fontColor : UIColor
    
    func style(_ base: UILabel) {
        base.font = UIFont.systemFont(ofSize: fontSize)
        base.textColor = fontColor
    }
    
    static var header1 = Typography(fontName: "SFProDisplay-Semibold", fontSize: 28, fontColor: ThemeManager.shared.current.text1)
    static var header2 = Typography(fontName: "SFProDisplay-Semibold", fontSize: 24, fontColor: ThemeManager.shared.current.text1)
    static var title1 = Typography(fontName: "SFProDisplay-Semibold", fontSize: 18, fontColor: ThemeManager.shared.current.text1)
    static var Title2 = Typography(fontName: "SFProDisplay-Semibold", fontSize: 16, fontColor: ThemeManager.shared.current.text1)
    static var SubTitle = Typography(fontName: "SFProDisplay-Semibold", fontSize: 14, fontColor: ThemeManager.shared.current.text1)
}

