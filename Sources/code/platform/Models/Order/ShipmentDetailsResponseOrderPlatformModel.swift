

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentDetailsResponse
         Used By: Order
     */

    class ShipmentDetailsResponse: Codable {
        public var order: OrderDict?

        public var success: Bool

        public var customMeta: [[String: Any]]?

        public var shipments: [PlatformShipment]?

        public enum CodingKeys: String, CodingKey {
            case order

            case success

            case customMeta = "custom_meta"

            case shipments
        }

        public init(customMeta: [[String: Any]]? = nil, order: OrderDict? = nil, shipments: [PlatformShipment]? = nil, success: Bool) {
            self.order = order

            self.success = success

            self.customMeta = customMeta

            self.shipments = shipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                order = try container.decode(OrderDict.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([PlatformShipment].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentDetailsResponse
         Used By: Order
     */

    class ShipmentDetailsResponse: Codable {
        public var order: OrderDict?

        public var success: Bool

        public var customMeta: [[String: Any]]?

        public var shipments: [PlatformShipment]?

        public enum CodingKeys: String, CodingKey {
            case order

            case success

            case customMeta = "custom_meta"

            case shipments
        }

        public init(customMeta: [[String: Any]]? = nil, order: OrderDict? = nil, shipments: [PlatformShipment]? = nil, success: Bool) {
            self.order = order

            self.success = success

            self.customMeta = customMeta

            self.shipments = shipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                order = try container.decode(OrderDict.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([PlatformShipment].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }
}