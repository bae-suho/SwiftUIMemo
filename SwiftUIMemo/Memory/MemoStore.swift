//
//  MemoStore.swift
//  SwiftUIMemo
//
//  Created by 배수호 on 2023/06/19.
//

import Foundation

//메모목록을 저장하는 클래스

class MemoStore: ObservableObject{
    @Published var list: [Memo]
    
    init(){
        list = [
            Memo(content: "Hello", insertDate: Date.now),
            Memo(content: "Awsome", insertDate: Date.now.addingTimeInterval(3600 * -24)),
            Memo(content: "SwiftUI", insertDate: Date.now.addingTimeInterval(3600 * -48))
        ]
        //더미 데이터를 리스트에 추가
    }
    
    func insert(memo: String){
        list.insert(Memo(content: memo), at:0)
        //가장 첫 번째에 저장
    }
    
    func update(memo: Memo?, content: String){
        guard let memo = memo else{
            return
        }
        memo.content = content
    }
    
    func delete(memo: Memo){
        list.removeAll{$0.id == memo.id}
    }
    
    func delete(set: IndexSet){
        for index in set{
            list.remove(at: index)
        }
    }
}
