//
//  Constant.swift
//  TableViewCellTest1
//
//  Created by NeoZ on 28/5/16.
//  Copyright © 2016年 NeoZ. All rights reserved.
//

import Foundation

public var array1 : [String] = [
    "Examples",
    "Since the textLabel and detailTextLabel properties of UITableViewCell already have valid constraints, they can be used out of the box with this approach. The simple code below pulls from a list of reviews of the Google Maps app for Android and displays them in a UITableView",
    "Constraints must be on the cell’s contentView.",
    "The new default rowHeight property for UITableView is UITableViewAutomaticDimension. If you were setting it before, make sure you return it to this new default, and remove any calculations you based from it since it’s no longer a logical number.",
    "Like iOS 7, you can still provide the estimatedHeightForRowAtIndexPath method or estimatedRowHeight property to help the table view make a more accurate guess for contentSize on load.",
    "If your cell’s instrinsicContentSize changes for any reason, you must reload the table for it to update the size accordingly. You can animate this change with methods such as reloadRowsAtIndexPaths(_ indexPaths: [AnyObject], withRowAnimation animation: UITableViewRowAnimation)",
    "The UICollectionReusableView class defines the behavior for all cells and supplementary views presented by a collection view. Reusable views are so named because the collection view places them on a reuse queue rather than deleting them when they are scrolled out of the visible bounds. Such a view can then be retrieved and repurposed for a different set of content.",
    "This class is intended to be subclassed. Most methods defined by this class have minimal or no implementations. You are not required to override any of the methods but can do so in cases where you want to respond to changes in the view’s usage or layout."
]
