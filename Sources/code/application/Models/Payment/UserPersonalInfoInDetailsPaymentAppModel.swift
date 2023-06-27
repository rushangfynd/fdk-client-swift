

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var addressAsPerId: KYCAddress

        public var mothersName: String?

        public var phone: String

        public var dob: String

        public var drivingLicense: String?

        public var gender: String?

        public var fathersName: String?

        public var firstName: String

        public var mobileVerified: Bool

        public var passport: String?

        public var emailVerified: Bool

        public var pan: String?

        public var email: String?

        public var voterId: String?

        public var lastName: String?

        public var middleName: String?

        public enum CodingKeys: String, CodingKey {
            case addressAsPerId = "address_as_per_id"

            case mothersName = "mothers_name"

            case phone

            case dob

            case drivingLicense = "driving_license"

            case gender

            case fathersName = "fathers_name"

            case firstName = "first_name"

            case mobileVerified = "mobile_verified"

            case passport

            case emailVerified = "email_verified"

            case pan

            case email

            case voterId = "voter_id"

            case lastName = "last_name"

            case middleName = "middle_name"
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String? = nil, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.addressAsPerId = addressAsPerId

            self.mothersName = mothersName

            self.phone = phone

            self.dob = dob

            self.drivingLicense = drivingLicense

            self.gender = gender

            self.fathersName = fathersName

            self.firstName = firstName

            self.mobileVerified = mobileVerified

            self.passport = passport

            self.emailVerified = emailVerified

            self.pan = pan

            self.email = email

            self.voterId = voterId

            self.lastName = lastName

            self.middleName = middleName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            do {
                mothersName = try container.decode(String.self, forKey: .mothersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

            dob = try container.decode(String.self, forKey: .dob)

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

            do {
                fathersName = try container.decode(String.self, forKey: .fathersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            do {
                passport = try container.decode(String.self, forKey: .passport)

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
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                voterId = try container.decode(String.self, forKey: .voterId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(dob, forKey: .dob)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encode(gender, forKey: .gender)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encode(passport, forKey: .passport)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(email, forKey: .email)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(middleName, forKey: .middleName)
        }
    }
}
