

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var mobileVerified: Bool

        public var email: String?

        public var firstName: String

        public var lastName: String?

        public var pan: String?

        public var passport: String?

        public var mothersName: String?

        public var gender: String?

        public var fathersName: String?

        public var middleName: String?

        public var drivingLicense: String?

        public var emailVerified: Bool

        public var addressAsPerId: KYCAddress

        public var dob: String

        public var voterId: String?

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case mobileVerified = "mobile_verified"

            case email

            case firstName = "first_name"

            case lastName = "last_name"

            case pan

            case passport

            case mothersName = "mothers_name"

            case gender

            case fathersName = "fathers_name"

            case middleName = "middle_name"

            case drivingLicense = "driving_license"

            case emailVerified = "email_verified"

            case addressAsPerId = "address_as_per_id"

            case dob

            case voterId = "voter_id"

            case phone
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String? = nil, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.mobileVerified = mobileVerified

            self.email = email

            self.firstName = firstName

            self.lastName = lastName

            self.pan = pan

            self.passport = passport

            self.mothersName = mothersName

            self.gender = gender

            self.fathersName = fathersName

            self.middleName = middleName

            self.drivingLicense = drivingLicense

            self.emailVerified = emailVerified

            self.addressAsPerId = addressAsPerId

            self.dob = dob

            self.voterId = voterId

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pan = try container.decode(String.self, forKey: .pan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                passport = try container.decode(String.self, forKey: .passport)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mothersName = try container.decode(String.self, forKey: .mothersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fathersName = try container.decode(String.self, forKey: .fathersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            dob = try container.decode(String.self, forKey: .dob)

            do {
                voterId = try container.decode(String.self, forKey: .voterId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encode(email, forKey: .email)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(passport, forKey: .passport)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encode(gender, forKey: .gender)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encode(dob, forKey: .dob)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
