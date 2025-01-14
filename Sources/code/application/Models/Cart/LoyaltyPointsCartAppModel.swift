

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: LoyaltyPoints
        Used By: Cart
    */
    class LoyaltyPoints: Codable {
        
        public var total: Double?
        
        public var description: String?
        
        public var applicable: Double?
        
        public var isApplied: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case total = "total"
            
            case description = "description"
            
            case applicable = "applicable"
            
            case isApplied = "is_applied"
            
        }

        public init(applicable: Double? = nil, description: String? = nil, isApplied: Bool? = nil, total: Double? = nil) {
            
            self.total = total
            
            self.description = description
            
            self.applicable = applicable
            
            self.isApplied = isApplied
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                total = try container.decode(Double.self, forKey: .total)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                description = try container.decode(String.self, forKey: .description)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                applicable = try container.decode(Double.self, forKey: .applicable)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isApplied = try container.decode(Bool.self, forKey: .isApplied)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(applicable, forKey: .applicable)
            
            
            
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            
        }
        
    }
}
