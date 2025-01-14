

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: CollectionQuery
        Used By: Catalog
    */
    class CollectionQuery: Codable {
        
        public var op: String
        
        public var value: [[String: Any]]
        
        public var attribute: String
        

        public enum CodingKeys: String, CodingKey {
            
            case op = "op"
            
            case value = "value"
            
            case attribute = "attribute"
            
        }

        public init(attribute: String, op: String, value: [[String: Any]]) {
            
            self.op = op
            
            self.value = value
            
            self.attribute = attribute
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            op = try container.decode(String.self, forKey: .op)
            
            
            
            
            value = try container.decode([[String: Any]].self, forKey: .value)
            
            
            
            
            attribute = try container.decode(String.self, forKey: .attribute)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(op, forKey: .op)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(attribute, forKey: .attribute)
            
            
        }
        
    }
}
