//
//  MenuController.swift
//  Restaurant Menu
//
//  Created by Rinalds Domanovs on 31/07/2019.
//  Copyright © 2019 Rinalds Domanovs. All rights reserved.
//

import Foundation

class MenuController {
    let baseURL = URL(string: "http://localhost:8090/")!

    func fetchCategories(completion: @escaping ([String]?) -> Void) {

    }

    func fetchMenuItems(forCategory categoryName: String, completion: @escaping ([MenuItem]?) -> Void) {

    }

    func submitOrder(forMenuIDs menuIds: [Int], completion: @escaping (Int?) -> Void) {
        
    }
}
