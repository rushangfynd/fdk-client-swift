

import Foundation
public extension PlatformClient {
    /*
         Model: BuyerDetails
         Used By: Order
     */

    class BuyerDetails: Codable {
        public var city: String

        public var state: String

        public var pincode: Int

        public var gstin: String

        public var name: String

        public var ajioSiteId: String?

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case city

            case state

            case pincode

            case gstin

            case name

            case ajioSiteId = "ajio_site_id"

            case address
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.city = city

            self.state = state

            self.pincode = pincode

            self.gstin = gstin

            self.name = name

            self.ajioSiteId = ajioSiteId

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(Int.self, forKey: .pincode)

            gstin = try container.decode(String.self, forKey: .gstin)

            name = try container.decode(String.self, forKey: .name)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)

            try? container.encode(address, forKey: .address)
        }
    }
}
