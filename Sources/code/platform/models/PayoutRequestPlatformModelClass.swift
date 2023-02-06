

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var uniqueExternalId: String

        public var transferType: String

        public var isActive: Bool

        public var users: [String: Any]

        public var bankDetails: PayoutBankDetails

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case uniqueExternalId = "unique_external_id"

            case transferType = "transfer_type"

            case isActive = "is_active"

            case users

            case bankDetails = "bank_details"

            case aggregator
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.uniqueExternalId = uniqueExternalId

            self.transferType = transferType

            self.isActive = isActive

            self.users = users

            self.bankDetails = bankDetails

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            users = try container.decode([String: Any].self, forKey: .users)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
