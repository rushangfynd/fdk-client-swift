

import Foundation
public extension PlatformClient {
    /*
         Model: EInvoice
         Used By: Order
     */

    class EInvoice: Codable {
        public var irn: String?

        public var errorMessage: String?

        public var acknowledgeDate: String?

        public var acknowledgeNo: Int?

        public var signedInvoice: String?

        public var signedQrCode: String?

        public var errorCode: String?

        public enum CodingKeys: String, CodingKey {
            case irn

            case errorMessage = "error_message"

            case acknowledgeDate = "acknowledge_date"

            case acknowledgeNo = "acknowledge_no"

            case signedInvoice = "signed_invoice"

            case signedQrCode = "signed_qr_code"

            case errorCode = "error_code"
        }

        public init(acknowledgeDate: String? = nil, acknowledgeNo: Int? = nil, errorCode: String? = nil, errorMessage: String? = nil, irn: String? = nil, signedInvoice: String? = nil, signedQrCode: String? = nil) {
            self.irn = irn

            self.errorMessage = errorMessage

            self.acknowledgeDate = acknowledgeDate

            self.acknowledgeNo = acknowledgeNo

            self.signedInvoice = signedInvoice

            self.signedQrCode = signedQrCode

            self.errorCode = errorCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                irn = try container.decode(String.self, forKey: .irn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                errorMessage = try container.decode(String.self, forKey: .errorMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                acknowledgeDate = try container.decode(String.self, forKey: .acknowledgeDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                acknowledgeNo = try container.decode(Int.self, forKey: .acknowledgeNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                signedInvoice = try container.decode(String.self, forKey: .signedInvoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                signedQrCode = try container.decode(String.self, forKey: .signedQrCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                errorCode = try container.decode(String.self, forKey: .errorCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(irn, forKey: .irn)

            try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)

            try? container.encodeIfPresent(acknowledgeDate, forKey: .acknowledgeDate)

            try? container.encodeIfPresent(acknowledgeNo, forKey: .acknowledgeNo)

            try? container.encodeIfPresent(signedInvoice, forKey: .signedInvoice)

            try? container.encodeIfPresent(signedQrCode, forKey: .signedQrCode)

            try? container.encodeIfPresent(errorCode, forKey: .errorCode)
        }
    }
}
