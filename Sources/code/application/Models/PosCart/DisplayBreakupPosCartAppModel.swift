

import Foundation
public extension ApplicationClient.PosCart {
    /*
        Model: DisplayBreakup
        Used By: PosCart
    */
    class DisplayBreakup: Codable {
        
        public var currencyCode: String?
        
        public var currencySymbol: String?
        
        public var display: String?
        
        public var message: [String]?
        
        public var key: String?
        
        public var value: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
            case display = "display"
            
            case message = "message"
            
            case key = "key"
            
            case value = "value"
            
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil, display: String? = nil, key: String? = nil, message: [String]? = nil, value: Double? = nil) {
            
            self.currencyCode = currencyCode
            
            self.currencySymbol = currencySymbol
            
            self.display = display
            
            self.message = message
            
            self.key = key
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                display = try container.decode(String.self, forKey: .display)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                message = try container.decode([String].self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                key = try container.decode(String.self, forKey: .key)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                value = try container.decode(Double.self, forKey: .value)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}
