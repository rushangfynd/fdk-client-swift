

import Foundation
public extension PlatformClient {
    /*
         Model: BuyerDetails
         Used By: Orders
     */

    class BuyerDetails: Codable {
        public var pincode: Int

        public var city: String

        public var ajioSiteId: String?

        public var gstin: String

        public var name: String

        public var state: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case city

            case ajioSiteId = "ajio_site_id"

            case gstin

            case name

            case state

            case address
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.pincode = pincode

            self.city = city

            self.ajioSiteId = ajioSiteId

            self.gstin = gstin

            self.name = name

            self.state = state

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(Int.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstin = try container.decode(String.self, forKey: .gstin)

            name = try container.decode(String.self, forKey: .name)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(address, forKey: .address)
        }
    }
}
