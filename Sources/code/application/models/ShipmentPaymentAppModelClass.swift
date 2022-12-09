

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentPayment
         Used By: Order
     */
    class ShipmentPayment: Codable {
        public var mode: String?

        public var logo: String?

        public var status: String?

        public var mop: String?

        public enum CodingKeys: String, CodingKey {
            case mode

            case logo

            case status

            case mop
        }

        public init(logo: String? = nil, mode: String? = nil, mop: String? = nil, status: String? = nil) {
            self.mode = mode

            self.logo = logo

            self.status = status

            self.mop = mop
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mode = try container.decode(String.self, forKey: .mode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

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
                mop = try container.decode(String.self, forKey: .mop)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(mop, forKey: .mop)
        }
    }
}
