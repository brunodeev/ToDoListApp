
import Foundation

extension Encodable {
    func asDictionary() -> [String: Any] {                              // Funcao que transforma um dicionario em JSON
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
