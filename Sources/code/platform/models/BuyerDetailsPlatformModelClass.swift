

import Foundation
public extension PlatformClient {
    /*
         Model: BuyerDetails
         Used By: Order
     */

    class BuyerDetails: Codable {
        public var gstin: String

        public var pincode: Int

        public var ajioSiteId: String?

        public var state: String

        public var address: String

        public var city: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case gstin

            case pincode

            case ajioSiteId = "ajio_site_id"

            case state

            case address

            case city

            case name
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.gstin = gstin

            self.pincode = pincode

            self.ajioSiteId = ajioSiteId

            self.state = state

            self.address = address

            self.city = city

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstin = try container.decode(String.self, forKey: .gstin)

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            city = try container.decode(String.self, forKey: .city)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
