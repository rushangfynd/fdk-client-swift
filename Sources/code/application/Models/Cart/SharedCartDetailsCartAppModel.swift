

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: SharedCartDetails
        Used By: Cart
    */
    class SharedCartDetails: Codable {
        
        public var token: String?
        
        public var user: [String: Any]?
        
        public var createdOn: String?
        
        public var source: [String: Any]?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case token = "token"
            
            case user = "user"
            
            case createdOn = "created_on"
            
            case source = "source"
            
            case meta = "meta"
            
        }

        public init(createdOn: String? = nil, meta: [String: Any]? = nil, source: [String: Any]? = nil, token: String? = nil, user: [String: Any]? = nil) {
            
            self.token = token
            
            self.user = user
            
            self.createdOn = createdOn
            
            self.source = source
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                token = try container.decode(String.self, forKey: .token)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                user = try container.decode([String: Any].self, forKey: .user)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                source = try container.decode([String: Any].self, forKey: .source)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                meta = try container.decode([String: Any].self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}
