import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: StoreByBrandsResponse
         Used By: Configuration
     */

    class StoreByBrandsResponse: Codable {
        public var items: [BrandStoreInfo]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [BrandStoreInfo]? = nil, page: Page? = nil) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> StoreByBrandsResponse {
            let dict = self.dictionary!
            let copy = StoreByBrandsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([BrandStoreInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}