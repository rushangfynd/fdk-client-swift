

import Foundation




public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CreateFaqCategoryRequestSchema
        Used By: Content
    */

    class CreateFaqCategoryRequestSchema: Codable {
        
        
        public var category: CategoryRequestSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
        }

        public init(category: CategoryRequestSchema? = nil) {
            
            self.category = category
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    category = try container.decode(CategoryRequestSchema.self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
        }
        
    }
}


