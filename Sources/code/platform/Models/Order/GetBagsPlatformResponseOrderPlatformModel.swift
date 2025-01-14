

import Foundation


public extension PlatformClient.Order {
    /*
        Model: GetBagsPlatformResponse
        Used By: Order
    */

    class GetBagsPlatformResponse: Codable {
        
        
        public var items: [BagDetailsPlatformResponse]
        
        public var page: BagsPage
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [BagDetailsPlatformResponse], page: BagsPage) {
            
            self.items = items
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([BagDetailsPlatformResponse].self, forKey: .items)
                
            
            
            
                page = try container.decode(BagsPage.self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: GetBagsPlatformResponse
        Used By: Order
    */

    class GetBagsPlatformResponse: Codable {
        
        
        public var items: [BagDetailsPlatformResponse]
        
        public var page: BagsPage
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [BagDetailsPlatformResponse], page: BagsPage) {
            
            self.items = items
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([BagDetailsPlatformResponse].self, forKey: .items)
                
            
            
            
                page = try container.decode(BagsPage.self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}


