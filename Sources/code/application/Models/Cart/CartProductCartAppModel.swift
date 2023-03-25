

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: CartProduct
         Used By: Cart
     */
    class CartProduct: Codable {
        public var name: String?

        public var action: ProductAction?

        public var brand: BaseInfo?

        public var categories: [CategoryInfo]?

        public var slug: String?

        public var type: String?

        public var itemCode: String?

        public var netQuantity: NetQuantity?

        public var images: [ProductImage]?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case action

            case brand

            case categories

            case slug

            case type

            case itemCode = "item_code"

            case netQuantity = "net_quantity"

            case images

            case uid
        }

        public init(action: ProductAction? = nil, brand: BaseInfo? = nil, categories: [CategoryInfo]? = nil, images: [ProductImage]? = nil, itemCode: String? = nil, name: String? = nil, netQuantity: NetQuantity? = nil, slug: String? = nil, type: String? = nil, uid: Int? = nil) {
            self.name = name

            self.action = action

            self.brand = brand

            self.categories = categories

            self.slug = slug

            self.type = type

            self.itemCode = itemCode

            self.netQuantity = netQuantity

            self.images = images

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(ProductAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(BaseInfo.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categories = try container.decode([CategoryInfo].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                images = try container.decode([ProductImage].self, forKey: .images)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(categories, forKey: .categories)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encode(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
