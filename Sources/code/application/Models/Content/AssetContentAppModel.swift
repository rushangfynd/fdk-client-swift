

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: Asset
        Used By: Content
    */
    class Asset: Codable {
        
        public var aspectRatio: String?
        
        public var id: String?
        
        public var secureUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case aspectRatio = "aspect_ratio"
            
            case id = "id"
            
            case secureUrl = "secure_url"
            
        }

        public init(aspectRatio: String? = nil, id: String? = nil, secureUrl: String? = nil) {
            
            self.aspectRatio = aspectRatio
            
            self.id = id
            
            self.secureUrl = secureUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)
            
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
                secureUrl = try container.decode(String.self, forKey: .secureUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
            
            
        }
        
    }
}
