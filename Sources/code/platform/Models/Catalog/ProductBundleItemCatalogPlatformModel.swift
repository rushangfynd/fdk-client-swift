

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductBundleItem
         Used By: Catalog
     */

    class ProductBundleItem: Codable {
        public var autoSelect: Bool?

        public var maxQuantity: Int

        public var minQuantity: Int

        public var allowRemove: Bool?

        public var productUid: Int

        public var autoAddToCart: Bool?

        public enum CodingKeys: String, CodingKey {
            case autoSelect = "auto_select"

            case maxQuantity = "max_quantity"

            case minQuantity = "min_quantity"

            case allowRemove = "allow_remove"

            case productUid = "product_uid"

            case autoAddToCart = "auto_add_to_cart"
        }

        public init(allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, maxQuantity: Int, minQuantity: Int, productUid: Int) {
            self.autoSelect = autoSelect

            self.maxQuantity = maxQuantity

            self.minQuantity = minQuantity

            self.allowRemove = allowRemove

            self.productUid = productUid

            self.autoAddToCart = autoAddToCart
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

            minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            do {
                allowRemove = try container.decode(Bool.self, forKey: .allowRemove)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            productUid = try container.decode(Int.self, forKey: .productUid)

            do {
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductBundleItem
         Used By: Catalog
     */

    class ProductBundleItem: Codable {
        public var autoSelect: Bool?

        public var maxQuantity: Int

        public var minQuantity: Int

        public var allowRemove: Bool?

        public var productUid: Int

        public var autoAddToCart: Bool?

        public enum CodingKeys: String, CodingKey {
            case autoSelect = "auto_select"

            case maxQuantity = "max_quantity"

            case minQuantity = "min_quantity"

            case allowRemove = "allow_remove"

            case productUid = "product_uid"

            case autoAddToCart = "auto_add_to_cart"
        }

        public init(allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, maxQuantity: Int, minQuantity: Int, productUid: Int) {
            self.autoSelect = autoSelect

            self.maxQuantity = maxQuantity

            self.minQuantity = minQuantity

            self.allowRemove = allowRemove

            self.productUid = productUid

            self.autoAddToCart = autoAddToCart
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

            minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            do {
                allowRemove = try container.decode(Bool.self, forKey: .allowRemove)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            productUid = try container.decode(Int.self, forKey: .productUid)

            do {
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)
        }
    }
}
