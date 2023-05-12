

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryJobFilters
         Used By: Catalog
     */

    class InventoryJobFilters: Codable {
        public var stores: [String]?

        public var brands: [String]?

        public var toDate: String?

        public var quantity: InventoryExportQuantityFilter?

        public var fromDate: String?

        public enum CodingKeys: String, CodingKey {
            case stores

            case brands

            case toDate = "to_date"

            case quantity

            case fromDate = "from_date"
        }

        public init(brands: [String]? = nil, fromDate: String? = nil, quantity: InventoryExportQuantityFilter? = nil, stores: [String]? = nil, toDate: String? = nil) {
            self.stores = stores

            self.brands = brands

            self.toDate = toDate

            self.quantity = quantity

            self.fromDate = fromDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stores = try container.decode([String].self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brands = try container.decode([String].self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                toDate = try container.decode(String.self, forKey: .toDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(InventoryExportQuantityFilter.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fromDate = try container.decode(String.self, forKey: .fromDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(toDate, forKey: .toDate)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fromDate, forKey: .fromDate)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryJobFilters
         Used By: Catalog
     */

    class InventoryJobFilters: Codable {
        public var stores: [String]?

        public var brands: [String]?

        public var toDate: String?

        public var quantity: InventoryExportQuantityFilter?

        public var fromDate: String?

        public enum CodingKeys: String, CodingKey {
            case stores

            case brands

            case toDate = "to_date"

            case quantity

            case fromDate = "from_date"
        }

        public init(brands: [String]? = nil, fromDate: String? = nil, quantity: InventoryExportQuantityFilter? = nil, stores: [String]? = nil, toDate: String? = nil) {
            self.stores = stores

            self.brands = brands

            self.toDate = toDate

            self.quantity = quantity

            self.fromDate = fromDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stores = try container.decode([String].self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brands = try container.decode([String].self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                toDate = try container.decode(String.self, forKey: .toDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(InventoryExportQuantityFilter.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fromDate = try container.decode(String.self, forKey: .fromDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(toDate, forKey: .toDate)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fromDate, forKey: .fromDate)
        }
    }
}
