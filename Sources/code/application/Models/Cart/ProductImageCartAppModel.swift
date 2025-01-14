

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ProductImage
        Used By: Cart
    */
    class ProductImage: Codable {
        
        public var secureUrl: String?
        
        public var aspectRatio: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case secureUrl = "secure_url"
            
            case aspectRatio = "aspect_ratio"
            
            case url = "url"
            
        }

        public init(aspectRatio: String? = nil, secureUrl: String? = nil, url: String? = nil) {
            
            self.secureUrl = secureUrl
            
            self.aspectRatio = aspectRatio
            
            self.url = url
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                secureUrl = try container.decode(String.self, forKey: .secureUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                url = try container.decode(String.self, forKey: .url)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
            
            
            
            
            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
}
