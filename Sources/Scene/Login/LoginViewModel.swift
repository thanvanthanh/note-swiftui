//
//  LoginViewModel.swift
//  ios-noteapp
//
//  Created by Quang Nguyễn Như on 05/06/2023.
//

import Combine

class LoginViewModel: ObservableObject {
    var disposeBag = Set<AnyCancellable>()

    @Published var showingCredits: Bool = false

    
    init() {
        $showingCredits.sink {
            print("nnq: \($0)")
        }.store(in: &disposeBag)
    }
}
