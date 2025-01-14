

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: IntentAppErrorList
        Used By: Payment
    */

    class IntentAppErrorList: Codable {
        
        
        public var packageName: String?
        
        public var code: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case packageName = "package_name"
            
            case code = "code"
            
        }

        public init(code: String? = nil, packageName: String? = nil) {
            
            self.packageName = packageName
            
            self.code = code
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    packageName = try container.decode(String.self, forKey: .packageName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(packageName, forKey: .packageName)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: IntentAppErrorList
        Used By: Payment
    */

    class IntentAppErrorList: Codable {
        
        
        public var packageName: String?
        
        public var code: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case packageName = "package_name"
            
            case code = "code"
            
        }

        public init(code: String? = nil, packageName: String? = nil) {
            
            self.packageName = packageName
            
            self.code = code
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    packageName = try container.decode(String.self, forKey: .packageName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(packageName, forKey: .packageName)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
        }
        
    }
}


