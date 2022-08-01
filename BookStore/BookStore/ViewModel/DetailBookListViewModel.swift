//
//  DetailBookListViewModel.swift
//  BookStore
//
//  Created by YJ on 2022/08/01.
//

import Foundation
import RxSwift
import RxRelay

class DetailBookListViewModel:NSObject{
    var disposeBag:DisposeBag = DisposeBag()
    var input = Input()
    var output = Output()
    
    struct Input {
        let title = BehaviorSubject<DetailBookListModel?>(value: nil)
        let author = BehaviorSubject<DetailBookListModel?>(value: nil)
        let price = BehaviorSubject<DetailBookListModel?>(value: nil)
//        let discount =  BehaviorSubject<BookListModel>(value: nil)
        let publisher = BehaviorSubject<DetailBookListModel?>(value: nil)
        let isbn = BehaviorSubject<DetailBookListModel?>(value: nil)
        let pubdate = BehaviorRelay<DetailBookListModel?>(value: nil)
        let description = BehaviorSubject<DetailBookListModel?>(value: nil)
        let image = BehaviorSubject<DetailBookListModel?>(value: nil)
    }
    
    struct Output {
        let title = BehaviorSubject<DetailBookListModel?>(value: nil)
        let author = BehaviorSubject<DetailBookListModel?>(value: nil)
        let price = BehaviorSubject<DetailBookListModel?>(value: nil)
//        let discount =  BehaviorSubject<BookListModel>(value: 0)
        let publisher = BehaviorSubject<DetailBookListModel?>(value: nil)
        let isbn = BehaviorSubject<DetailBookListModel?>(value: nil)
        let pubdate = BehaviorRelay<DetailBookListModel?>(value: nil)
        let description = BehaviorSubject<DetailBookListModel?>(value: nil)
        let image = BehaviorSubject<DetailBookListModel?>(value: nil)
    }
}
