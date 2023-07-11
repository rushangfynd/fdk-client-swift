

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: CnGenerateReportFilters
         Used By: Finance
     */

    class CnGenerateReportFilters: Codable {
        public var channelOfIssuance: [String]?

        public var storeId: [Int]?

        public var orderingChannel: [String]?

        public var staffId: [String]?

        public var utilisation: [String]?

        public var typesOfTransaction: [String]?

        public enum CodingKeys: String, CodingKey {
            case channelOfIssuance = "channel_of_issuance"

            case storeId = "store_id"

            case orderingChannel = "ordering_channel"

            case staffId = "staff_id"

            case utilisation

            case typesOfTransaction = "types_of_transaction"
        }

        public init(channelOfIssuance: [String]? = nil, orderingChannel: [String]? = nil, staffId: [String]? = nil, storeId: [Int]? = nil, typesOfTransaction: [String]? = nil, utilisation: [String]? = nil) {
            self.channelOfIssuance = channelOfIssuance

            self.storeId = storeId

            self.orderingChannel = orderingChannel

            self.staffId = staffId

            self.utilisation = utilisation

            self.typesOfTransaction = typesOfTransaction
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                channelOfIssuance = try container.decode([String].self, forKey: .channelOfIssuance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode([Int].self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingChannel = try container.decode([String].self, forKey: .orderingChannel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staffId = try container.decode([String].self, forKey: .staffId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                utilisation = try container.decode([String].self, forKey: .utilisation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                typesOfTransaction = try container.decode([String].self, forKey: .typesOfTransaction)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(channelOfIssuance, forKey: .channelOfIssuance)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(staffId, forKey: .staffId)

            try? container.encodeIfPresent(utilisation, forKey: .utilisation)

            try? container.encodeIfPresent(typesOfTransaction, forKey: .typesOfTransaction)
        }
    }
}
