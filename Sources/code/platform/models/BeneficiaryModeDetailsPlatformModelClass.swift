

import Foundation
public extension PlatformClient {
    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */

    class BeneficiaryModeDetails: Codable {
        public var wallet: String?

        public var comment: String?

        public var accountNo: String

        public var ifscCode: String

        public var mobile: String

        public var address: String?

        public var vpa: String?

        public var bankName: String

        public var branchName: String

        public var accountHolder: String

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case wallet

            case comment

            case accountNo = "account_no"

            case ifscCode = "ifsc_code"

            case mobile

            case address

            case vpa

            case bankName = "bank_name"

            case branchName = "branch_name"

            case accountHolder = "account_holder"

            case email
        }

        public init(accountHolder: String, accountNo: String, address: String? = nil, bankName: String, branchName: String, comment: String? = nil, email: String, ifscCode: String, mobile: String, vpa: String? = nil, wallet: String? = nil) {
            self.wallet = wallet

            self.comment = comment

            self.accountNo = accountNo

            self.ifscCode = ifscCode

            self.mobile = mobile

            self.address = address

            self.vpa = vpa

            self.bankName = bankName

            self.branchName = branchName

            self.accountHolder = accountHolder

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            mobile = try container.decode(String.self, forKey: .mobile)

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            branchName = try container.decode(String.self, forKey: .branchName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(wallet, forKey: .wallet)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
