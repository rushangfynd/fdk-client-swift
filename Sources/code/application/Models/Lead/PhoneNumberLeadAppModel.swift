

import Foundation
public extension ApplicationClient.Lead {
    /*
        Model: PhoneNumber
        Used By: Lead
    */
    class PhoneNumber: Codable {
        
        public var active: Bool?
        
        public var primary: Bool?
        
        public var verified: Bool?
        
        public var phone: String?
        
        public var countryCode: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case active = "active"
            
            case primary = "primary"
            
            case verified = "verified"
            
            case phone = "phone"
            
            case countryCode = "country_code"
            
        }

        public init(active: Bool? = nil, countryCode: Int? = nil, phone: String? = nil, primary: Bool? = nil, verified: Bool? = nil) {
            
            self.active = active
            
            self.primary = primary
            
            self.verified = verified
            
            self.phone = phone
            
            self.countryCode = countryCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                active = try container.decode(Bool.self, forKey: .active)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                primary = try container.decode(Bool.self, forKey: .primary)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                verified = try container.decode(Bool.self, forKey: .verified)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                phone = try container.decode(String.self, forKey: .phone)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                countryCode = try container.decode(Int.self, forKey: .countryCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(primary, forKey: .primary)
            
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}
