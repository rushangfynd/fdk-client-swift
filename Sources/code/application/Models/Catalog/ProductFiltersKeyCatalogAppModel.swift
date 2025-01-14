

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductFiltersKey
        Used By: Catalog
    */
    class ProductFiltersKey: Codable {
        
        public var logo: String?
        
        public var name: String
        
        public var kind: String?
        
        public var display: String
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case name = "name"
            
            case kind = "kind"
            
            case display = "display"
            
        }

        public init(display: String, kind: String? = nil, logo: String? = nil, name: String) {
            
            self.logo = logo
            
            self.name = name
            
            self.kind = kind
            
            self.display = display
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                logo = try container.decode(String.self, forKey: .logo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            name = try container.decode(String.self, forKey: .name)
            
            
            
            
            do {
                kind = try container.decode(String.self, forKey: .kind)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            display = try container.decode(String.self, forKey: .display)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(kind, forKey: .kind)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
        }
        
    }
}
