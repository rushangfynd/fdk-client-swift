import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: IntentApp
         Used By: Payment
     */

    class IntentApp: Codable {
        public var logos: PaymentModeLogo?

        public var packageName: String?

        public var code: String?

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case logos

            case packageName = "package_name"

            case code

            case displayName = "display_name"
        }

        public init(code: String? = nil, displayName: String? = nil, logos: PaymentModeLogo? = nil, packageName: String? = nil) {
            self.logos = logos

            self.packageName = packageName

            self.code = code

            self.displayName = displayName
        }

        public func duplicate() -> IntentApp {
            let dict = self.dictionary!
            let copy = IntentApp(dictionary: dict)!
            return copy
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
                packageName = try container.decode(String.self, forKey: .packageName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(logos, forKey: .logos)

            try? container.encode(packageName, forKey: .packageName)

            try? container.encode(code, forKey: .code)

            try? container.encode(displayName, forKey: .displayName)
        }
    }
}