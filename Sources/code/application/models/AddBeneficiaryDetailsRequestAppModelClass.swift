

import Foundation
public extension ApplicationClient {
    /*
         Model: AddBeneficiaryDetailsRequest
         Used By: Payment
     */
    class AddBeneficiaryDetailsRequest: Codable {
        public var requestId: String?

        public var otp: String?

        public var transferMode: String

        public var delights: Bool

        public var orderId: String

        public var details: BeneficiaryModeDetails

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case requestId = "request_id"

            case otp

            case transferMode = "transfer_mode"

            case delights

            case orderId = "order_id"

            case details

            case shipmentId = "shipment_id"
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String? = nil, requestId: String? = nil, shipmentId: String, transferMode: String) {
            self.requestId = requestId

            self.otp = otp

            self.transferMode = transferMode

            self.delights = delights

            self.orderId = orderId

            self.details = details

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                otp = try container.decode(String.self, forKey: .otp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            delights = try container.decode(Bool.self, forKey: .delights)

            orderId = try container.decode(String.self, forKey: .orderId)

            details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(delights, forKey: .delights)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
