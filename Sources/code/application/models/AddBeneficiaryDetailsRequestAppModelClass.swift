

import Foundation
public extension ApplicationClient {
    /*
         Model: AddBeneficiaryDetailsRequest
         Used By: Payment
     */
    class AddBeneficiaryDetailsRequest: Codable {
        public var otp: String?

        public var delights: Bool

        public var details: BeneficiaryModeDetails

        public var orderId: String

        public var transferMode: String

        public var requestId: String?

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case otp

            case delights

            case details

            case orderId = "order_id"

            case transferMode = "transfer_mode"

            case requestId = "request_id"

            case shipmentId = "shipment_id"
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String? = nil, requestId: String? = nil, shipmentId: String, transferMode: String) {
            self.otp = otp

            self.delights = delights

            self.details = details

            self.orderId = orderId

            self.transferMode = transferMode

            self.requestId = requestId

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                otp = try container.decode(String.self, forKey: .otp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            delights = try container.decode(Bool.self, forKey: .delights)

            details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)

            orderId = try container.decode(String.self, forKey: .orderId)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(delights, forKey: .delights)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
