

import Foundation
public extension PlatformClient {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var quantity: Int

        public var priceEffective: Double

        public var itemDimensionsUnitOfMeasure: String?

        public var storeCode: String

        public var price: Double?

        public var isSet: Bool?

        public var size: String

        public var priceTransfer: Double?

        public var itemWeight: Double?

        public var identifiers: [GTIN]

        public var currency: String

        public var itemWeightUnitOfMeasure: String?

        public var itemLength: Double?

        public var itemHeight: Double?

        public var expirationDate: String?

        public var set: InventorySet?

        public var itemWidth: Double?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case priceEffective = "price_effective"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case storeCode = "store_code"

            case price

            case isSet = "is_set"

            case size

            case priceTransfer = "price_transfer"

            case itemWeight = "item_weight"

            case identifiers

            case currency

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemLength = "item_length"

            case itemHeight = "item_height"

            case expirationDate = "expiration_date"

            case set

            case itemWidth = "item_width"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.quantity = quantity

            self.priceEffective = priceEffective

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.storeCode = storeCode

            self.price = price

            self.isSet = isSet

            self.size = size

            self.priceTransfer = priceTransfer

            self.itemWeight = itemWeight

            self.identifiers = identifiers

            self.currency = currency

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemLength = itemLength

            self.itemHeight = itemHeight

            self.expirationDate = expirationDate

            self.set = set

            self.itemWidth = itemWidth
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

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

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

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

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

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

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(itemWidth, forKey: .itemWidth)
        }
    }
}
