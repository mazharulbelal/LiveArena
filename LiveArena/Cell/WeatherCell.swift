

import UIKit


class WeatherCell: UICollectionViewCell {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(CellView)
        addSubview(imageView)
        addSubview(textLabel)
        
        AutoLayout()
    }
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 5
        image.backgroundColor = UIColor.gray
        return image
    }()
    
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .black
        label.text = "New Person"
        return label
    }()
    
    
    let CellView : UIView = {
        let cellView = UIView()
        cellView.backgroundColor = UIColor.white
        cellView.translatesAutoresizingMaskIntoConstraints = false
        
        return cellView
        
    }()
    
    
   
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    func  AutoLayout(){
        
        
        CellView.leftAnchor.constraint(equalTo:self.leftAnchor, constant: 0).isActive = true
        CellView.rightAnchor.constraint(equalTo:self.rightAnchor, constant: 0).isActive = true
        CellView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        CellView.widthAnchor.constraint(equalToConstant: bounds.width).isActive = true
        
        imageView.leftAnchor.constraint(equalTo: CellView.leftAnchor, constant:20).isActive = true
        imageView.topAnchor.constraint(equalTo: CellView.topAnchor, constant:20).isActive = true
        imageView.bottomAnchor.constraint(equalTo: CellView.bottomAnchor, constant:20).isActive = true
        imageView.centerYAnchor.constraint(equalTo: CellView.centerYAnchor).isActive = true
        
        
        
        textLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        textLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        textLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
    
}
