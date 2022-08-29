

import Foundation
public extension PlatformClient {
    /*
         Model: ProductAttributesResponse
         Used By: Catalog
     */

    class ProductAttributesResponse: Codable {
        public var items: [AttributeMasterSerializer]

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [AttributeMasterSerializer]) {
            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([AttributeMasterSerializer].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
