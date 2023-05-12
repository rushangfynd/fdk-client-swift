

import Foundation
public extension ApplicationClient.User {
    /*
         Model: SessionListResponseSchema
         Used By: User
     */
    class SessionListResponseSchema: Codable {
        public var items: [SessionListResponseInfo]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [SessionListResponseInfo]? = nil) {
            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([SessionListResponseInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
