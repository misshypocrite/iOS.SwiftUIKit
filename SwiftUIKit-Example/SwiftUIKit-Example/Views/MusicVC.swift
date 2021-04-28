

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
                InfoMusic(name: "Taki Taki ", singer: "Selena Gomez, Ozuna, Cardi B", musician: "DJ Snake", image: "sing" )
                ZStackView {
                    ControlMusic(startTime: "1:56", endTime: "3:33")
                        .fillingParent()
                }
            }
            .fillingParent(insets: (24,24,48,48))
         }
         .dx.backgroundColor(ThemeManager.shared.current.background5)
         .fillingParent()
     }
 }

 class InfoMusic: UI.View {
    var image : String
    var name : String
    var singer : String
    var musician : String
    init (name : String,singer: String,musician : String,image : String) {
        self.image = image
        self.name = name
        self.singer = singer
        self.musician = musician
         super.init(frame: .zero)
     }
    
     required init(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
     func layout() -> SomeView {
        VStackView(spacing: 45, distribution: .fill) {
            ZStackView {
                UIImageView()
                    .dx.image(UIImage(named: image))
                    .dx.style(UI.ViewStyle.Card1())
                    .fillingParent()
            }
            .dx.style(UI.ViewStyle.CornerRadius(radius: 12))
            .constrainingAspectRatio(ratio: 330/300)
            VStackView(spacing: 5, distribution: .fill) {
                UILabel()
                    .dx.text(name)
                    .dx.font(.boldSystemFont(ofSize: 24))
                    .dx.textAlignment(.center)
                UILabel()
                    .dx.text(singer)
                    .dx.font(.systemFont(ofSize: 20))
                    .dx.textAlignment(.center)
                ZStackView{
                    UILabel()
                        .dx.text(musician)
                        .dx.textAlignment(.center)
                        .dx.font(.systemFont(ofSize: 14))
                        .dx.textColor(ThemeManager.shared.current.text2)
                        .fillingParent(insets: (0,0,10,0))
                }
            }
        }
        .fillingParent()
     }

     override var subviewsLayout: SomeView {
         layout()
     }

     @objc func injected() {
         self.layoutBag.revert()

         layoutBag.append(layout().layout(in: self))
     }
 }


class ControlMusic: UI.View {
   var startTime : String
   var endTime : String
    
   init (startTime : String,endTime: String) {
       self.startTime = startTime
       self.endTime = endTime
        super.init(frame: .zero)
    }
   
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    func layout() -> SomeView {
        ZStackView {
            VStackView(spacing: 47, distribution: .fill) {
                ZStackView {
                    VStackView(spacing: 0, distribution: .fill) {
                        HStackView(spacing: 0, distribution: .fill) {
                            UILabel()
                                .dx.text(startTime)
                                .dx.font(.systemFont(ofSize: 12))
                                .dx.textColor(ThemeManager.shared.current.text1)
                            UILabel()
                                .dx.text(endTime)
                                .dx.font(.systemFont(ofSize: 12))
                                .dx.textColor(ThemeManager.shared.current.text1)
                        }
                        ZStackView {
                            ZStackView {
                                HStackView(spacing: 0, distribution: .fill) {
                                    ZStackView {
                                        HStackView(spacing: 0, distribution: .fill) {
                                            UIView()
                                            ZStackView {
                                                ZStackView {
                                                    
                                                }
                                                .dx.backgroundColor(ThemeManager.shared.current.box5)
                                                .dx.style(UI.ViewStyle.CornerRadius(radius: 4))
                                                .fillingParent(insets: (0,0,-8,-8))
                                            }
                                            .sizing(width: 6, height: nil)
                                        }.fillingParent()
                                    }
                                    .dx.backgroundColor(ThemeManager.shared.current.box5)
                                    .dx.style(UI.ViewStyle.CornerRadius(radius: 4))
                                    .sizing(width: 150, height: nil)
                                    UIView()
                                }.fillingParent()
                            }
                            .dx.backgroundColor(.white)
                            .dx.style(UI.ViewStyle.CornerRadius(radius: 4))
                            .fillingParent(insets: (0,0,6,6))
                        }
                        .sizing(width: nil, height: 20)
                    }.fillingParent()
                }
                .sizing(width: nil, height: 33)
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
                                    .dx.image(UIImage(named: "Previous"))
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
        .fillingParent()
    }

    override var subviewsLayout: SomeView {
        layout()
    }

    @objc func injected() {
        self.layoutBag.revert()

        layoutBag.append(layout().layout(in: self))
    }
}

