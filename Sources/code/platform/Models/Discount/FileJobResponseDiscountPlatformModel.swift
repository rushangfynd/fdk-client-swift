

import Foundation


public extension PlatformClient.Discount {
    /*
        Model: FileJobResponse
        Used By: Discount
    */

    class FileJobResponse: Codable {
        
        
        public var stage: String
        
        public var total: Int
        
        public var failed: Int
        
        public var companyId: Int
        
        public var body: [String: Any]?
        
        public var type: String
        
        public var fileType: String
        
        public var id: String
        

        public enum CodingKeys: String, CodingKey {
            
            case stage = "stage"
            
            case total = "total"
            
            case failed = "failed"
            
            case companyId = "company_id"
            
            case body = "body"
            
            case type = "type"
            
            case fileType = "file_type"
            
            case id = "_id"
            
        }

        public init(body: [String: Any]? = nil, companyId: Int, failed: Int, fileType: String, stage: String, total: Int, type: String, id: String) {
            
            self.stage = stage
            
            self.total = total
            
            self.failed = failed
            
            self.companyId = companyId
            
            self.body = body
            
            self.type = type
            
            self.fileType = fileType
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                total = try container.decode(Int.self, forKey: .total)
                
            
            
            
                failed = try container.decode(Int.self, forKey: .failed)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    body = try container.decode([String: Any].self, forKey: .body)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                fileType = try container.decode(String.self, forKey: .fileType)
                
            
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(failed, forKey: .failed)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(body, forKey: .body)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(fileType, forKey: .fileType)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}




