

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: Moengage
        Used By: Configuration
    */
    class Moengage: Codable {
        
        public var credentials: MoengageCredentials?
        
        public var enabled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case credentials = "credentials"
            
            case enabled = "enabled"
            
        }

        public init(credentials: MoengageCredentials? = nil, enabled: Bool? = nil) {
            
            self.credentials = credentials
            
            self.enabled = enabled
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                credentials = try container.decode(MoengageCredentials.self, forKey: .credentials)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(credentials, forKey: .credentials)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
        }
        
    }
}
