

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var modifiedOn: String

        public var email: String

        public var mobile: String?

        public var title: String

        public var beneficiaryId: String

        public var createdOn: String

        public var isActive: Bool

        public var delightsUserName: String?

        public var subtitle: String

        public var accountHolder: String

        public var address: String

        public var displayName: String

        public var comment: String?

        public var bankName: String

        public var transferMode: String

        public var ifscCode: String

        public var accountNo: String

        public var id: Int

        public var branchName: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case email

            case mobile

            case title

            case beneficiaryId = "beneficiary_id"

            case createdOn = "created_on"

            case isActive = "is_active"

            case delightsUserName = "delights_user_name"

            case subtitle

            case accountHolder = "account_holder"

            case address

            case displayName = "display_name"

            case comment

            case bankName = "bank_name"

            case transferMode = "transfer_mode"

            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case id

            case branchName = "branch_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.modifiedOn = modifiedOn

            self.email = email

            self.mobile = mobile

            self.title = title

            self.beneficiaryId = beneficiaryId

            self.createdOn = createdOn

            self.isActive = isActive

            self.delightsUserName = delightsUserName

            self.subtitle = subtitle

            self.accountHolder = accountHolder

            self.address = address

            self.displayName = displayName

            self.comment = comment

            self.bankName = bankName

            self.transferMode = transferMode

            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.id = id

            self.branchName = branchName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            email = try container.decode(String.self, forKey: .email)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            address = try container.decode(String.self, forKey: .address)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            id = try container.decode(Int.self, forKey: .id)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(branchName, forKey: .branchName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var modifiedOn: String

        public var email: String

        public var mobile: String?

        public var title: String

        public var beneficiaryId: String

        public var createdOn: String

        public var isActive: Bool

        public var delightsUserName: String?

        public var subtitle: String

        public var accountHolder: String

        public var address: String

        public var displayName: String

        public var comment: String?

        public var bankName: String

        public var transferMode: String

        public var ifscCode: String

        public var accountNo: String

        public var id: Int

        public var branchName: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case email

            case mobile

            case title

            case beneficiaryId = "beneficiary_id"

            case createdOn = "created_on"

            case isActive = "is_active"

            case delightsUserName = "delights_user_name"

            case subtitle

            case accountHolder = "account_holder"

            case address

            case displayName = "display_name"

            case comment

            case bankName = "bank_name"

            case transferMode = "transfer_mode"

            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case id

            case branchName = "branch_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.modifiedOn = modifiedOn

            self.email = email

            self.mobile = mobile

            self.title = title

            self.beneficiaryId = beneficiaryId

            self.createdOn = createdOn

            self.isActive = isActive

            self.delightsUserName = delightsUserName

            self.subtitle = subtitle

            self.accountHolder = accountHolder

            self.address = address

            self.displayName = displayName

            self.comment = comment

            self.bankName = bankName

            self.transferMode = transferMode

            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.id = id

            self.branchName = branchName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            email = try container.decode(String.self, forKey: .email)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            address = try container.decode(String.self, forKey: .address)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            id = try container.decode(Int.self, forKey: .id)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(branchName, forKey: .branchName)
        }
    }
}
