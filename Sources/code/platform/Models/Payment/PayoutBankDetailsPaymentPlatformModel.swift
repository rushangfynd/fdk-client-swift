

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutBankDetails
         Used By: Payment
     */

    class PayoutBankDetails: Codable {
        public var accountType: String

        public var country: String?

        public var state: String?

        public var accountNo: String?

        public var bankName: String?

        public var city: String?

        public var accountHolder: String?

        public var ifscCode: String

        public var branchName: String?

        public var pincode: Int?

        public enum CodingKeys: String, CodingKey {
            case accountType = "account_type"

            case country

            case state

            case accountNo = "account_no"

            case bankName = "bank_name"

            case city

            case accountHolder = "account_holder"

            case ifscCode = "ifsc_code"

            case branchName = "branch_name"

            case pincode
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, accountType: String, bankName: String? = nil, branchName: String? = nil, city: String? = nil, country: String? = nil, ifscCode: String, pincode: Int? = nil, state: String? = nil) {
            self.accountType = accountType

            self.country = country

            self.state = state

            self.accountNo = accountNo

            self.bankName = bankName

            self.city = city

            self.accountHolder = accountHolder

            self.ifscCode = ifscCode

            self.branchName = branchName

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountType = try container.decode(String.self, forKey: .accountType)

            do {
                country = try container.decode(String.self, forKey: .country)

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
                accountNo = try container.decode(String.self, forKey: .accountNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bankName = try container.decode(String.self, forKey: .bankName)

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

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountType, forKey: .accountType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutBankDetails
         Used By: Payment
     */

    class PayoutBankDetails: Codable {
        public var accountType: String

        public var country: String?

        public var state: String?

        public var accountNo: String?

        public var bankName: String?

        public var city: String?

        public var accountHolder: String?

        public var ifscCode: String

        public var branchName: String?

        public var pincode: Int?

        public enum CodingKeys: String, CodingKey {
            case accountType = "account_type"

            case country

            case state

            case accountNo = "account_no"

            case bankName = "bank_name"

            case city

            case accountHolder = "account_holder"

            case ifscCode = "ifsc_code"

            case branchName = "branch_name"

            case pincode
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, accountType: String, bankName: String? = nil, branchName: String? = nil, city: String? = nil, country: String? = nil, ifscCode: String, pincode: Int? = nil, state: String? = nil) {
            self.accountType = accountType

            self.country = country

            self.state = state

            self.accountNo = accountNo

            self.bankName = bankName

            self.city = city

            self.accountHolder = accountHolder

            self.ifscCode = ifscCode

            self.branchName = branchName

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountType = try container.decode(String.self, forKey: .accountType)

            do {
                country = try container.decode(String.self, forKey: .country)

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
                accountNo = try container.decode(String.self, forKey: .accountNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bankName = try container.decode(String.self, forKey: .bankName)

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

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountType, forKey: .accountType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}