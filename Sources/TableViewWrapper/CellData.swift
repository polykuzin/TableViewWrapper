//
//  CellData.swift
//  
//
//  Created by polykuzin on 01/11/2022.
//

import UIKit

public protocol CellData {
    
    /// id of the cell for reloading
    var id : String { get }
    
    /// Height for element. Mandatory
    var height: CGFloat { get }
    
    /// for closure gesture, when didSelectRow
    var onSelect : Command<Void> { get }
    
    // tint color for cell. Mostly for accessory elements. Default: system
    var tintColor : UIColor { get }
    
    var accesoryType : UITableViewCell.AccessoryType? { get }
    
    var accessoryView : UIView? { get }
    
    /// for compairing the content, if it was modified
    func hash() -> [Int]

    func prepare(cell: UITableViewCell, for tableView: UITableView, indexPath: IndexPath)
    
    func prepare(cell: UICollectionViewCell, for collectionView: UICollectionView, indexPath: IndexPath)
    
    func didEndDisplaying(cell: UITableViewCell, for tableView: UITableView, indexPath: IndexPath)
    
    func didEndDisplaying(cell: UICollectionViewCell, for tableView: UICollectionView, indexPath: IndexPath)
    
    /// Creates cell instance, DO NOT SET CONTENT IN THIS METHOD
    /// - Returns: Table cell
    func cell(for tableView: UITableView, indexPath: IndexPath) -> UITableViewCell
    
    func cell(for collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell
    
    @available(iOS 13.0, *)
    func menu(for tableView: UITableView, indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration?
}

extension CellData {
    
    public var tintColor : UIColor { return .blue }
    
    public var accesoryType : UITableViewCell.AccessoryType? { return nil }
    
    public var accessoryView : UIView? { return nil }
    
    public var onSelect: Command<Void>  { return Command(action: {}) }
    
    public func toElement() -> Element {
        return Element(content: self)
    }
    
    public func prepare(cell: UITableViewCell, for tableView: UITableView, indexPath: IndexPath) { }
    
    public func prepare(cell: UICollectionViewCell, for collectionView: UICollectionView, indexPath: IndexPath) { }
    
    public func cell(for tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        return .init()
    }
    
    public func cell(for collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        return .init()
    }
    
    @available(iOS 13.0, *)
    public func menu(for tableView: UITableView, indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration? {
        return nil
    }
    
    public func didEndDisplaying(cell: UITableViewCell, for tableView: UITableView, indexPath: IndexPath) { }
    
    public func didEndDisplaying(cell: UICollectionViewCell, for tableView: UICollectionView, indexPath: IndexPath) { }
}
