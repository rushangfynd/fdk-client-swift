

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutMoreAttributes
         Used By: Payment
     */

    class PayoutMoreAttributes: Codable {
        public var accountHolder: String?

        public var state: String?

        public var accountNo: String?

        public var branchName: String?

        public var bankName: String?

        public var ifscCode: String?

        public var city: String?

        public var country: String?

        public var accountType: String?

        public enum CodingKeys: String, CodingKey {
            case accountHolder = "account_holder"

            case state

            case accountNo = "account_no"

            case branchName = "branch_name"

            case bankName = "bank_name"

            case ifscCode = "ifsc_code"

            case city

            case country

            case accountType = "account_type"
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, accountType: String? = nil, bankName: String? = nil, branchName: String? = nil, city: String? = nil, country: String? = nil, ifscCode: String? = nil, state: String? = nil) {
            self.accountHolder = accountHolder

            self.state = state

            self.accountNo = accountNo

            self.branchName = branchName

            self.bankName = bankName

            self.ifscCode = ifscCode

            self.city = city

            self.country = country

            self.accountType = accountType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                accountHolder = try container.decode(String.self, forKey: .accountHolder)

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
                branchName = try container.decode(String.self, forKey: .branchName)

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
                ifscCode = try container.decode(String.self, forKey: .ifscCode)

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
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                accountType = try container.decode(String.self, forKey: .accountType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(accountHolder, forKey: .accountHolder)

            try? container.encode(state, forKey: .state)

            try? container.encode(accountNo, forKey: .accountNo)

            try? container.encode(branchName, forKey: .branchName)

            try? container.encode(bankName, forKey: .bankName)

            try? container.encode(ifscCode, forKey: .ifscCode)

            try? container.encode(city, forKey: .city)

            try? container.encode(country, forKey: .country)

            try? container.encode(accountType, forKey: .accountType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutMoreAttributes
         Used By: Payment
     */

    class PayoutMoreAttributes: Codable {
        public var accountHolder: String?

        public var state: String?

        public var accountNo: String?

        public var branchName: String?

        public var bankName: String?

        public var ifscCode: String?

        public var city: String?

        public var country: String?

        public var accountType: String?

        public enum CodingKeys: String, CodingKey {
            case accountHolder = "account_holder"

            case state

            case accountNo = "account_no"

            case branchName = "branch_name"

            case bankName = "bank_name"

            case ifscCode = "ifsc_code"

            case city

            case country

            case accountType = "account_type"
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, accountType: String? = nil, bankName: String? = nil, branchName: String? = nil, city: String? = nil, country: String? = nil, ifscCode: String? = nil, state: String? = nil) {
            self.accountHolder = accountHolder

            self.state = state

            self.accountNo = accountNo

            self.branchName = branchName

            self.bankName = bankName

            self.ifscCode = ifscCode

            self.city = city

            self.country = country

            self.accountType = accountType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                accountHolder = try container.decode(String.self, forKey: .accountHolder)

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
                branchName = try container.decode(String.self, forKey: .branchName)

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
                ifscCode = try container.decode(String.self, forKey: .ifscCode)

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
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                accountType = try container.decode(String.self, forKey: .accountType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(accountHolder, forKey: .accountHolder)

            try? container.encode(state, forKey: .state)

            try? container.encode(accountNo, forKey: .accountNo)

            try? container.encode(branchName, forKey: .branchName)

            try? container.encode(bankName, forKey: .bankName)

            try? container.encode(ifscCode, forKey: .ifscCode)

            try? container.encode(city, forKey: .city)

            try? container.encode(country, forKey: .country)

            try? container.encode(accountType, forKey: .accountType)
        }
    }
}
