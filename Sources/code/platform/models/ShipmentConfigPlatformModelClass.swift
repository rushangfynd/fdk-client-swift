

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var paymentMode: String

        public var source: String

        public var action: String

        public var shipment: [ShipmentDetails]

        public var identifier: String

        public var journey: String

        public var toPincode: String

        public var locationDetails: LocationDetails?

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case source

            case action

            case shipment

            case identifier

            case journey

            case toPincode = "to_pincode"

            case locationDetails = "location_details"
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails], source: String, toPincode: String) {
            self.paymentMode = paymentMode

            self.source = source

            self.action = action

            self.shipment = shipment

            self.identifier = identifier

            self.journey = journey

            self.toPincode = toPincode

            self.locationDetails = locationDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            source = try container.decode(String.self, forKey: .source)

            action = try container.decode(String.self, forKey: .action)

            shipment = try container.decode([ShipmentDetails].self, forKey: .shipment)

            identifier = try container.decode(String.self, forKey: .identifier)

            journey = try container.decode(String.self, forKey: .journey)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)
        }
    }
}
