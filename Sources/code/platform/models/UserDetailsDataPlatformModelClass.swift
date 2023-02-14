

import Foundation
public extension PlatformClient {
    /*
         Model: UserDetailsData
         Used By: Order
     */

    class UserDetailsData: Codable {
        public var phone: String

        public var state: String

        public var pincode: String

        public var country: String

        public var name: String

        public var email: String?

        public var city: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case state

            case pincode

            case country

            case name

            case email

            case city

            case address
        }

        public init(address: String, city: String, country: String, email: String? = nil, name: String, phone: String, pincode: String, state: String) {
            self.phone = phone

            self.state = state

            self.pincode = pincode

            self.country = country

            self.name = name

            self.email = email

            self.city = city

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            name = try container.decode(String.self, forKey: .name)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
