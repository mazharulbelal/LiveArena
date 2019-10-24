

import UIKit
import Cosmos

class NewsCollectionCell: UICollectionViewCell {
    
    
    static var name = "NewsCollectionCell"
    
    @IBOutlet weak var SongTIitlelabel : UILabel!
    @IBOutlet weak var PRofileImageView : UIImageView!
    @IBOutlet weak var containerView: UIView!
    
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        let value: CGFloat = 224.0/255.0
        self.containerView.layer.cornerRadius = 5.0
        self.containerView.layer.borderColor = UIColor(red: value, green: value, blue: value, alpha: 0.5).cgColor
        self.containerView.layer.borderWidth = 1.0
        self.containerView.clipsToBounds = true
        
        self.containerView.layer.masksToBounds = false
        self.containerView.layer.shadowColor = UIColor.lightGray.cgColor
        self.containerView.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        self.containerView.layer.shadowOpacity = 0.10
        self.containerView.layer.shadowRadius = 1.2
        
    
        
        
        
    }
    
    


}
