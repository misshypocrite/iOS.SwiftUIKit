//
//  BasicVC.swift
//  SwiftUIKit-Example
//
//  Created by finos.son.le on 22/04/2021.
//
import UIKit

import SwiftUIKit
struct Item {
    let title : String
    let value : String
}
class HomeScreenVc: UI.ViewController {
//    var screen = U
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = ThemeManager.shared.current.background1
    }
    
    let items = [
        Item(title: "Basic Usage", value: "Combine ZStack, VStack, HStack and UIKit element to make UI"),
        Item(title: "Complexity View", value: "Combine ZStack, VStack, HStack and UIKit element to make complexity UI with action"),
    ]
    
    
    private func layout() -> SomeView {
        VStackView(spacing: 0, distribution: .fill, alignment: .fill) {
            ZStackView {
                ZStackView {
                    HStackView(spacing: 30,distribution: .fill) {
                        ZStackView {
                            UIImageView()
                                .dx.image(UIImage(named: "img_right"))
                                .centeringVerticallyInParent()
                        }
                        .sizing(width: 104, height: 104)
                        ZStackView {
                            HStackView(spacing: 0, distribution: .fill, alignment: .center) {
                                UILabel()
                                    .dx.text("Swift")
                                    .dx.font(.boldSystemFont(ofSize: 24))
                                    .dx.textColor(ThemeManager.shared.current.text4)
                                UILabel()
                                    .dx.text("UI")
                                    .dx.font(.boldSystemFont(ofSize: 24))
                                    .dx.textColor(ThemeManager.shared.current.text3)
                                ZStackView {
                                    UILabel()
                                        .dx.text("Kit")
                                        .dx.textColor(ThemeManager.shared.current.text3)
                                        .dx.font(.boldSystemFont(ofSize: 24))
                                        .centeringInParent()
                                        .stickingToParentEdges(left: 6, right: 6, top: 4, bottom: 4)
                                }
                                .dx.style(UI.ViewStyle.CornerRadius(radius: 5))
                                .dx.backgroundColor(ThemeManager.shared.current.box2)

                            }.centeringVerticallyInParent()
                        }
                        
                    }
                    .fillingParent(insets: (27, 27, 33, 33))
                }
                .dx.style(UI.ViewStyle.Card1())
                .dx.backgroundColor(ThemeManager.shared.current.background3)
                .sizing(width: nil, height: 171)
                .fillingParent(insets: (16, 16, 47, 51))
            }
            VStackView(spacing: 16, distribution: .fill) {
                ForEach(items) { (index,item) in
                    HomeIntroItem(title: item.title, value: item.value)
                }
            }
        }
        .scrolling(.vertical)
        .fillingParent()
    }
    
    override var subviewsLayout: SomeView {
        layout()
    }
    
    @objc func injected() {
        self.layoutBag.revert()
        
        layoutBag.append(layout().layout(in: view))
    }
    
    deinit {
        print("\(String(describing: self)) deinit")
    }
}

class HomeIntroItem: UI.View {
    
    let title : String
    let value : String
    init (title : String,value : String) {
        self.title = title
        self.value = value
        super.init(frame: .zero)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layout() -> SomeView {
        VStackView(spacing: 6, distribution: .fill) {
            UILabel()
                .dx.text(title)
                .dx.font(.boldSystemFont(ofSize: 16))
            UILabel()
                .dx.numberOfLines(0)
                .dx.text(value)
                .dx.style(Typography.SubTitle)
                .dx.textColor(ThemeManager.shared.current.text4)
            ZStackView {
                ZStackView {

                }
                .dx.backgroundColor(ThemeManager.shared.current.line)
                .sizing(width: nil, height: 1)
                .stickingToParentEdges(left: 0, right: 0, top: 5, bottom: 0)
            }
        }.fillingParent(insets: (16,16,0,0))
    }

    override var subviewsLayout: SomeView {
        layout()
    }

    @objc func injected() {
        self.layoutBag.revert()

        layoutBag.append(layout().layout(in: self))
    }
}

