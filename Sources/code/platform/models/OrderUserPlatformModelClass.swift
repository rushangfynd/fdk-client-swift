

import Foundation
public extension PlatformClient {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var country: String

        public var pincode: String

        public var address1: String?

        public var lastName: String

        public var firstName: String

        public var city: String

        public var mobile: Int

        public var phone: Int

        public var state: String

        public var email: String

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case country

            case pincode

            case address1

            case lastName = "last_name"

            case firstName = "first_name"

            case city

            case mobile

            case phone

            case state

            case email

            case address2
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.country = country

            self.pincode = pincode

            self.address1 = address1

            self.lastName = lastName

            self.firstName = firstName

            self.city = city

            self.mobile = mobile

            self.phone = phone

            self.state = state

            self.email = email

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastName = try container.decode(String.self, forKey: .lastName)

            firstName = try container.decode(String.self, forKey: .firstName)

            city = try container.decode(String.self, forKey: .city)

            mobile = try container.decode(Int.self, forKey: .mobile)

            phone = try container.decode(Int.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            email = try container.decode(String.self, forKey: .email)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(address2, forKey: .address2)
        }
    }
}
