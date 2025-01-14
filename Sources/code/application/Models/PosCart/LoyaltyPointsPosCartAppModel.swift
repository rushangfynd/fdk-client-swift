

import Foundation
public extension ApplicationClient.PosCart {
    /*
        Model: LoyaltyPoints
        Used By: PosCart
    */
    class LoyaltyPoints: Codable {
        
        public var description: String?
        
        public var isApplied: Bool?
        
        public var applicable: Double?
        
        public var total: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case isApplied = "is_applied"
            
            case applicable = "applicable"
            
            case total = "total"
            
        }

        public init(applicable: Double? = nil, description: String? = nil, isApplied: Bool? = nil, total: Double? = nil) {
            
            self.description = description
            
            self.isApplied = isApplied
            
            self.applicable = applicable
            
            self.total = total
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                description = try container.decode(String.self, forKey: .description)
            
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
            
            
            
            do {
                applicable = try container.decode(Double.self, forKey: .applicable)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                total = try container.decode(Double.self, forKey: .total)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            
            
            
            try? container.encodeIfPresent(applicable, forKey: .applicable)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
        }
        
    }
}
