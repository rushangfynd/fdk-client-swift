

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutBankDetails
         Used By: Payment
     */

    class PayoutBankDetails: Codable {
        public var bankName: String?

        public var accountType: String

        public var ifscCode: String

        public var accountNo: String?

        public var pincode: Int?

        public var state: String?

        public var city: String?

        public var accountHolder: String?

        public var country: String?

        public var branchName: String?

        public enum CodingKeys: String, CodingKey {
            case bankName = "bank_name"

            case accountType = "account_type"

            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case pincode

            case state

            case city

            case accountHolder = "account_holder"

            case country

            case branchName = "branch_name"
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, accountType: String, bankName: String? = nil, branchName: String? = nil, city: String? = nil, country: String? = nil, ifscCode: String, pincode: Int? = nil, state: String? = nil) {
            self.bankName = bankName

            self.accountType = accountType

            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.pincode = pincode

            self.state = state

            self.city = city

            self.accountHolder = accountHolder

            self.country = country

            self.branchName = branchName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bankName = try container.decode(String.self, forKey: .bankName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountType = try container.decode(String.self, forKey: .accountType)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                accountNo = try container.decode(String.self, forKey: .accountNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

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
                accountHolder = try container.decode(String.self, forKey: .accountHolder)

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
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountType, forKey: .accountType)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(branchName, forKey: .branchName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutBankDetails
         Used By: Payment
     */

    class PayoutBankDetails: Codable {
        public var bankName: String?

        public var accountType: String

        public var ifscCode: String

        public var accountNo: String?

        public var pincode: Int?

        public var state: String?

        public var city: String?

        public var accountHolder: String?

        public var country: String?

        public var branchName: String?

        public enum CodingKeys: String, CodingKey {
            case bankName = "bank_name"

            case accountType = "account_type"

            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case pincode

            case state

            case city

            case accountHolder = "account_holder"

            case country

            case branchName = "branch_name"
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, accountType: String, bankName: String? = nil, branchName: String? = nil, city: String? = nil, country: String? = nil, ifscCode: String, pincode: Int? = nil, state: String? = nil) {
            self.bankName = bankName

            self.accountType = accountType

            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.pincode = pincode

            self.state = state

            self.city = city

            self.accountHolder = accountHolder

            self.country = country

            self.branchName = branchName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bankName = try container.decode(String.self, forKey: .bankName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountType = try container.decode(String.self, forKey: .accountType)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                accountNo = try container.decode(String.self, forKey: .accountNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

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
                accountHolder = try container.decode(String.self, forKey: .accountHolder)

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
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountType, forKey: .accountType)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(branchName, forKey: .branchName)
        }
    }
}
