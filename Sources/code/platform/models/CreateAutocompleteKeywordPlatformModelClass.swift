

import Foundation
public extension PlatformClient {
    /*
         Model: CreateAutocompleteKeyword
         Used By: Catalog
     */

    class CreateAutocompleteKeyword: Codable {
        public var results: [AutocompleteResult]?

        public var words: [String]?

        public var customJson: [String: Any]?

        public var isActive: Bool?

        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case results

            case words

            case customJson = "_custom_json"

            case isActive = "is_active"

            case appId = "app_id"
        }

        public init(appId: String? = nil, isActive: Bool? = nil, results: [AutocompleteResult]? = nil, words: [String]? = nil, customJson: [String: Any]? = nil) {
            self.results = results

            self.words = words

            self.customJson = customJson

            self.isActive = isActive

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                results = try container.decode([AutocompleteResult].self, forKey: .results)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                words = try container.decode([String].self, forKey: .words)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(results, forKey: .results)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
