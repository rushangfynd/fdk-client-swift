

import Foundation
public extension PlatformClient {
    /*
         Model: BadRequestResponseGenerateBulkItemParameters
         Used By: DocumentEngine
     */

    class BadRequestResponseGenerateBulkItemParameters: Codable {
        public var missingProperty: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case missingProperty = "missing_property"

            case type
        }

        public init(missingProperty: String? = nil, type: String? = nil) {
            self.missingProperty = missingProperty

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                missingProperty = try container.decode(String.self, forKey: .missingProperty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(missingProperty, forKey: .missingProperty)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
