

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var shipment: [ShipmentDetails]

        public var locationDetails: LocationDetails?

        public var source: String

        public var action: String

        public var toPincode: String

        public var paymentMode: String

        public var identifier: String

        public var journey: String

        public enum CodingKeys: String, CodingKey {
            case shipment

            case locationDetails = "location_details"

            case source

            case action

            case toPincode = "to_pincode"

            case paymentMode = "payment_mode"

            case identifier

            case journey
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails], source: String, toPincode: String) {
            self.shipment = shipment

            self.locationDetails = locationDetails

            self.source = source

            self.action = action

            self.toPincode = toPincode

            self.paymentMode = paymentMode

            self.identifier = identifier

            self.journey = journey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipment = try container.decode([ShipmentDetails].self, forKey: .shipment)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            source = try container.decode(String.self, forKey: .source)

            action = try container.decode(String.self, forKey: .action)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            identifier = try container.decode(String.self, forKey: .identifier)

            journey = try container.decode(String.self, forKey: .journey)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(journey, forKey: .journey)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var shipment: [ShipmentDetails]

        public var locationDetails: LocationDetails?

        public var source: String

        public var action: String

        public var toPincode: String

        public var paymentMode: String

        public var identifier: String

        public var journey: String

        public enum CodingKeys: String, CodingKey {
            case shipment

            case locationDetails = "location_details"

            case source

            case action

            case toPincode = "to_pincode"

            case paymentMode = "payment_mode"

            case identifier

            case journey
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails], source: String, toPincode: String) {
            self.shipment = shipment

            self.locationDetails = locationDetails

            self.source = source

            self.action = action

            self.toPincode = toPincode

            self.paymentMode = paymentMode

            self.identifier = identifier

            self.journey = journey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipment = try container.decode([ShipmentDetails].self, forKey: .shipment)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            source = try container.decode(String.self, forKey: .source)

            action = try container.decode(String.self, forKey: .action)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            identifier = try container.decode(String.self, forKey: .identifier)

            journey = try container.decode(String.self, forKey: .journey)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(journey, forKey: .journey)
        }
    }
}
