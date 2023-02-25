

import Foundation
public extension PlatformClient {
    /*
         Model: IntentApp
         Used By: Payment
     */

    class IntentApp: Codable {
        public var logos: PaymentModeLogo?

        public var code: String?

        public var displayName: String?

        public var outage: [String: Any]?

        public var packageName: String?

        public enum CodingKeys: String, CodingKey {
            case logos

            case code

            case displayName = "display_name"

            case outage

            case packageName = "package_name"
        }

        public init(code: String? = nil, displayName: String? = nil, logos: PaymentModeLogo? = nil, outage: [String: Any]? = nil, packageName: String? = nil) {
            self.logos = logos

            self.code = code

            self.displayName = displayName

            self.outage = outage

            self.packageName = packageName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logos = try container.decode(PaymentModeLogo.self, forKey: .logos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                outage = try container.decode([String: Any].self, forKey: .outage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packageName = try container.decode(String.self, forKey: .packageName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(logos, forKey: .logos)

            try? container.encode(code, forKey: .code)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(outage, forKey: .outage)

            try? container.encode(packageName, forKey: .packageName)
        }
    }
}
