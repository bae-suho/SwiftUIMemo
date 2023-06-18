//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by 배수호 on 2023/06/19.
//

import Foundation
import SwiftUI


class Memo: Identifiable, ObservableObject{
    //두 가지 프로토콜을 채용함
    //Identifiable은 데이터를 리스트에 쉽게 바인딩하기 위해서 필요
    //ObservableObject는 메모를 편집할 때 뷰를 자동으로 업데이트하기 위해서 필요
    let id: UUID //Identifiable이 요구하는 속성
    @Published var content: String //메모를 저장하는 속성
    //@Published는 새로운 값을 저장할 때 마다 바인딩된 UI가 자동으로 업데이트됨
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date.now){
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
