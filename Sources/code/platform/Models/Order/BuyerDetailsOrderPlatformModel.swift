

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BuyerDetails
         Used By: Order
     */

    class BuyerDetails: Codable {
        public var ajioSiteId: String?

        public var state: String

        public var address: String

        public var gstin: String

        public var city: String

        public var name: String

        public var pincode: Int

        public enum CodingKeys: String, CodingKey {
            case ajioSiteId = "ajio_site_id"

            case state

            case address

            case gstin

            case city

            case name

            case pincode
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.ajioSiteId = ajioSiteId

            self.state = state

            self.address = address

            self.gstin = gstin

            self.city = city

            self.name = name

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            gstin = try container.decode(String.self, forKey: .gstin)

            city = try container.decode(String.self, forKey: .city)

            name = try container.decode(String.self, forKey: .name)

            pincode = try container.decode(Int.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BuyerDetails
         Used By: Order
     */

    class BuyerDetails: Codable {
        public var ajioSiteId: String?

        public var state: String

        public var address: String

        public var gstin: String

        public var city: String

        public var name: String

        public var pincode: Int

        public enum CodingKeys: String, CodingKey {
            case ajioSiteId = "ajio_site_id"

            case state

            case address

            case gstin

            case city

            case name

            case pincode
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.ajioSiteId = ajioSiteId

            self.state = state

            self.address = address

            self.gstin = gstin

            self.city = city

            self.name = name

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            gstin = try container.decode(String.self, forKey: .gstin)

            city = try container.decode(String.self, forKey: .city)

            name = try container.decode(String.self, forKey: .name)

            pincode = try container.decode(Int.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
