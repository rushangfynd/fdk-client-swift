

import Foundation
public extension ApplicationClient {
    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */
    class BeneficiaryModeDetails: Codable {
        public var email: String

        public var accountHolder: String

        public var bankName: String

        public var wallet: String?

        public var address: String?

        public var accountNo: String

        public var vpa: String?

        public var comment: String?

        public var branchName: String

        public var ifscCode: String

        public var mobile: String

        public enum CodingKeys: String, CodingKey {
            case email

            case accountHolder = "account_holder"

            case bankName = "bank_name"

            case wallet

            case address

            case accountNo = "account_no"

            case vpa

            case comment

            case branchName = "branch_name"

            case ifscCode = "ifsc_code"

            case mobile
        }

        public init(accountHolder: String, accountNo: String, address: String? = nil, bankName: String, branchName: String, comment: String? = nil, email: String, ifscCode: String, mobile: String, vpa: String? = nil, wallet: String? = nil) {
            self.email = email

            self.accountHolder = accountHolder

            self.bankName = bankName

            self.wallet = wallet

            self.address = address

            self.accountNo = accountNo

            self.vpa = vpa

            self.comment = comment

            self.branchName = branchName

            self.ifscCode = ifscCode

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

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

            branchName = try container.decode(String.self, forKey: .branchName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            mobile = try container.decode(String.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encode(wallet, forKey: .wallet)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
