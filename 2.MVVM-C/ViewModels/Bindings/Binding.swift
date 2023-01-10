//
//  Binding.swift
//  2.MVVM-C
//
//  Created by Ugur Hamzaoglu on 10.01.2023.
//

import Foundation


class  Binding<T> {
    typealias Listener = (T) -> Void
    private var listener: Listener?
    
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ v: T) {
        value = v
    }
}
