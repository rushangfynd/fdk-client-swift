

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentInternalPlatformViewResponse
         Used By: Order
     */

    class ShipmentInternalPlatformViewResponse: Codable {
        public var lane: String?

        public var message: String?

        public var page: Page?

        public var totalCount: Int?

        public var items: [ShipmentItem]?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case lane

            case message

            case page

            case totalCount = "total_count"

            case items

            case success
        }

        public init(items: [ShipmentItem]? = nil, lane: String? = nil, message: String? = nil, page: Page? = nil, success: Bool? = nil, totalCount: Int? = nil) {
            self.lane = lane

            self.message = message

            self.page = page

            self.totalCount = totalCount

            self.items = items

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lane = try container.decode(String.self, forKey: .lane)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalCount = try container.decode(Int.self, forKey: .totalCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ShipmentItem].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentInternalPlatformViewResponse
         Used By: Order
     */

    class ShipmentInternalPlatformViewResponse: Codable {
        public var lane: String?

        public var message: String?

        public var page: Page?

        public var totalCount: Int?

        public var items: [ShipmentItem]?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case lane

            case message

            case page

            case totalCount = "total_count"

            case items

            case success
        }

        public init(items: [ShipmentItem]? = nil, lane: String? = nil, message: String? = nil, page: Page? = nil, success: Bool? = nil, totalCount: Int? = nil) {
            self.lane = lane

            self.message = message

            self.page = page

            self.totalCount = totalCount

            self.items = items

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lane = try container.decode(String.self, forKey: .lane)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalCount = try container.decode(Int.self, forKey: .totalCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ShipmentItem].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
