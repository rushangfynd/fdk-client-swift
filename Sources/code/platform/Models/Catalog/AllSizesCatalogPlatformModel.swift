

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemHeight: Double

        public var size: String

        public var itemWeight: Double

        public var itemDimensionsUnitOfMeasure: String

        public var itemWidth: Double

        public var itemWeightUnitOfMeasure: String

        public var identifiers: [ValidateIdentifier]?

        public var itemLength: Double

        public enum CodingKeys: String, CodingKey {
            case itemHeight = "item_height"

            case size

            case itemWeight = "item_weight"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWidth = "item_width"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case identifiers

            case itemLength = "item_length"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: String, itemWidth: Double, size: String) {
            self.itemHeight = itemHeight

            self.size = size

            self.itemWeight = itemWeight

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWidth = itemWidth

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.identifiers = identifiers

            self.itemLength = itemLength
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            size = try container.decode(String.self, forKey: .size)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemLength = try container.decode(Double.self, forKey: .itemLength)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemHeight: Double

        public var size: String

        public var itemWeight: Double

        public var itemDimensionsUnitOfMeasure: String

        public var itemWidth: Double

        public var itemWeightUnitOfMeasure: String

        public var identifiers: [ValidateIdentifier]?

        public var itemLength: Double

        public enum CodingKeys: String, CodingKey {
            case itemHeight = "item_height"

            case size

            case itemWeight = "item_weight"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWidth = "item_width"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case identifiers

            case itemLength = "item_length"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: String, itemWidth: Double, size: String) {
            self.itemHeight = itemHeight

            self.size = size

            self.itemWeight = itemWeight

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWidth = itemWidth

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.identifiers = identifiers

            self.itemLength = itemLength
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            size = try container.decode(String.self, forKey: .size)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemLength = try container.decode(Double.self, forKey: .itemLength)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)
        }
    }
}
