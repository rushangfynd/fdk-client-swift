

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductInGroup
         Used By: Catalog
     */
    class ProductInGroup: Codable {
        public var minQuantity: Int?

        public var productUid: Int

        public var autoSelect: Bool?

        public var productDetails: ProductDetails?

        public var allowRemove: Bool?

        public var price: ProductGroupPrice?

        public var maxQuantity: Int

        public var autoAddToCart: Bool?

        public var sizes: [Size]?

        public enum CodingKeys: String, CodingKey {
            case minQuantity = "min_quantity"

            case productUid = "product_uid"

            case autoSelect = "auto_select"

            case productDetails = "product_details"

            case allowRemove = "allow_remove"

            case price

            case maxQuantity = "max_quantity"

            case autoAddToCart = "auto_add_to_cart"

            case sizes
        }

        public init(allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, maxQuantity: Int, minQuantity: Int? = nil, price: ProductGroupPrice? = nil, productDetails: ProductDetails? = nil, productUid: Int, sizes: [Size]? = nil) {
            self.minQuantity = minQuantity

            self.productUid = productUid

            self.autoSelect = autoSelect

            self.productDetails = productDetails

            self.allowRemove = allowRemove

            self.price = price

            self.maxQuantity = maxQuantity

            self.autoAddToCart = autoAddToCart

            self.sizes = sizes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            productUid = try container.decode(Int.self, forKey: .productUid)

            do {
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productDetails = try container.decode(ProductDetails.self, forKey: .productDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowRemove = try container.decode(Bool.self, forKey: .allowRemove)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductGroupPrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

            do {
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([Size].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(productDetails, forKey: .productDetails)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(sizes, forKey: .sizes)
        }
    }
}
