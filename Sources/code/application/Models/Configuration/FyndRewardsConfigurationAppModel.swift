

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: FyndRewards
        Used By: Configuration
    */
    class FyndRewards: Codable {
        
        public var credentials: FyndRewardsCredentials?
        

        public enum CodingKeys: String, CodingKey {
            
            case credentials = "credentials"
            
        }

        public init(credentials: FyndRewardsCredentials? = nil) {
            
            self.credentials = credentials
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                credentials = try container.decode(FyndRewardsCredentials.self, forKey: .credentials)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(credentials, forKey: .credentials)
            
            
        }
        
    }
}
