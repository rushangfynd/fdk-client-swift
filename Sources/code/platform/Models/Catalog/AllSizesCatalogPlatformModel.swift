

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var identifiers: [ValidateIdentifier]?

        public var itemHeight: Double

        public var itemDimensionsUnitOfMeasure: String

        public var itemWeightUnitOfMeasure: String

        public var size: String

        public var itemLength: Double

        public var itemWidth: Double

        public var itemWeight: Double

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case itemHeight = "item_height"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case size

            case itemLength = "item_length"

            case itemWidth = "item_width"

            case itemWeight = "item_weight"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: String, itemWidth: Double, size: String) {
            self.identifiers = identifiers

            self.itemHeight = itemHeight

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.size = size

            self.itemLength = itemLength

            self.itemWidth = itemWidth

            self.itemWeight = itemWeight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            size = try container.decode(String.self, forKey: .size)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var identifiers: [ValidateIdentifier]?

        public var itemHeight: Double

        public var itemDimensionsUnitOfMeasure: String

        public var itemWeightUnitOfMeasure: String

        public var size: String

        public var itemLength: Double

        public var itemWidth: Double

        public var itemWeight: Double

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case itemHeight = "item_height"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case size

            case itemLength = "item_length"

            case itemWidth = "item_width"

            case itemWeight = "item_weight"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: String, itemWidth: Double, size: String) {
            self.identifiers = identifiers

            self.itemHeight = itemHeight

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.size = size

            self.itemLength = itemLength

            self.itemWidth = itemWidth

            self.itemWeight = itemWeight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            size = try container.decode(String.self, forKey: .size)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)
        }
    }
}