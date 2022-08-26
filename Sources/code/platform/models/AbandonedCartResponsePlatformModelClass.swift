

import Foundation
public extension PlatformClient {
    /*
         Model: AbandonedCartResponse
         Used By: Cart
     */

    class AbandonedCartResponse: Codable {
        public var page: Page?

        public var message: String?

        public var result: [AbandonedCart]?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case page

            case message

            case result

            case success
        }

        public init(message: String? = nil, page: Page? = nil, result: [AbandonedCart]? = nil, success: Bool? = nil) {
            self.page = page

            self.message = message

            self.result = result

            self.success = success
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
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                result = try container.decode([AbandonedCart].self, forKey: .result)

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

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
