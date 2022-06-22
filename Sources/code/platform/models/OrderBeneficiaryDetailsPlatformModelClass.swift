

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var accountNo: String

        public var modifiedOn: String

        public var transferMode: String

        public var email: String

        public var mobile: Bool?

        public var delightsUserName: String?

        public var comment: Bool?

        public var subtitle: String

        public var accountHolder: String

        public var address: String

        public var bankName: String

        public var id: Int

        public var ifscCode: String

        public var isActive: Bool

        public var beneficiaryId: String

        public var createdOn: String

        public var title: String

        public var branchName: Bool?

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case accountNo = "account_no"

            case modifiedOn = "modified_on"

            case transferMode = "transfer_mode"

            case email

            case mobile

            case delightsUserName = "delights_user_name"

            case comment

            case subtitle

            case accountHolder = "account_holder"

            case address

            case bankName = "bank_name"

            case id

            case ifscCode = "ifsc_code"

            case isActive = "is_active"

            case beneficiaryId = "beneficiary_id"

            case createdOn = "created_on"

            case title

            case branchName = "branch_name"

            case displayName = "display_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.accountNo = accountNo

            self.modifiedOn = modifiedOn

            self.transferMode = transferMode

            self.email = email

            self.mobile = mobile

            self.delightsUserName = delightsUserName

            self.comment = comment

            self.subtitle = subtitle

            self.accountHolder = accountHolder

            self.address = address

            self.bankName = bankName

            self.id = id

            self.ifscCode = ifscCode

            self.isActive = isActive

            self.beneficiaryId = beneficiaryId

            self.createdOn = createdOn

            self.title = title

            self.branchName = branchName

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            email = try container.decode(String.self, forKey: .email)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            address = try container.decode(String.self, forKey: .address)

            bankName = try container.decode(String.self, forKey: .bankName)

            id = try container.decode(Int.self, forKey: .id)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            title = try container.decode(String.self, forKey: .title)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
