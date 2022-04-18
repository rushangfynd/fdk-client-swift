import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ReceivedAt
         Used By: Analytics
     */

    class ReceivedAt: Codable {
        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case value
        }

        public init(value: String? = nil) {
            self.value = value
        }

        public func duplicate() -> ReceivedAt {
            let dict = self.dictionary!
            let copy = ReceivedAt(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}