

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: TransferItemsDetails
         Used By: Payment
     */
    class TransferItemsDetails: Codable {
        public var name: String

        public var logoSmall: String

        public var logoLarge: String

        public var displayName: String?

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case name

            case logoSmall = "logo_small"

            case logoLarge = "logo_large"

            case displayName = "display_name"

            case id
        }

        public init(displayName: String? = nil, id: Int, logoLarge: String, logoSmall: String, name: String) {
            self.name = name

            self.logoSmall = logoSmall

            self.logoLarge = logoLarge

            self.displayName = displayName

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            logoSmall = try container.decode(String.self, forKey: .logoSmall)

            logoLarge = try container.decode(String.self, forKey: .logoLarge)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)

            try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}