

import Foundation

public extension PlatformClient.Order {
    /*
         Model: CreateChannelConfig
         Used By: Order
     */

    class CreateChannelConfig: Codable {
        public var paymentInfo: CreateChannelPaymentInfo?

        public var dpConfiguration: DpConfiguration?

        public var shipmentAssignment: String?

        public var lockStates: [String]?

        public var locationReassignment: Bool?

        public var logoUrl: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case paymentInfo = "payment_info"

            case dpConfiguration = "dp_configuration"

            case shipmentAssignment = "shipment_assignment"

            case lockStates = "lock_states"

            case locationReassignment = "location_reassignment"

            case logoUrl = "logo_url"
        }

        public init(dpConfiguration: DpConfiguration? = nil, locationReassignment: Bool? = nil, lockStates: [String]? = nil, logoUrl: [String: Any]? = nil, paymentInfo: CreateChannelPaymentInfo? = nil, shipmentAssignment: String? = nil) {
            self.paymentInfo = paymentInfo

            self.dpConfiguration = dpConfiguration

            self.shipmentAssignment = shipmentAssignment

            self.lockStates = lockStates

            self.locationReassignment = locationReassignment

            self.logoUrl = logoUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentInfo = try container.decode(CreateChannelPaymentInfo.self, forKey: .paymentInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpConfiguration = try container.decode(DpConfiguration.self, forKey: .dpConfiguration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentAssignment = try container.decode(String.self, forKey: .shipmentAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockStates = try container.decode([String].self, forKey: .lockStates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                locationReassignment = try container.decode(Bool.self, forKey: .locationReassignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logoUrl = try container.decode([String: Any].self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(dpConfiguration, forKey: .dpConfiguration)

            try? container.encodeIfPresent(shipmentAssignment, forKey: .shipmentAssignment)

            try? container.encodeIfPresent(lockStates, forKey: .lockStates)

            try? container.encodeIfPresent(locationReassignment, forKey: .locationReassignment)

            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: CreateChannelConfig
         Used By: Order
     */

    class CreateChannelConfig: Codable {
        public var paymentInfo: CreateChannelPaymentInfo?

        public var dpConfiguration: DpConfiguration?

        public var shipmentAssignment: String?

        public var lockStates: [String]?

        public var locationReassignment: Bool?

        public var logoUrl: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case paymentInfo = "payment_info"

            case dpConfiguration = "dp_configuration"

            case shipmentAssignment = "shipment_assignment"

            case lockStates = "lock_states"

            case locationReassignment = "location_reassignment"

            case logoUrl = "logo_url"
        }

        public init(dpConfiguration: DpConfiguration? = nil, locationReassignment: Bool? = nil, lockStates: [String]? = nil, logoUrl: [String: Any]? = nil, paymentInfo: CreateChannelPaymentInfo? = nil, shipmentAssignment: String? = nil) {
            self.paymentInfo = paymentInfo

            self.dpConfiguration = dpConfiguration

            self.shipmentAssignment = shipmentAssignment

            self.lockStates = lockStates

            self.locationReassignment = locationReassignment

            self.logoUrl = logoUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentInfo = try container.decode(CreateChannelPaymentInfo.self, forKey: .paymentInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpConfiguration = try container.decode(DpConfiguration.self, forKey: .dpConfiguration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentAssignment = try container.decode(String.self, forKey: .shipmentAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockStates = try container.decode([String].self, forKey: .lockStates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                locationReassignment = try container.decode(Bool.self, forKey: .locationReassignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logoUrl = try container.decode([String: Any].self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(dpConfiguration, forKey: .dpConfiguration)

            try? container.encodeIfPresent(shipmentAssignment, forKey: .shipmentAssignment)

            try? container.encodeIfPresent(lockStates, forKey: .lockStates)

            try? container.encodeIfPresent(locationReassignment, forKey: .locationReassignment)

            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
        }
    }
}