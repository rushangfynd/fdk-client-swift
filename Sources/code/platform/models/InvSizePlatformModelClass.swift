

import Foundation
public extension PlatformClient {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var identifiers: [GTIN]

        public var set: InventorySet?

        public var quantity: Int

        public var currency: String

        public var itemHeight: Double?

        public var itemWeight: Double?

        public var priceTransfer: Double?

        public var priceEffective: Double

        public var isSet: Bool?

        public var itemLength: Double?

        public var storeCode: String

        public var itemWidth: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var price: Double?

        public var itemWeightUnitOfMeasure: String?

        public var expirationDate: String?

        public var size: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case set

            case quantity

            case currency

            case itemHeight = "item_height"

            case itemWeight = "item_weight"

            case priceTransfer = "price_transfer"

            case priceEffective = "price_effective"

            case isSet = "is_set"

            case itemLength = "item_length"

            case storeCode = "store_code"

            case itemWidth = "item_width"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case price

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case expirationDate = "expiration_date"

            case size
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: [String: Any], storeCode: String) {
            self.identifiers = identifiers

            self.set = set

            self.quantity = quantity

            self.currency = currency

            self.itemHeight = itemHeight

            self.itemWeight = itemWeight

            self.priceTransfer = priceTransfer

            self.priceEffective = priceEffective

            self.isSet = isSet

            self.itemLength = itemLength

            self.storeCode = storeCode

            self.itemWidth = itemWidth

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.price = price

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.expirationDate = expirationDate

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemLength = try container.decode(Double.self, forKey: .itemLength)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode([String: Any].self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
