

import Foundation
public extension PlatformClient {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var city: String

        public var lastName: String

        public var country: String

        public var mobile: Int

        public var firstName: String

        public var pincode: String

        public var address2: String?

        public var state: String

        public var address1: String?

        public var email: String

        public var phone: Int

        public enum CodingKeys: String, CodingKey {
            case city

            case lastName = "last_name"

            case country

            case mobile

            case firstName = "first_name"

            case pincode

            case address2

            case state

            case address1

            case email

            case phone
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.city = city

            self.lastName = lastName

            self.country = country

            self.mobile = mobile

            self.firstName = firstName

            self.pincode = pincode

            self.address2 = address2

            self.state = state

            self.address1 = address1

            self.email = email

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            lastName = try container.decode(String.self, forKey: .lastName)

            country = try container.decode(String.self, forKey: .country)

            mobile = try container.decode(Int.self, forKey: .mobile)

            firstName = try container.decode(String.self, forKey: .firstName)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            phone = try container.decode(Int.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
