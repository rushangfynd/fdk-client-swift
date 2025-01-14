

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderBrandName
        Used By: Order
    */

    class OrderBrandName: Codable {
        
        
        public var logo: String?
        
        public var company: Int?
        
        public var id: Int
        
        public var createdOn: String?
        
        public var brandName: String?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case company = "company"
            
            case id = "id"
            
            case createdOn = "created_on"
            
            case brandName = "brand_name"
            
            case modifiedOn = "modified_on"
            
        }

        public init(brandName: String? = nil, company: Int? = nil, createdOn: String? = nil, id: Int, logo: String? = nil, modifiedOn: String? = nil) {
            
            self.logo = logo
            
            self.company = company
            
            self.id = id
            
            self.createdOn = createdOn
            
            self.brandName = brandName
            
            self.modifiedOn = modifiedOn
            
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
                
            
            
                do {
                    company = try container.decode(Int.self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandName = try container.decode(String.self, forKey: .brandName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(logo, forKey: .logo)
            
            
            
            
            try? container.encode(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encode(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encode(brandName, forKey: .brandName)
            
            
            
            
            try? container.encode(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderBrandName
        Used By: Order
    */

    class OrderBrandName: Codable {
        
        
        public var logo: String?
        
        public var company: Int?
        
        public var id: Int
        
        public var createdOn: String?
        
        public var brandName: String?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case company = "company"
            
            case id = "id"
            
            case createdOn = "created_on"
            
            case brandName = "brand_name"
            
            case modifiedOn = "modified_on"
            
        }

        public init(brandName: String? = nil, company: Int? = nil, createdOn: String? = nil, id: Int, logo: String? = nil, modifiedOn: String? = nil) {
            
            self.logo = logo
            
            self.company = company
            
            self.id = id
            
            self.createdOn = createdOn
            
            self.brandName = brandName
            
            self.modifiedOn = modifiedOn
            
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
                
            
            
                do {
                    company = try container.decode(Int.self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandName = try container.decode(String.self, forKey: .brandName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(logo, forKey: .logo)
            
            
            
            
            try? container.encode(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encode(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encode(brandName, forKey: .brandName)
            
            
            
            
            try? container.encode(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
}


