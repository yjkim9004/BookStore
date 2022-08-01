//
//  DetailBookListModel.swift
//  BookStore
//
//  Created by YJ on 2022/08/01.
//

import Foundation
import RxCocoa
import RxSwift
import UIKit

struct DetailBookListModel:Codable {
    let title:String
    let author:String
    let price:String
//    let discount:String
    let publisher:String
    let isbn:String
    let pubdate:Date
    let description:String
    let image:String
    enum CodingKeys: String, CodingKey {
        case title = "title", author = "author", price = "price", publisher = "publisher", isbn = "isbn", pubdate = "pubdate", description = "descripction", image = "image"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        title = (try values.decode(String.self, forKey: .title))
        author = (try values.decode(String.self, forKey: .author))
        price = (try values.decode(String.self, forKey: .price))
//        discount = (try values.decode(String.self, forKey: .discount))
        publisher = (try values.decode(String.self, forKey: .publisher))
        isbn = (try values.decode(String.self, forKey: .isbn))
        pubdate = (try values.decode(Date.self, forKey: .pubdate)) 
        description = (try values.decode(String.self, forKey: .description))
        image = (try values.decode(String.self, forKey: .image))
    }
}
