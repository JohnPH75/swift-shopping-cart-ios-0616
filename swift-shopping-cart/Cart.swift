//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by John Hussain on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Cart {
    
//Give it one property, an empty array of the Item Type named items
    
    var items = [Item]()
    
//    Write a method named totalPriceInCents() that takes no arguments and returns an Int. This method should return the total cost of all the items in the items array.
    
    func totalPriceInCents() -> Int {
        
        var total = 0
        
        for item in items {
            
            total += item.priceInCents
        }
        
        return total
    }
    
    
//    Write a method named addItem(_:) that takes one argument of type Item and provides no return. This method should add the argument to the end of the items property array
    
    func addItem(item: Item) {
        
        items.append(item)
    }
    
//    Write a method named removeItem(_:) that takes one argument of type Item and provides no return. This method should remove an instance from the items array that matches the argument item
    
    func removeItem(item: Item) {
        
        if let index = items.indexOf(item) {
            
            items.removeAtIndex(index)
        }
    }
    
    
//    Write a method named itemsWithName(_:) that takes one string argument and returns an array of type Item. This method should collect all of the items in the items property array whose name property matches the submitted string argument.
    
    func itemsWithName(name: String) -> [Item] {
        
        var matches = [Item]()
        
        for item in items {
            
            if item.name == name {
                
                matches.append(item)
            }
        }
        
        return matches
    }
    
    
//    Write a method named itemsWithMinimumPriceInCents(_:) that takes one integer argument and returns an array of type Item. This method should collect all of the items in the items property array whose priceInCents property is greater than or equal to the submitted integer argument.
    
    func itemsWithMinimumPriceInCents(priceInCents: Int) -> [Item] {
        var matches = [Item]()
        
        for item in items {
            if item.priceInCents >= priceInCents {
                matches.append(item)
            }
        }
        
        return matches
    }
    
    
//    Write a method named itemsWithMaximumPriceInCents(_:) that take one integer argument and return an array of type Item. The method should collect all of the items in the items property array whose priceInCents property is less than or equal to the submitted integer argument
    
    func itemsWithMaximumPriceInCents(priceInCents: Int) -> [Item] {
        var matches = [Item]()
        
        for item in items {
            if item.priceInCents <= priceInCents {
                matches.append(item)
            }
        }
        
        return matches
    }
    
}
