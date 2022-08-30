

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyAddress
         Used By: Order
     */

    class CompanyAddress: Codable {
        public var countryCode: String

        public var latitude: Double

        public var landmark: String?

        public var address2: String?

        public var addressType: String

        public var country: String

        public var state: String

        public var address1: String

        public var pincode: Int

        public var longitude: Double

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case latitude

            case landmark

            case address2

            case addressType = "address_type"

            case country

            case state

            case address1

            case pincode

            case longitude

            case city
        }

        public init(address1: String, address2: String? = nil, addressType: String, city: String, country: String, countryCode: String, landmark: String? = nil, latitude: Double, longitude: Double, pincode: Int, state: String) {
            self.countryCode = countryCode

            self.latitude = latitude

            self.landmark = landmark

            self.address2 = address2

            self.addressType = addressType

            self.country = country

            self.state = state

            self.address1 = address1

            self.pincode = pincode

            self.longitude = longitude

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressType = try container.decode(String.self, forKey: .addressType)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            address1 = try container.decode(String.self, forKey: .address1)

            pincode = try container.decode(Int.self, forKey: .pincode)

            longitude = try container.decode(Double.self, forKey: .longitude)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}