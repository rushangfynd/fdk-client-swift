

import Foundation
public extension PlatformClient {
    /*
         Model: ProdcutTemplateCategoriesResponse
         Used By: Catalog
     */

    class ProdcutTemplateCategoriesResponse: Codable {
        public var page: Page?

        public var items: [CategoriesResponse]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [CategoriesResponse]? = nil, page: Page? = nil) {
            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([CategoriesResponse].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
