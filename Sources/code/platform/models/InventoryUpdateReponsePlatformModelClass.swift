

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryUpdateReponse
         Used By: Catalog
     */

    class InventoryUpdateReponse: Codable {
        public var message: String

        public var items: [InventoryResponseItem]?

        public enum CodingKeys: String, CodingKey {
            case message

            case items
        }

        public init(items: [InventoryResponseItem]? = nil, message: String) {
            self.message = message

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            do {
                items = try container.decode([InventoryResponseItem].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}