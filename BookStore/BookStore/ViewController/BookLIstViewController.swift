//
//  BookLIstViewController.swift
//  BookStore
//
//  Created by YJ on 2022/08/01.
//

import Foundation
import RxCocoa
import RxSwift
import UIKit

class BookListViewController: UIViewController ,UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    
    func requestAPINaver(value: String) {
        let clientID:String = "hEqJrmtMa7DjnbN6Mejn"
        let clientKEY:String = "f28CNOjx_6"
        
        let query:String = "https://openapi.naver.com/v1/search/book.json?query=\(value)"
        let encodedQuery:String = query.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!
        let queryUrl:URL = URL(string: encodedQuery)!
        
        var requestURL = URLRequest(url: queryUrl)
        requestURL.addValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        requestURL.addValue(clientID, forHTTPHeaderField: "x-Naver-Client-Id")
        requestURL.addValue(clientKEY, forHTTPHeaderField: "x-Naver-Client-Secret")
        
        let task = URLSession.shared.dataTask(with: requestURL) { data, response, error in
            guard error == nil else { print(error); return }
            guard let data = data else {print(error); return}
            
            do {
                searchBar.text = try JSONDecoder.decode(searchBar.text, from:data)
                self.urlTaskDone()
            } catch {
                print(fatalError())
            }
        }
    }
    
    func urlTaskDone(){
        let item = 
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! BookListViewCell
        
        return cell
    }
    
}

class BookListViewCell:UITableViewCell {
    let title: String = ""
}
