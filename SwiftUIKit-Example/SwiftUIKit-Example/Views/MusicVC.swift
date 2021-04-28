

 import UIKit
 import SwiftUIKit

 class MusicVC: UI.ViewController {
    
    
     //MARK: - ViewController Life
     override func viewDidLoad() {
         super.viewDidLoad()
     }
    
    
     override var subviewsLayout: SomeView {
         ZStackView {
            VStackView(spacing: 47, distribution: .fill) {
                ZStackView {
                    VStackView(spacing: 45, distribution: .fill) {
                        ZStackView {
                            UIImageView()
                                .dx.image(UIImage(named: "sing"))
                                .dx.style(UI.ViewStyle.Card1())
                                .fillingParent()
                        }
                        
                        .dx.style(UI.ViewStyle.CornerRadius(radius: 12))
                        .constrainingAspectRatio(ratio: 330/300)
                        
                        VStackView(spacing: 5, distribution: .fill) {
                            UILabel()
                                .dx.text("Taki Taki")
                                .dx.font(.boldSystemFont(ofSize: 24))
                                .dx.textAlignment(.center)
                            UILabel()
                                .dx.text("Selena Gomez, Ozuna, Cardi B")
                                .dx.font(.systemFont(ofSize: 20))
                                .dx.textAlignment(.center)
                            ZStackView{
                                UILabel()
                                    .dx.text("DJ Snake")
                                    .dx.textAlignment(.center)
                                    .dx.font(.systemFont(ofSize: 14))
                                    .fillingParent(insets: (0,0,10,0))
                            }
                        }
                    }
                    .fillingParent()
                }
                .scrolling(.vertical)
                
                ZStackView {
                    VStackView(spacing: 47, distribution: .fill) {
                        ZStackView {
                            VStackView(spacing: 0, distribution: .fill) {
                                HStackView(spacing: 0, distribution: .fill) {
                                    UILabel()
                                        .dx.text("1:56")
                                    UILabel()
                                        .dx.text("3:33")
                                }
                                ZStackView {
                                    ZStackView {
                                        
                                    }
                                    .dx.backgroundColor(UIColor(hex: "67B8BD"))
                                    .dx.style(UI.ViewStyle.CornerRadius(radius: 4))
                                    .fillingParent(insets: (0,0,6,6))
                                }
                                .sizing(width: nil, height: 20)
                            }.fillingParent()
                        }
                        .sizing(width: nil, height: 33)
                        
//                        UIView()
                        ZStackView {
                            HStackView(spacing: 0, distribution: .equalCentering) {
                                    ZStackView{
                                        UIImageView()
                                            .dx.image(UIImage(named: "repeat"))
                                            .sizing(width: 18, height: 12)
                                            .centeringInParent()
                                    }
                                    ZStackView{
                                        UIImageView()
                                            .dx.image(UIImage(named: "previous"))
                                            .sizing(width: 15, height: 17)
                                            .centeringInParent()
                                    }
                                    ZStackView{
                                        UIImageView()
                                            .dx.image(UIImage(named: "play"))
                                            .sizing(width: 68, height: 68)
                                            .centeringInParent()
                                    }
                                    ZStackView{
                                        UIImageView()
                                            .dx.image(UIImage(named: "next"))
                                            .sizing(width: 15, height: 17)
                                            .centeringInParent()
                                    }
                                    ZStackView{
                                        UIImageView()
                                            .dx.image(UIImage(named: "mix"))
                                            .sizing(width: 19, height: 12)
                                            .centeringInParent()
                                    }
                                    
                                    
                                }
                                .sizing(width: nil, height: 68)
                                .fillingParent(insets: (24,24,47,0))
                            
                            
                        }.fillingParent()
                        
                    }.fillingParent()
                    
                }
                .sizing(width: nil, height: 148)
            }
            .fillingParent(insets: (24,24,48,48))
         }
         .dx.backgroundColor(ThemeManager.shared.current.background5)
         .fillingParent()
     }
 }

class InfoMusic  {
    
}
