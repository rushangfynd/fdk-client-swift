

import Foundation
public extension ApplicationClient {
    /*
         Model: BankDetailsForOTP
         Used By: Payment
     */
    class BankDetailsForOTP: Codable {
        public var accountHolder: String

        public var ifscCode: String

        public var bankName: String

        public var branchName: String

        public var accountNo: String

        public enum CodingKeys: String, CodingKey {
            case accountHolder = "account_holder"

            case ifscCode = "ifsc_code"

            case bankName = "bank_name"

            case branchName = "branch_name"

            case accountNo = "account_no"
        }

        public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
            self.accountHolder = accountHolder

            self.ifscCode = ifscCode

            self.bankName = bankName

            self.branchName = branchName

            self.accountNo = accountNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            bankName = try container.decode(String.self, forKey: .bankName)

            branchName = try container.decode(String.self, forKey: .branchName)

            accountNo = try container.decode(String.self, forKey: .accountNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
        }
    }
}
