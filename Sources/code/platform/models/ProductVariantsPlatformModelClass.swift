

import Foundation
public extension PlatformClient {
    /*
         Model: ProductVariants
         Used By: Catalog
     */

    class ProductVariants: Codable {
        public var brandUid: Int?

        public var name: String?

        public var categoryUid: Int?

        public var media: [Media1]?

        public var uid: Int?

        public var itemCode: String?

        public enum CodingKeys: String, CodingKey {
            case brandUid = "brand_uid"

            case name

            case categoryUid = "category_uid"

            case media

            case uid

            case itemCode = "item_code"
        }

        public init(brandUid: Int? = nil, categoryUid: Int? = nil, itemCode: String? = nil, media: [Media1]? = nil, name: String? = nil, uid: Int? = nil) {
            self.brandUid = brandUid

            self.name = name

            self.categoryUid = categoryUid

            self.media = media

            self.uid = uid

            self.itemCode = itemCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandUid = try container.decode(Int.self, forKey: .brandUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categoryUid = try container.decode(Int.self, forKey: .categoryUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(categoryUid, forKey: .categoryUid)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
        }
    }
}