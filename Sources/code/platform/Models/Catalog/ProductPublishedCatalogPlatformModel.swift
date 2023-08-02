

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductPublished
        Used By: Catalog
    */

    class ProductPublished: Codable {
        
        
        public var productOnlineDate: Int?
        
        public var isSet: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case productOnlineDate = "product_online_date"
            
            case isSet = "is_set"
            
        }

        public init(isSet: Bool? = nil, productOnlineDate: Int? = nil) {
            
            self.productOnlineDate = productOnlineDate
            
            self.isSet = isSet
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    productOnlineDate = try container.decode(Int.self, forKey: .productOnlineDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductPublished
        Used By: Catalog
    */

    class ProductPublished: Codable {
        
        
        public var productOnlineDate: Int?
        
        public var isSet: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case productOnlineDate = "product_online_date"
            
            case isSet = "is_set"
            
        }

        public init(isSet: Bool? = nil, productOnlineDate: Int? = nil) {
            
            self.productOnlineDate = productOnlineDate
            
            self.isSet = isSet
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    productOnlineDate = try container.decode(Int.self, forKey: .productOnlineDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
        }
        
    }
}


