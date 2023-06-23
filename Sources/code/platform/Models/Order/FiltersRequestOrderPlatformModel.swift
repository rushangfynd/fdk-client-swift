

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FiltersRequest
         Used By: Order
     */

    class FiltersRequest: Codable {
        public var dateRange: DateRange?

        public var dpName: String

        public var lane: String

        public var logo: String?

        public var storeName: String

        public var dpIds: Int

        public var stores: Int

        public enum CodingKeys: String, CodingKey {
            case dateRange = "date_range"

            case dpName = "dp_name"

            case lane

            case logo

            case storeName = "store_name"

            case dpIds = "dp_ids"

            case stores
        }

        public init(dateRange: DateRange? = nil, dpIds: Int, dpName: String, lane: String, logo: String? = nil, stores: Int, storeName: String) {
            self.dateRange = dateRange

            self.dpName = dpName

            self.lane = lane

            self.logo = logo

            self.storeName = storeName

            self.dpIds = dpIds

            self.stores = stores
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dateRange = try container.decode(DateRange.self, forKey: .dateRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpName = try container.decode(String.self, forKey: .dpName)

            lane = try container.decode(String.self, forKey: .lane)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeName = try container.decode(String.self, forKey: .storeName)

            dpIds = try container.decode(Int.self, forKey: .dpIds)

            stores = try container.decode(Int.self, forKey: .stores)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dateRange, forKey: .dateRange)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(stores, forKey: .stores)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FiltersRequest
         Used By: Order
     */

    class FiltersRequest: Codable {
        public var dateRange: DateRange?

        public var dpName: String

        public var lane: String

        public var logo: String?

        public var storeName: String

        public var dpIds: Int

        public var stores: Int

        public enum CodingKeys: String, CodingKey {
            case dateRange = "date_range"

            case dpName = "dp_name"

            case lane

            case logo

            case storeName = "store_name"

            case dpIds = "dp_ids"

            case stores
        }

        public init(dateRange: DateRange? = nil, dpIds: Int, dpName: String, lane: String, logo: String? = nil, stores: Int, storeName: String) {
            self.dateRange = dateRange

            self.dpName = dpName

            self.lane = lane

            self.logo = logo

            self.storeName = storeName

            self.dpIds = dpIds

            self.stores = stores
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dateRange = try container.decode(DateRange.self, forKey: .dateRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpName = try container.decode(String.self, forKey: .dpName)

            lane = try container.decode(String.self, forKey: .lane)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeName = try container.decode(String.self, forKey: .storeName)

            dpIds = try container.decode(Int.self, forKey: .dpIds)

            stores = try container.decode(Int.self, forKey: .stores)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dateRange, forKey: .dateRange)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(stores, forKey: .stores)
        }
    }
}
