

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationDepartment
         Used By: Catalog
     */

    class ApplicationDepartment: Codable {
        public var appId: String

        public var isActive: Bool?

        public var name: String?

        public var logo: String?

        public var customJson: [String: Any]?

        public var uid: Int

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case isActive = "is_active"

            case name

            case logo

            case customJson = "_custom_json"

            case uid
        }

        public init(appId: String, isActive: Bool? = nil, logo: String? = nil, name: String? = nil, uid: Int, customJson: [String: Any]? = nil) {
            self.appId = appId

            self.isActive = isActive

            self.name = name

            self.logo = logo

            self.customJson = customJson

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

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

            uid = try container.decode(Int.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
