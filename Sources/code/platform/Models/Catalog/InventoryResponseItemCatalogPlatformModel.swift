

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryResponseItem
         Used By: Catalog
     */

    class InventoryResponseItem: Codable {
        public var reason: InventoryFailedReason?

        public var data: InventoryPayload?

        public enum CodingKeys: String, CodingKey {
            case reason

            case data
        }

        public init(data: InventoryPayload? = nil, reason: InventoryFailedReason? = nil) {
            self.reason = reason

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reason = try container.decode(InventoryFailedReason.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(InventoryPayload.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reason, forKey: .reason)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryResponseItem
         Used By: Catalog
     */

    class InventoryResponseItem: Codable {
        public var reason: InventoryFailedReason?

        public var data: InventoryPayload?

        public enum CodingKeys: String, CodingKey {
            case reason

            case data
        }

        public init(data: InventoryPayload? = nil, reason: InventoryFailedReason? = nil) {
            self.reason = reason

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reason = try container.decode(InventoryFailedReason.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(InventoryPayload.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reason, forKey: .reason)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}