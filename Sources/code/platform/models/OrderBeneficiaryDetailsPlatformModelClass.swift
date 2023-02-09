

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var subtitle: String

        public var accountHolder: String

        public var ifscCode: String

        public var createdOn: String

        public var displayName: String

        public var title: String

        public var isActive: Bool

        public var beneficiaryId: String

        public var id: Int

        public var mobile: String?

        public var comment: String?

        public var branchName: String?

        public var accountNo: String

        public var modifiedOn: String

        public var address: String

        public var bankName: String

        public var email: String

        public var transferMode: String

        public var delightsUserName: String?

        public enum CodingKeys: String, CodingKey {
            case subtitle

            case accountHolder = "account_holder"

            case ifscCode = "ifsc_code"

            case createdOn = "created_on"

            case displayName = "display_name"

            case title

            case isActive = "is_active"

            case beneficiaryId = "beneficiary_id"

            case id

            case mobile

            case comment

            case branchName = "branch_name"

            case accountNo = "account_no"

            case modifiedOn = "modified_on"

            case address

            case bankName = "bank_name"

            case email

            case transferMode = "transfer_mode"

            case delightsUserName = "delights_user_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.subtitle = subtitle

            self.accountHolder = accountHolder

            self.ifscCode = ifscCode

            self.createdOn = createdOn

            self.displayName = displayName

            self.title = title

            self.isActive = isActive

            self.beneficiaryId = beneficiaryId

            self.id = id

            self.mobile = mobile

            self.comment = comment

            self.branchName = branchName

            self.accountNo = accountNo

            self.modifiedOn = modifiedOn

            self.address = address

            self.bankName = bankName

            self.email = email

            self.transferMode = transferMode

            self.delightsUserName = delightsUserName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            displayName = try container.decode(String.self, forKey: .displayName)

            title = try container.decode(String.self, forKey: .title)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            id = try container.decode(Int.self, forKey: .id)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

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

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            address = try container.decode(String.self, forKey: .address)

            bankName = try container.decode(String.self, forKey: .bankName)

            email = try container.decode(String.self, forKey: .email)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encode(delightsUserName, forKey: .delightsUserName)
        }
    }
}
