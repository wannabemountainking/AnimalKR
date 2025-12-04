//
//  JsonDecodeExtension.swift
//  AnimalKR
//
//  Created by yoonie on 12/5/25.
//

import Foundation


extension Bundle {
    
    // 로컬 컴퓨터 내에서 Json 파일 형태의 데이터로 저장한 것을 가져오는 코드
    func decode<T: Codable>(_ file: String) -> T {
        // 1. JSON 파일 가져오기
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        // 2. JSON 로 부터 Data 생성
        guard let data = try? Data(contentsOf: url) else  {
            fatalError("Failed to load \(file) from bundle")
        }
        // 3. JSON Decoder 생성
        let decoder = JSONDecoder()
        
        // 4. 만든 Decoder를 통해서 Data를 Swift 상에서 읽을 수 있게 Decode 하기
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        // 5. Decode 된 Data Return 하기
        return loaded
    }
}
