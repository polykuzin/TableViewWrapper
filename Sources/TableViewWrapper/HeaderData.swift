//
//  HeaderData.swift
//  
//
//  Created by polykuzin on 01/11/2022.
//

import UIKit

public protocol HeaderData {
    
    var id : String { get }
    
    var height : CGFloat { get }
    
    func header(for tableView: UITableView, section: Int) -> UIView?
    
    func header(for collectionView: UICollectionView, section: Int) -> UICollectionReusableView?
}

extension HeaderData {
    
    public func header(for tableView: UITableView, section: Int) -> UIView? {
        return nil
    }
    
    public func header(for collectionView: UICollectionView, section: Int) -> UICollectionReusableView? {
        return nil
    }
}
