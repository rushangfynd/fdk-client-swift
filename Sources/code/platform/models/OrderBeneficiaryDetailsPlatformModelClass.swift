

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var accountNo: String

        public var address: String

        public var isActive: Bool

        public var createdOn: String

        public var id: Int

        public var ifscCode: String

        public var email: String

        public var title: String

        public var beneficiaryId: String

        public var modifiedOn: String

        public var delightsUserName: String?

        public var bankName: String

        public var accountHolder: String

        public var comment: String?

        public var mobile: String?

        public var branchName: String?

        public var transferMode: String

        public var displayName: String

        public var subtitle: String

        public enum CodingKeys: String, CodingKey {
            case accountNo = "account_no"

            case address

            case isActive = "is_active"

            case createdOn = "created_on"

            case id

            case ifscCode = "ifsc_code"

            case email

            case title

            case beneficiaryId = "beneficiary_id"

            case modifiedOn = "modified_on"

            case delightsUserName = "delights_user_name"

            case bankName = "bank_name"

            case accountHolder = "account_holder"

            case comment

            case mobile

            case branchName = "branch_name"

            case transferMode = "transfer_mode"

            case displayName = "display_name"

            case subtitle
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.accountNo = accountNo

            self.address = address

            self.isActive = isActive

            self.createdOn = createdOn

            self.id = id

            self.ifscCode = ifscCode

            self.email = email

            self.title = title

            self.beneficiaryId = beneficiaryId

            self.modifiedOn = modifiedOn

            self.delightsUserName = delightsUserName

            self.bankName = bankName

            self.accountHolder = accountHolder

            self.comment = comment

            self.mobile = mobile

            self.branchName = branchName

            self.transferMode = transferMode

            self.displayName = displayName

            self.subtitle = subtitle
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            address = try container.decode(String.self, forKey: .address)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            id = try container.decode(Int.self, forKey: .id)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            email = try container.decode(String.self, forKey: .email)

            title = try container.decode(String.self, forKey: .title)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

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

            transferMode = try container.decode(String.self, forKey: .transferMode)

            displayName = try container.decode(String.self, forKey: .displayName)

            subtitle = try container.decode(String.self, forKey: .subtitle)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
        }
    }
}
