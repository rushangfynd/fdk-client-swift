

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: UpdateThemeNameRequestBody
        Used By: Theme
    */

    class UpdateThemeNameRequestBody: Codable {
        
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
        }

        public init(name: String? = nil) {
            
            self.name = name
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: UpdateThemeNameRequestBody
        Used By: Theme
    */

    class UpdateThemeNameRequestBody: Codable {
        
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
        }

        public init(name: String? = nil) {
            
            self.name = name
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}


