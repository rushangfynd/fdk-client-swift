

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: HSNCodesResponse
        Used By: Catalog
    */

    class HSNCodesResponse: Codable {
        
        
        public var data: HSNData?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case message = "message"
            
        }

        public init(data: HSNData? = nil, message: String? = nil) {
            
            self.data = data
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode(HSNData.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: HSNCodesResponse
        Used By: Catalog
    */

    class HSNCodesResponse: Codable {
        
        
        public var data: HSNData?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case message = "message"
            
        }

        public init(data: HSNData? = nil, message: String? = nil) {
            
            self.data = data
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode(HSNData.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


