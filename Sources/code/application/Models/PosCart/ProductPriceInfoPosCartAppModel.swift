

import Foundation
public extension ApplicationClient.PosCart {
    /*
        Model: ProductPriceInfo
        Used By: PosCart
    */
    class ProductPriceInfo: Codable {
        
        public var converted: ProductPrice?
        
        public var base: ProductPrice?
        

        public enum CodingKeys: String, CodingKey {
            
            case converted = "converted"
            
            case base = "base"
            
        }

        public init(base: ProductPrice? = nil, converted: ProductPrice? = nil) {
            
            self.converted = converted
            
            self.base = base
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                converted = try container.decode(ProductPrice.self, forKey: .converted)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                base = try container.decode(ProductPrice.self, forKey: .base)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(converted, forKey: .converted)
            
            
            
            
            try? container.encodeIfPresent(base, forKey: .base)
            
            
        }
        
    }
}
