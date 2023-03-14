

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductBundleItem
         Used By: Catalog
     */

    class ProductBundleItem: Codable {
        public var autoAddToCart: Bool?

        public var minQuantity: Int

        public var productUid: Int

        public var maxQuantity: Int

        public var autoSelect: Bool?

        public var allowRemove: Bool?

        public enum CodingKeys: String, CodingKey {
            case autoAddToCart = "auto_add_to_cart"

            case minQuantity = "min_quantity"

            case productUid = "product_uid"

            case maxQuantity = "max_quantity"

            case autoSelect = "auto_select"

            case allowRemove = "allow_remove"
        }

        public init(allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, maxQuantity: Int, minQuantity: Int, productUid: Int) {
            self.autoAddToCart = autoAddToCart

            self.minQuantity = minQuantity

            self.productUid = productUid

            self.maxQuantity = maxQuantity

            self.autoSelect = autoSelect

            self.allowRemove = allowRemove
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            productUid = try container.decode(Int.self, forKey: .productUid)

            maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

            do {
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductBundleItem
         Used By: Catalog
     */

    class ProductBundleItem: Codable {
        public var autoAddToCart: Bool?

        public var minQuantity: Int

        public var productUid: Int

        public var maxQuantity: Int

        public var autoSelect: Bool?

        public var allowRemove: Bool?

        public enum CodingKeys: String, CodingKey {
            case autoAddToCart = "auto_add_to_cart"

            case minQuantity = "min_quantity"

            case productUid = "product_uid"

            case maxQuantity = "max_quantity"

            case autoSelect = "auto_select"

            case allowRemove = "allow_remove"
        }

        public init(allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, maxQuantity: Int, minQuantity: Int, productUid: Int) {
            self.autoAddToCart = autoAddToCart

            self.minQuantity = minQuantity

            self.productUid = productUid

            self.maxQuantity = maxQuantity

            self.autoSelect = autoSelect

            self.allowRemove = allowRemove
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            productUid = try container.decode(Int.self, forKey: .productUid)

            maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

            do {
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
        }
    }
}