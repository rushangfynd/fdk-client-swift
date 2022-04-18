import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetCatalogConfigurationDetailsProduct
         Used By: Catalog
     */

    class GetCatalogConfigurationDetailsProduct: Codable {
        public var variant: [String: Any]?

        public var similar: [String: Any]?

        public var compare: [String: Any]?

        public var detail: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case variant

            case similar

            case compare

            case detail
        }

        public init(compare: [String: Any]? = nil, detail: [String: Any]? = nil, similar: [String: Any]? = nil, variant: [String: Any]? = nil) {
            self.variant = variant

            self.similar = similar

            self.compare = compare

            self.detail = detail
        }

        public func duplicate() -> GetCatalogConfigurationDetailsProduct {
            let dict = self.dictionary!
            let copy = GetCatalogConfigurationDetailsProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                variant = try container.decode([String: Any].self, forKey: .variant)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                similar = try container.decode([String: Any].self, forKey: .similar)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                compare = try container.decode([String: Any].self, forKey: .compare)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                detail = try container.decode([String: Any].self, forKey: .detail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(variant, forKey: .variant)

            try? container.encodeIfPresent(similar, forKey: .similar)

            try? container.encodeIfPresent(compare, forKey: .compare)

            try? container.encodeIfPresent(detail, forKey: .detail)
        }
    }
}