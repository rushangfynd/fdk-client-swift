import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationBucketPoints
         Used By: Catalog
     */

    class ConfigurationBucketPoints: Codable {
        public var start: Double?

        public var display: String?

        public var end: Double?

        public enum CodingKeys: String, CodingKey {
            case start

            case display

            case end
        }

        public init(display: String? = nil, end: Double? = nil, start: Double? = nil) {
            self.start = start

            self.display = display

            self.end = end
        }

        public func duplicate() -> ConfigurationBucketPoints {
            let dict = self.dictionary!
            let copy = ConfigurationBucketPoints(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                start = try container.decode(Double.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                end = try container.decode(Double.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(end, forKey: .end)
        }
    }
}