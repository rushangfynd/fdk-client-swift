

import Foundation
public extension ApplicationClient {
    /*
         Model: CustomerDetailsResponse
         Used By: Order
     */
    class CustomerDetailsResponse: Codable {
        public var phone: String?

        public var country: String?

        public var orderId: String?

        public var name: String?

        public var shipmentId: String?

        public enum CodingKeys: String, CodingKey {
            case phone

            case country

            case orderId = "order_id"

            case name

            case shipmentId = "shipment_id"
        }

        public init(country: String? = nil, name: String? = nil, orderId: String? = nil, phone: String? = nil, shipmentId: String? = nil) {
            self.phone = phone

            self.country = country

            self.orderId = orderId

            self.name = name

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}