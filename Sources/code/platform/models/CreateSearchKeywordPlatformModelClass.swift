

import Foundation
public extension PlatformClient {
    /*
         Model: CreateSearchKeyword
         Used By: Catalog
     */

    class CreateSearchKeyword: Codable {
        public var isActive: Bool?

        public var words: [String]?

        public var result: SearchKeywordResult

        public var appId: String?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case words

            case result

            case appId = "app_id"

            case customJson = "_custom_json"
        }

        public init(appId: String? = nil, isActive: Bool? = nil, result: SearchKeywordResult, words: [String]? = nil, customJson: [String: Any]? = nil) {
            self.isActive = isActive

            self.words = words

            self.result = result

            self.appId = appId

            self.customJson = customJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            result = try container.decode(SearchKeywordResult.self, forKey: .result)

            do {
                appId = try container.decode(String.self, forKey: .appId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
