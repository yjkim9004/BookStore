//
//  BookListViewModel.swift
//  BookStore
//
//  Created by YJ on 2022/08/01.
//

import Foundation
import RxSwift
import RxRelay

class BookListViewModel:NSObject{
    var disposeBag: DisposeBag = DisposeBag()
    var input = Input()
    var output = Output()
    
    struct Input {
        let data = PublishSubject<BookListModel>()
    }
    
    struct Output{
        let searchList = BehaviorRelay<String>(value: "")
    }
}
