//
//  DetailViewModel.swift
//  UI-33
//
//  Created by にゃんにゃん丸 on 2020/11/16.
//

import SwiftUI

class DetailViewModel: ObservableObject {
    @Published var selecteditem = Todayitem(id: "", title: "", category: "", overray: "", contentimage: "", log: "")
    @Published var show = false
}
