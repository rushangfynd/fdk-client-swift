

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutMoreAttributes
         Used By: Payment
     */

    class PayoutMoreAttributes: Codable {
        public var city: String?

        public var accountType: String?

        public var state: String?

        public var bankName: String?

        public var accountNo: String?

        public var accountHolder: String?

        public var branchName: String?

        public var country: String?

        public var ifscCode: String?

        public enum CodingKeys: String, CodingKey {
            case city

            case accountType = "account_type"

            case state

            case bankName = "bank_name"

            case accountNo = "account_no"

            case accountHolder = "account_holder"

            case branchName = "branch_name"

            case country

            case ifscCode = "ifsc_code"
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, accountType: String? = nil, bankName: String? = nil, branchName: String? = nil, city: String? = nil, country: String? = nil, ifscCode: String? = nil, state: String? = nil) {
            self.city = city

            self.accountType = accountType

            self.state = state

            self.bankName = bankName

            self.accountNo = accountNo

            self.accountHolder = accountHolder

            self.branchName = branchName

            self.country = country

            self.ifscCode = ifscCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                city = try container.decode(String.self, forKey: .city)

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

            do {
                state = try container.decode(String.self, forKey: .state)

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
                accountNo = try container.decode(String.self, forKey: .accountNo)

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
                branchName = try container.decode(String.self, forKey: .branchName)

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
                ifscCode = try container.decode(String.self, forKey: .ifscCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(city, forKey: .city)

            try? container.encode(accountType, forKey: .accountType)

            try? container.encode(state, forKey: .state)

            try? container.encode(bankName, forKey: .bankName)

            try? container.encode(accountNo, forKey: .accountNo)

            try? container.encode(accountHolder, forKey: .accountHolder)

            try? container.encode(branchName, forKey: .branchName)

            try? container.encode(country, forKey: .country)

            try? container.encode(ifscCode, forKey: .ifscCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutMoreAttributes
         Used By: Payment
     */

    class PayoutMoreAttributes: Codable {
        public var city: String?

        public var accountType: String?

        public var state: String?

        public var bankName: String?

        public var accountNo: String?

        public var accountHolder: String?

        public var branchName: String?

        public var country: String?

        public var ifscCode: String?

        public enum CodingKeys: String, CodingKey {
            case city

            case accountType = "account_type"

            case state

            case bankName = "bank_name"

            case accountNo = "account_no"

            case accountHolder = "account_holder"

            case branchName = "branch_name"

            case country

            case ifscCode = "ifsc_code"
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, accountType: String? = nil, bankName: String? = nil, branchName: String? = nil, city: String? = nil, country: String? = nil, ifscCode: String? = nil, state: String? = nil) {
            self.city = city

            self.accountType = accountType

            self.state = state

            self.bankName = bankName

            self.accountNo = accountNo

            self.accountHolder = accountHolder

            self.branchName = branchName

            self.country = country

            self.ifscCode = ifscCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                city = try container.decode(String.self, forKey: .city)

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

            do {
                state = try container.decode(String.self, forKey: .state)

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
                accountNo = try container.decode(String.self, forKey: .accountNo)

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
                branchName = try container.decode(String.self, forKey: .branchName)

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
                ifscCode = try container.decode(String.self, forKey: .ifscCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(city, forKey: .city)

            try? container.encode(accountType, forKey: .accountType)

            try? container.encode(state, forKey: .state)

            try? container.encode(bankName, forKey: .bankName)

            try? container.encode(accountNo, forKey: .accountNo)

            try? container.encode(accountHolder, forKey: .accountHolder)

            try? container.encode(branchName, forKey: .branchName)

            try? container.encode(country, forKey: .country)

            try? container.encode(ifscCode, forKey: .ifscCode)
        }
    }
}
