

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: CustomerShippingDetail
        Used By: FileStorage
    */

    class CustomerShippingDetail: Codable {
        
        
        public var name: String?
        
        public var phoneNo: String?
        
        public var address: String?
        
        public var city: String?
        
        public var state: String?
        
        public var country: String?
        
        public var countryCode: String?
        
        public var zipCode: String?
        
        public var stateCode: String?
        
        public var gstin: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case phoneNo = "phone_no"
            
            case address = "address"
            
            case city = "city"
            
            case state = "state"
            
            case country = "country"
            
            case countryCode = "country_code"
            
            case zipCode = "zip_code"
            
            case stateCode = "state_code"
            
            case gstin = "gstin"
            
        }

        public init(address: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, gstin: String? = nil, name: String? = nil, phoneNo: String? = nil, state: String? = nil, stateCode: String? = nil, zipCode: String? = nil) {
            
            self.name = name
            
            self.phoneNo = phoneNo
            
            self.address = address
            
            self.city = city
            
            self.state = state
            
            self.country = country
            
            self.countryCode = countryCode
            
            self.zipCode = zipCode
            
            self.stateCode = stateCode
            
            self.gstin = gstin
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phoneNo = try container.decode(String.self, forKey: .phoneNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zipCode = try container.decode(String.self, forKey: .zipCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stateCode = try container.decode(String.self, forKey: .stateCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(phoneNo, forKey: .phoneNo)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(zipCode, forKey: .zipCode)
            
            
            
            
            try? container.encodeIfPresent(stateCode, forKey: .stateCode)
            
            
            
            
            try? container.encode(gstin, forKey: .gstin)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: CustomerShippingDetail
        Used By: FileStorage
    */

    class CustomerShippingDetail: Codable {
        
        
        public var name: String?
        
        public var phoneNo: String?
        
        public var address: String?
        
        public var city: String?
        
        public var state: String?
        
        public var country: String?
        
        public var countryCode: String?
        
        public var zipCode: String?
        
        public var stateCode: String?
        
        public var gstin: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case phoneNo = "phone_no"
            
            case address = "address"
            
            case city = "city"
            
            case state = "state"
            
            case country = "country"
            
            case countryCode = "country_code"
            
            case zipCode = "zip_code"
            
            case stateCode = "state_code"
            
            case gstin = "gstin"
            
        }

        public init(address: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, gstin: String? = nil, name: String? = nil, phoneNo: String? = nil, state: String? = nil, stateCode: String? = nil, zipCode: String? = nil) {
            
            self.name = name
            
            self.phoneNo = phoneNo
            
            self.address = address
            
            self.city = city
            
            self.state = state
            
            self.country = country
            
            self.countryCode = countryCode
            
            self.zipCode = zipCode
            
            self.stateCode = stateCode
            
            self.gstin = gstin
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phoneNo = try container.decode(String.self, forKey: .phoneNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zipCode = try container.decode(String.self, forKey: .zipCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stateCode = try container.decode(String.self, forKey: .stateCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(phoneNo, forKey: .phoneNo)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(zipCode, forKey: .zipCode)
            
            
            
            
            try? container.encodeIfPresent(stateCode, forKey: .stateCode)
            
            
            
            
            try? container.encode(gstin, forKey: .gstin)
            
            
        }
        
    }
}


