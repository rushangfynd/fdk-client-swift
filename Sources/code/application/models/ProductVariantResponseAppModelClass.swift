

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductVariantResponse
         Used By: Catalog
     */
    class ProductVariantResponse: Codable {
        public var displayType: String?

        public var key: String?

        public var header: String?

        public var items: [ProductVariantItemResponse]?

        public enum CodingKeys: String, CodingKey {
            case displayType = "display_type"

            case key

            case header

            case items
        }

        public init(displayType: String? = nil, header: String? = nil, items: [ProductVariantItemResponse]? = nil, key: String? = nil) {
            self.displayType = displayType

            self.key = key

            self.header = header

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayType = try container.decode(String.self, forKey: .displayType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                header = try container.decode(String.self, forKey: .header)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductVariantItemResponse].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(header, forKey: .header)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
