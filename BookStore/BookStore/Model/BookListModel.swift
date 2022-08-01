//
//  BookListModel.swift
//  BookStore
//
//  Created by YJ on 2022/08/01.
//

import Foundation
import RxSwift
import RxCocoa

struct BookListModel:Codable {
    let searchData:String
    let title:String
    enum CodingKeys: String, CodingKey {
        case title = "title", searchData = "searchData"
    }
    init(from decoder: Decoder) throws {
        let values =  try decoder.container(keyedBy: CodingKeys.self)
        title = (try? values.decode(String.self, forKey: .title)) ?? ""
        searchData = (try? values.decode(String.self, forKey: .searchData)) ?? ""
    }
}
