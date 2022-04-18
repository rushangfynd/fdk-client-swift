import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: DataLoaderSourceSchema
         Used By: Content
     */

    class DataLoaderSourceSchema: Codable {
        public var type: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case id
        }

        public init(id: String? = nil, type: String? = nil) {
            self.type = type

            self.id = id
        }

        public func duplicate() -> DataLoaderSourceSchema {
            let dict = self.dictionary!
            let copy = DataLoaderSourceSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}