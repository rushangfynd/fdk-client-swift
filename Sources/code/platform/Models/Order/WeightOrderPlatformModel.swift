

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Weight
        Used By: Order
    */

    class Weight: Codable {
        
        
        public var isDefault: Bool?
        
        public var shipping: Int?
        
        public var unit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
            case shipping = "shipping"
            
            case unit = "unit"
            
        }

        public init(isDefault: Bool? = nil, shipping: Int? = nil, unit: String? = nil) {
            
            self.isDefault = isDefault
            
            self.shipping = shipping
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipping = try container.decode(Int.self, forKey: .shipping)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encode(shipping, forKey: .shipping)
            
            
            
            
            try? container.encode(unit, forKey: .unit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Weight
        Used By: Order
    */

    class Weight: Codable {
        
        
        public var isDefault: Bool?
        
        public var shipping: Int?
        
        public var unit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
            case shipping = "shipping"
            
            case unit = "unit"
            
        }

        public init(isDefault: Bool? = nil, shipping: Int? = nil, unit: String? = nil) {
            
            self.isDefault = isDefault
            
            self.shipping = shipping
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipping = try container.decode(Int.self, forKey: .shipping)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encode(shipping, forKey: .shipping)
            
            
            
            
            try? container.encode(unit, forKey: .unit)
            
            
        }
        
    }
}


