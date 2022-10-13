

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentInfo
         Used By: Order
     */
    class PaymentInfo: Codable {
        public var logo: String?

        public var mop: String?

        public var status: String?

        public var mode: String?

        public enum CodingKeys: String, CodingKey {
            case logo

            case mop

            case status

            case mode
        }

        public init(logo: String? = nil, mode: String? = nil, mop: String? = nil, status: String? = nil) {
            self.logo = logo

            self.mop = mop

            self.status = status

            self.mode = mode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mop = try container.decode(String.self, forKey: .mop)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mode = try container.decode(String.self, forKey: .mode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(mop, forKey: .mop)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(mode, forKey: .mode)
        }
    }
}