import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: CommunicationConsentChannelsEmail
         Used By: Communication
     */
    class CommunicationConsentChannelsEmail: Codable {
        public var response: String?

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case response

            case displayName = "display_name"
        }

        public init(displayName: String? = nil, response: String? = nil) {
            self.response = response

            self.displayName = displayName
        }

        public func duplicate() -> CommunicationConsentChannelsEmail {
            let dict = self.dictionary!
            let copy = CommunicationConsentChannelsEmail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                response = try container.decode(String.self, forKey: .response)

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

            try? container.encodeIfPresent(response, forKey: .response)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}