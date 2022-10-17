

import Foundation
public extension PlatformClient {
    /*
         Model: BankDetailsForOTP
         Used By: Payment
     */

    class BankDetailsForOTP: Codable {
        public var accountNo: String

        public var accountHolder: String

        public var branchName: String

        public var bankName: String

        public var ifscCode: String

        public enum CodingKeys: String, CodingKey {
            case accountNo = "account_no"

            case accountHolder = "account_holder"

            case branchName = "branch_name"

            case bankName = "bank_name"

            case ifscCode = "ifsc_code"
        }

        public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
            self.accountNo = accountNo

            self.accountHolder = accountHolder

            self.branchName = branchName

            self.bankName = bankName

            self.ifscCode = ifscCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            branchName = try container.decode(String.self, forKey: .branchName)

            bankName = try container.decode(String.self, forKey: .bankName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
        }
    }
}