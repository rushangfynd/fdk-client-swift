import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetCollectionItemsResponse
         Used By: Catalog
     */

    class GetCollectionItemsResponse: Codable {
        public var items: [ProductListingDetail]?

        public var sortOn: [ProductSortOn]?

        public var filters: [ProductFilters]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case sortOn = "sort_on"

            case filters

            case page
        }

        public init(filters: [ProductFilters]? = nil, items: [ProductListingDetail]? = nil, page: Page? = nil, sortOn: [ProductSortOn]? = nil) {
            self.items = items

            self.sortOn = sortOn

            self.filters = filters

            self.page = page
        }

        public func duplicate() -> GetCollectionItemsResponse {
            let dict = self.dictionary!
            let copy = GetCollectionItemsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([ProductListingDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode([ProductFilters].self, forKey: .filters)

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

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}