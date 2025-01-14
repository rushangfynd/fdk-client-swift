

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductSetV3
        Used By: Catalog
    */
    class ProductSetV3: Codable {
        
        public var quantity: Int?
        
        public var sizeDistribution: ProductSetDistributionV3?
        

        public enum CodingKeys: String, CodingKey {
            
            case quantity = "quantity"
            
            case sizeDistribution = "size_distribution"
            
        }

        public init(quantity: Int? = nil, sizeDistribution: ProductSetDistributionV3? = nil) {
            
            self.quantity = quantity
            
            self.sizeDistribution = sizeDistribution
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                quantity = try container.decode(Int.self, forKey: .quantity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                sizeDistribution = try container.decode(ProductSetDistributionV3.self, forKey: .sizeDistribution)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(sizeDistribution, forKey: .sizeDistribution)
            
            
        }
        
    }
}
