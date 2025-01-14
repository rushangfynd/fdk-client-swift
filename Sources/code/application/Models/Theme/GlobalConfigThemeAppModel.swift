

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: GlobalConfig
        Used By: Theme
    */
    class GlobalConfig: Codable {
        
        public var statics: StaticConfig?
        
        public var custom: CustomConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case statics = "statics"
            
            case custom = "custom"
            
        }

        public init(custom: CustomConfig? = nil, statics: StaticConfig? = nil) {
            
            self.statics = statics
            
            self.custom = custom
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                statics = try container.decode(StaticConfig.self, forKey: .statics)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                custom = try container.decode(CustomConfig.self, forKey: .custom)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statics, forKey: .statics)
            
            
            
            
            try? container.encodeIfPresent(custom, forKey: .custom)
            
            
        }
        
    }
}
