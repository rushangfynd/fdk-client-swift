

import Foundation
public extension PlatformClient {
    /*
         Model: OrderListingResponse
         Used By: Order
     */

    class OrderListingResponse: Codable {
        public var page: Page?

        public var lane: String?

        public var message: String?

        public var totalCount: Int?

        public var success: Bool?

        public var items: [PlatformOrderItems]?

        public enum CodingKeys: String, CodingKey {
            case page

            case lane

            case message

            case totalCount = "total_count"

            case success

            case items
        }

        public init(items: [PlatformOrderItems]? = nil, lane: String? = nil, message: String? = nil, page: Page? = nil, success: Bool? = nil, totalCount: Int? = nil) {
            self.page = page

            self.lane = lane

            self.message = message

            self.totalCount = totalCount

            self.success = success

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

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
                message = try container.decode(String.self, forKey: .message)

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
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([PlatformOrderItems].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
