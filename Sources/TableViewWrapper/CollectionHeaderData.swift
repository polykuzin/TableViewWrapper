import UIKit

public protocol CollectionHeaderData {
    
    var id : String { get }
    
    var height : CGFloat { get }
    
    func header(for collectionView: UICollectionView, section: Int) -> UICollectionReusableView?
}

extension CollectionHeaderData {
    
    public func header(for collectionView: UICollectionView, section: Int) -> UICollectionReusableView? {
        return nil
    }
}
