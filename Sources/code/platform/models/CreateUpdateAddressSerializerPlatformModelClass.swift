

import Foundation
public extension PlatformClient {
    /*
         Model: CreateUpdateAddressSerializer
         Used By: CompanyProfile
     */

    class CreateUpdateAddressSerializer: Codable {
        public var state: String

        public var city: String

        public var latitude: Double

        public var country: String

        public var addressType: String

        public var longitude: Double

        public var address1: String

        public var address2: String?

        public var landmark: String?

        public var pincode: Int

        public var countryCode: String?

        public enum CodingKeys: String, CodingKey {
            case state

            case city

            case latitude

            case country

            case addressType = "address_type"

            case longitude

            case address1

            case address2

            case landmark

            case pincode

            case countryCode = "country_code"
        }

        public init(address1: String, address2: String? = nil, addressType: String, city: String, country: String, countryCode: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, pincode: Int, state: String) {
            self.state = state

            self.city = city

            self.latitude = latitude

            self.country = country

            self.addressType = addressType

            self.longitude = longitude

            self.address1 = address1

            self.address2 = address2

            self.landmark = landmark

            self.pincode = pincode

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            latitude = try container.decode(Double.self, forKey: .latitude)

            country = try container.decode(String.self, forKey: .country)

            addressType = try container.decode(String.self, forKey: .addressType)

            longitude = try container.decode(Double.self, forKey: .longitude)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}
