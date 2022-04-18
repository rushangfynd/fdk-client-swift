import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductListingActionPage
         Used By: Catalog
     */
    class ProductListingActionPage: Codable {
        public var query: [String: Any]?

        public var type: String?

        public var params: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case query

            case type

            case params
        }

        public init(params: [String: Any]? = nil, query: [String: Any]? = nil, type: String? = nil) {
            self.query = query

            self.type = type

            self.params = params
        }

        public func duplicate() -> ProductListingActionPage {
            let dict = self.dictionary!
            let copy = ProductListingActionPage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                params = try container.decode([String: Any].self, forKey: .params)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(params, forKey: .params)
        }
    }
}