

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: ProductAvailability
         Used By: PosCart
     */
    class ProductAvailability: Codable {
        public var outOfStock: Bool?

        public var isValid: Bool?

        public var otherStoreQuantity: Int?

        public var sizes: [String]?

        public var deliverable: Bool?

        public var availableSizes: [ProductAvailabilitySize]?

        public enum CodingKeys: String, CodingKey {
            case outOfStock = "out_of_stock"

            case isValid = "is_valid"

            case otherStoreQuantity = "other_store_quantity"

            case sizes

            case deliverable

            case availableSizes = "available_sizes"
        }

        public init(availableSizes: [ProductAvailabilitySize]? = nil, deliverable: Bool? = nil, isValid: Bool? = nil, otherStoreQuantity: Int? = nil, outOfStock: Bool? = nil, sizes: [String]? = nil) {
            self.outOfStock = outOfStock

            self.isValid = isValid

            self.otherStoreQuantity = otherStoreQuantity

            self.sizes = sizes

            self.deliverable = deliverable

            self.availableSizes = availableSizes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                outOfStock = try container.decode(Bool.self, forKey: .outOfStock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                otherStoreQuantity = try container.decode(Int.self, forKey: .otherStoreQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([String].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliverable = try container.decode(Bool.self, forKey: .deliverable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                availableSizes = try container.decode([ProductAvailabilitySize].self, forKey: .availableSizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(deliverable, forKey: .deliverable)

            try? container.encodeIfPresent(availableSizes, forKey: .availableSizes)
        }
    }
}
