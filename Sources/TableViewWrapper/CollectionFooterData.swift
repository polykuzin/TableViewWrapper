import UIKit

public protocol CollectionFooterData {
    
    var id : String { get }
    
    var height : CGFloat { get }
    
    func footer(for collectionView: UICollectionView, section: Int) -> UICollectionReusableView?
}

extension CollectionFooterData {
    
    public func footer(for collectionView: UICollectionView, section: Int) -> UICollectionReusableView? {
        return nil
    }
}
