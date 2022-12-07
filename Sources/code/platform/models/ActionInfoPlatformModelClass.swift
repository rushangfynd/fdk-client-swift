

import Foundation
public extension PlatformClient {
    /*
         Model: ActionInfo
         Used By: Order
     */

    class ActionInfo: Codable {
        public var displayText: String

        public var slug: String

        public var id: Int

        public var description: String

        public enum CodingKeys: String, CodingKey {
            case displayText = "display_text"

            case slug

            case id

            case description
        }

        public init(description: String, displayText: String, id: Int, slug: String) {
            self.displayText = displayText

            self.slug = slug

            self.id = id

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayText = try container.decode(String.self, forKey: .displayText)

            slug = try container.decode(String.self, forKey: .slug)

            id = try container.decode(Int.self, forKey: .id)

            description = try container.decode(String.self, forKey: .description)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayText, forKey: .displayText)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}