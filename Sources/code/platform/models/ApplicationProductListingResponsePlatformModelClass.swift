import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationProductListingResponse
         Used By: Catalog
     */

    class ApplicationProductListingResponse: Codable {
        public var items: [ProductListingDetail]?

        public var page: Page

        public var sortOn: [ProductSortOn]?

        public var filters: [ProductFilters]?

        public enum CodingKeys: String, CodingKey {
            case items

            case page

            case sortOn = "sort_on"

            case filters
        }

        public init(filters: [ProductFilters]? = nil, items: [ProductListingDetail]? = nil, page: Page, sortOn: [ProductSortOn]? = nil) {
            self.items = items

            self.page = page

            self.sortOn = sortOn

            self.filters = filters
        }

        public func duplicate() -> ApplicationProductListingResponse {
            let dict = self.dictionary!
            let copy = ApplicationProductListingResponse(dictionary: dict)!
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

            page = try container.decode(Page.self, forKey: .page)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}