

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: Domain
        Used By: Configuration
    */
    class Domain: Codable {
        
        public var verified: Bool?
        
        public var isPrimary: Bool?
        
        public var isShortlink: Bool?
        
        public var id: String?
        
        public var name: String?
        
        public var isPredefined: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case verified = "verified"
            
            case isPrimary = "is_primary"
            
            case isShortlink = "is_shortlink"
            
            case id = "_id"
            
            case name = "name"
            
            case isPredefined = "is_predefined"
            
        }

        public init(isPredefined: Bool? = nil, isPrimary: Bool? = nil, isShortlink: Bool? = nil, name: String? = nil, verified: Bool? = nil, id: String? = nil) {
            
            self.verified = verified
            
            self.isPrimary = isPrimary
            
            self.isShortlink = isShortlink
            
            self.id = id
            
            self.name = name
            
            self.isPredefined = isPredefined
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                verified = try container.decode(Bool.self, forKey: .verified)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isPrimary = try container.decode(Bool.self, forKey: .isPrimary)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isShortlink = try container.decode(Bool.self, forKey: .isShortlink)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isPredefined = try container.decode(Bool.self, forKey: .isPredefined)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
            
            
            try? container.encodeIfPresent(isPrimary, forKey: .isPrimary)
            
            
            
            
            try? container.encodeIfPresent(isShortlink, forKey: .isShortlink)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isPredefined, forKey: .isPredefined)
            
            
        }
        
    }
}
