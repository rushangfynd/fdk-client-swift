

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderListingResponse
        Used By: Order
    */

    class OrderListingResponse: Codable {
        
        
        public var totalCount: Int?
        
        public var message: String?
        
        public var success: Bool?
        
        public var items: [PlatformOrderItems]?
        
        public var lane: String?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalCount = "total_count"
            
            case message = "message"
            
            case success = "success"
            
            case items = "items"
            
            case lane = "lane"
            
            case page = "page"
            
        }

        public init(items: [PlatformOrderItems]? = nil, lane: String? = nil, message: String? = nil, page: Page? = nil, success: Bool? = nil, totalCount: Int? = nil) {
            
            self.totalCount = totalCount
            
            self.message = message
            
            self.success = success
            
            self.items = items
            
            self.lane = lane
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    totalCount = try container.decode(Int.self, forKey: .totalCount)
                
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
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([PlatformOrderItems].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lane = try container.decode(String.self, forKey: .lane)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(totalCount, forKey: .totalCount)
            
            
            
            
            try? container.encode(message, forKey: .message)
            
            
            
            
            try? container.encode(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encode(lane, forKey: .lane)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderListingResponse
        Used By: Order
    */

    class OrderListingResponse: Codable {
        
        
        public var totalCount: Int?
        
        public var message: String?
        
        public var success: Bool?
        
        public var items: [PlatformOrderItems]?
        
        public var lane: String?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalCount = "total_count"
            
            case message = "message"
            
            case success = "success"
            
            case items = "items"
            
            case lane = "lane"
            
            case page = "page"
            
        }

        public init(items: [PlatformOrderItems]? = nil, lane: String? = nil, message: String? = nil, page: Page? = nil, success: Bool? = nil, totalCount: Int? = nil) {
            
            self.totalCount = totalCount
            
            self.message = message
            
            self.success = success
            
            self.items = items
            
            self.lane = lane
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    totalCount = try container.decode(Int.self, forKey: .totalCount)
                
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
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([PlatformOrderItems].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lane = try container.decode(String.self, forKey: .lane)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(totalCount, forKey: .totalCount)
            
            
            
            
            try? container.encode(message, forKey: .message)
            
            
            
            
            try? container.encode(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encode(lane, forKey: .lane)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}


