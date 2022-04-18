import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CreatedBySchema
         Used By: Content
     */

    class CreatedBySchema: Codable {
        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case id
        }

        public init(id: String? = nil) {
            self.id = id
        }

        public func duplicate() -> CreatedBySchema {
            let dict = self.dictionary!
            let copy = CreatedBySchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}