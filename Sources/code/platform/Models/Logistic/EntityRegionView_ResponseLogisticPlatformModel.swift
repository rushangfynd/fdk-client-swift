

import Foundation

public extension PlatformClient.Logistic {
    /*
         Model: EntityRegionView_Response
         Used By: Logistic
     */

    class EntityRegionView_Response: Codable {
        public var error: EntityRegionView_Error

        public var page: EntityRegionView_page

        public var success: Bool

        public var data: [EntityRegionView_Items]

        public enum CodingKeys: String, CodingKey {
            case error

            case page

            case success

            case data
        }

        public init(data: [EntityRegionView_Items], error: EntityRegionView_Error, page: EntityRegionView_page, success: Bool) {
            self.error = error

            self.page = page

            self.success = success

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode(EntityRegionView_Error.self, forKey: .error)

            page = try container.decode(EntityRegionView_page.self, forKey: .page)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode([EntityRegionView_Items].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistic {
    /*
         Model: EntityRegionView_Response
         Used By: Logistic
     */

    class EntityRegionView_Response: Codable {
        public var error: EntityRegionView_Error

        public var page: EntityRegionView_page

        public var success: Bool

        public var data: [EntityRegionView_Items]

        public enum CodingKeys: String, CodingKey {
            case error

            case page

            case success

            case data
        }

        public init(data: [EntityRegionView_Items], error: EntityRegionView_Error, page: EntityRegionView_page, success: Bool) {
            self.error = error

            self.page = page

            self.success = success

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode(EntityRegionView_Error.self, forKey: .error)

            page = try container.decode(EntityRegionView_page.self, forKey: .page)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode([EntityRegionView_Items].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
