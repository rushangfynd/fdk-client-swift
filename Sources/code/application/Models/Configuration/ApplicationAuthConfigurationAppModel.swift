

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: ApplicationAuth
        Used By: Configuration
    */
    class ApplicationAuth: Codable {
        
        public var enabled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
        }

        public init(enabled: Bool? = nil) {
            
            self.enabled = enabled
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
        }
        
    }
}
