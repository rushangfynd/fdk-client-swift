

import Foundation
public extension PlatformClient {
    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */

    class BeneficiaryModeDetails: Codable {
        public var accountHolder: String

        public var vpa: String?

        public var bankName: String

        public var mobile: String

        public var comment: String?

        public var wallet: String?

        public var branchName: String

        public var address: String?

        public var accountNo: String

        public var email: String

        public var ifscCode: String

        public enum CodingKeys: String, CodingKey {
            case accountHolder = "account_holder"

            case vpa

            case bankName = "bank_name"

            case mobile

            case comment

            case wallet

            case branchName = "branch_name"

            case address

            case accountNo = "account_no"

            case email

            case ifscCode = "ifsc_code"
        }

        public init(accountHolder: String, accountNo: String, address: String? = nil, bankName: String, branchName: String, comment: String? = nil, email: String, ifscCode: String, mobile: String, vpa: String? = nil, wallet: String? = nil) {
            self.accountHolder = accountHolder

            self.vpa = vpa

            self.bankName = bankName

            self.mobile = mobile

            self.comment = comment

            self.wallet = wallet

            self.branchName = branchName

            self.address = address

            self.accountNo = accountNo

            self.email = email

            self.ifscCode = ifscCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            mobile = try container.decode(String.self, forKey: .mobile)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            branchName = try container.decode(String.self, forKey: .branchName)

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            email = try container.decode(String.self, forKey: .email)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encode(wallet, forKey: .wallet)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
        }
    }
}
