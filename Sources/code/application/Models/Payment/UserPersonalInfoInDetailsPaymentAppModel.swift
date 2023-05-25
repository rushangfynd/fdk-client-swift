

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var addressAsPerId: KYCAddress

        public var voterId: String?

        public var mothersName: String?

        public var middleName: String?

        public var email: String?

        public var phone: String

        public var lastName: String?

        public var firstName: String

        public var passport: String?

        public var drivingLicense: String?

        public var gender: String?

        public var emailVerified: Bool

        public var pan: String?

        public var fathersName: String?

        public var dob: String

        public var mobileVerified: Bool

        public enum CodingKeys: String, CodingKey {
            case addressAsPerId = "address_as_per_id"

            case voterId = "voter_id"

            case mothersName = "mothers_name"

            case middleName = "middle_name"

            case email

            case phone

            case lastName = "last_name"

            case firstName = "first_name"

            case passport

            case drivingLicense = "driving_license"

            case gender

            case emailVerified = "email_verified"

            case pan

            case fathersName = "fathers_name"

            case dob

            case mobileVerified = "mobile_verified"
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String? = nil, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.addressAsPerId = addressAsPerId

            self.voterId = voterId

            self.mothersName = mothersName

            self.middleName = middleName

            self.email = email

            self.phone = phone

            self.lastName = lastName

            self.firstName = firstName

            self.passport = passport

            self.drivingLicense = drivingLicense

            self.gender = gender

            self.emailVerified = emailVerified

            self.pan = pan

            self.fathersName = fathersName

            self.dob = dob

            self.mobileVerified = mobileVerified
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            do {
                voterId = try container.decode(String.self, forKey: .voterId)

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
                middleName = try container.decode(String.self, forKey: .middleName)

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

            phone = try container.decode(String.self, forKey: .phone)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                passport = try container.decode(String.self, forKey: .passport)

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

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            do {
                pan = try container.decode(String.self, forKey: .pan)

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

            dob = try container.decode(String.self, forKey: .dob)

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(email, forKey: .email)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(passport, forKey: .passport)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encode(dob, forKey: .dob)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)
        }
    }
}
