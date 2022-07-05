

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryResponseSerializer: Codable {
        public var name: String

        public var storeType: String

        public var uid: Int

        public var code: String

        public var restrictedCategories: [RestrictedCategoryResponseInfoSerializer]

        public enum CodingKeys: String, CodingKey {
            case name

            case storeType = "store_type"

            case uid

            case code

            case restrictedCategories = "restricted_categories"
        }

        public init(code: String, name: String, restrictedCategories: [RestrictedCategoryResponseInfoSerializer], storeType: String, uid: Int) {
            self.name = name

            self.storeType = storeType

            self.uid = uid

            self.code = code

            self.restrictedCategories = restrictedCategories
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            storeType = try container.decode(String.self, forKey: .storeType)

            uid = try container.decode(Int.self, forKey: .uid)

            code = try container.decode(String.self, forKey: .code)

            restrictedCategories = try container.decode([RestrictedCategoryResponseInfoSerializer].self, forKey: .restrictedCategories)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(restrictedCategories, forKey: .restrictedCategories)
        }
    }
}
