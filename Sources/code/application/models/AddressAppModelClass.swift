import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: Address
         Used By: Cart
     */
    class Address: Codable {
        public var state: String?

        public var country: String?

        public var tags: [String]?

        public var address: String?

        public var name: String?

        public var isDefaultAddress: Bool?

        public var userId: String?

        public var checkoutMode: String?

        public var area: String?

        public var isActive: Bool?

        public var id: String?

        public var areaCodeSlug: String?

        public var googleMapPoint: [String: Any]?

        public var city: String?

        public var countryCode: String?

        public var areaCode: String?

        public var phone: String?

        public var meta: [String: Any]?

        public var email: String?

        public var landmark: String?

        public var addressType: String?

        public var geoLocation: GeoLocation?

        public enum CodingKeys: String, CodingKey {
            case state

            case country

            case tags

            case address

            case name

            case isDefaultAddress = "is_default_address"

            case userId = "user_id"

            case checkoutMode = "checkout_mode"

            case area

            case isActive = "is_active"

            case id

            case areaCodeSlug = "area_code_slug"

            case googleMapPoint = "google_map_point"

            case city

            case countryCode = "country_code"

            case areaCode = "area_code"

            case phone

            case meta

            case email

            case landmark

            case addressType = "address_type"

            case geoLocation = "geo_location"
        }

        public init(address: String? = nil, addressType: String? = nil, area: String? = nil, areaCode: String? = nil, areaCodeSlug: String? = nil, checkoutMode: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, email: String? = nil, geoLocation: GeoLocation? = nil, googleMapPoint: [String: Any]? = nil, id: String? = nil, isActive: Bool? = nil, isDefaultAddress: Bool? = nil, landmark: String? = nil, meta: [String: Any]? = nil, name: String? = nil, phone: String? = nil, state: String? = nil, tags: [String]? = nil, userId: String? = nil) {
            self.state = state

            self.country = country

            self.tags = tags

            self.address = address

            self.name = name

            self.isDefaultAddress = isDefaultAddress

            self.userId = userId

            self.checkoutMode = checkoutMode

            self.area = area

            self.isActive = isActive

            self.id = id

            self.areaCodeSlug = areaCodeSlug

            self.googleMapPoint = googleMapPoint

            self.city = city

            self.countryCode = countryCode

            self.areaCode = areaCode

            self.phone = phone

            self.meta = meta

            self.email = email

            self.landmark = landmark

            self.addressType = addressType

            self.geoLocation = geoLocation
        }

        public func duplicate() -> Address {
            let dict = self.dictionary!
            let copy = Address(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                state = try container.decode(String.self, forKey: .state)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(String.self, forKey: .address)

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
                isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                googleMapPoint = try container.decode([String: Any].self, forKey: .googleMapPoint)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                areaCode = try container.decode(String.self, forKey: .areaCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

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

            do {
                addressType = try container.decode(String.self, forKey: .addressType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                geoLocation = try container.decode(GeoLocation.self, forKey: .geoLocation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)

            try? container.encodeIfPresent(googleMapPoint, forKey: .googleMapPoint)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(areaCode, forKey: .areaCode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
        }
    }
}