

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentInternalPlatformViewResponse
         Used By: Order
     */

    class ShipmentInternalPlatformViewResponse: Codable {
        public var totalCount: Int?

        public var lane: String?

        public var items: [ShipmentItem]?

        public var message: String?

        public var page: Page?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case totalCount = "total_count"

            case lane

            case items

            case message

            case page

            case success
        }

        public init(items: [ShipmentItem]? = nil, lane: String? = nil, message: String? = nil, page: Page? = nil, success: Bool? = nil, totalCount: Int? = nil) {
            self.totalCount = totalCount

            self.lane = lane

            self.items = items

            self.message = message

            self.page = page

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalCount = try container.decode(Int.self, forKey: .totalCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lane = try container.decode(String.self, forKey: .lane)

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
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(page, forKey: .page)

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
        public var totalCount: Int?

        public var lane: String?

        public var items: [ShipmentItem]?

        public var message: String?

        public var page: Page?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case totalCount = "total_count"

            case lane

            case items

            case message

            case page

            case success
        }

        public init(items: [ShipmentItem]? = nil, lane: String? = nil, message: String? = nil, page: Page? = nil, success: Bool? = nil, totalCount: Int? = nil) {
            self.totalCount = totalCount

            self.lane = lane

            self.items = items

            self.message = message

            self.page = page

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalCount = try container.decode(Int.self, forKey: .totalCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lane = try container.decode(String.self, forKey: .lane)

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
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
