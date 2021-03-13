
import UIKit
@IBDesignable
class CommonNavigationViewController: UINavigationController {

    override init(rootViewController: UIViewController) {
      super.init(rootViewController: rootViewController)
      customDesign()
    }
    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
      customDesign()
    }
    
    override func prepareForInterfaceBuilder() {
      super.prepareForInterfaceBuilder()
      customDesign()
    }
    
    private func customDesign() {
      // デザインのカスタマイズ内容
        self.navigationBar.barTintColor = UIColor.lightGray
        let bkgImege = UIImage(named: "main_backimage")
        self.fixBackground(image: bkgImege!)
    }
    
    private func fixBackground(image:UIImage){
      // 背景画像のデバイスサイズ毎の調整
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        
        let imageViewBkg = UIImageView(frame: CGRect(x: 0,y: 0,width: width,height: height))
        imageViewBkg.image = image
        
        self.view.addSubview(imageViewBkg)
        self.view.sendSubviewToBack(imageViewBkg)
        
    }
    
    
}

