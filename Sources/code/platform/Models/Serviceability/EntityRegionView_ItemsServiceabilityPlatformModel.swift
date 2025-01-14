

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: EntityRegionView_Items
        Used By: Serviceability
    */

    class EntityRegionView_Items: Codable {
        
        
        public var subType: String
        
        public var uid: String
        
        public var name: String
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case subType = "sub_type"
            
            case uid = "uid"
            
            case name = "name"
            
            case displayName = "display_name"
            
        }

        public init(displayName: String? = nil, name: String, subType: String, uid: String) {
            
            self.subType = subType
            
            self.uid = uid
            
            self.name = name
            
            self.displayName = displayName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                subType = try container.decode(String.self, forKey: .subType)
                
            
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: EntityRegionView_Items
        Used By: Serviceability
    */

    class EntityRegionView_Items: Codable {
        
        
        public var subType: String
        
        public var uid: String
        
        public var name: String
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case subType = "sub_type"
            
            case uid = "uid"
            
            case name = "name"
            
            case displayName = "display_name"
            
        }

        public init(displayName: String? = nil, name: String, subType: String, uid: String) {
            
            self.subType = subType
            
            self.uid = uid
            
            self.name = name
            
            self.displayName = displayName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                subType = try container.decode(String.self, forKey: .subType)
                
            
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}


