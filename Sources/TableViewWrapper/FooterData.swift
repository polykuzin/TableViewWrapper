//
//  FooterData.swift
//  
//
//  Created by polykuzin on 01/11/2022.
//

import UIKit

public protocol FooterData {
    
    var id : String { get }
    
    var height : CGFloat { get }
    
    func footer(for tableView: UITableView, section: Int) -> UIView?
    
    func footer(for collectionView: UICollectionView, section: Int) -> UICollectionReusableView?
}

extension FooterData {
    
    public func footer(for tableView: UITableView, section: Int) -> UIView? {
        return nil
    }
    
    public func footer(for collectionView: UICollectionView, section: Int) -> UICollectionReusableView? {
        return nil
    }
}
