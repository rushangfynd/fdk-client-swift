

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: FreeGiftItemSchema
         Used By: Cart
     */

    class FreeGiftItemSchema: Codable {
        public var itemBrandName: String?

        public var itemSlug: String?

        public var itemImagesUrl: [String]?

        public var itemPriceDetails: [String: Any]?

        public var itemName: String?

        public var itemId: Int?

        public enum CodingKeys: String, CodingKey {
            case itemBrandName = "item_brand_name"

            case itemSlug = "item_slug"

            case itemImagesUrl = "item_images_url"

            case itemPriceDetails = "item_price_details"

            case itemName = "item_name"

            case itemId = "item_id"
        }

        public init(itemBrandName: String? = nil, itemId: Int? = nil, itemImagesUrl: [String]? = nil, itemName: String? = nil, itemPriceDetails: [String: Any]? = nil, itemSlug: String? = nil) {
            self.itemBrandName = itemBrandName

            self.itemSlug = itemSlug

            self.itemImagesUrl = itemImagesUrl

            self.itemPriceDetails = itemPriceDetails

            self.itemName = itemName

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemBrandName = try container.decode(String.self, forKey: .itemBrandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemSlug = try container.decode(String.self, forKey: .itemSlug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemImagesUrl = try container.decode([String].self, forKey: .itemImagesUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemPriceDetails = try container.decode([String: Any].self, forKey: .itemPriceDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemName = try container.decode(String.self, forKey: .itemName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemBrandName, forKey: .itemBrandName)

            try? container.encodeIfPresent(itemSlug, forKey: .itemSlug)

            try? container.encodeIfPresent(itemImagesUrl, forKey: .itemImagesUrl)

            try? container.encodeIfPresent(itemPriceDetails, forKey: .itemPriceDetails)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}