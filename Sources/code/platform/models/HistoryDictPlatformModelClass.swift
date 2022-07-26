

import Foundation
public extension PlatformClient {
    /*
         Model: HistoryDict
         Used By: OrderManage
     */

    class HistoryDict: Codable {
        public var ticketUrl: String?

        public var type: String

        public var message: String

        public var l3Detail: String?

        public var ticketId: String?

        public var createdat: String

        public var l1Detail: String?

        public var user: String

        public var l2Detail: String?

        public enum CodingKeys: String, CodingKey {
            case ticketUrl = "ticket_url"

            case type

            case message

            case l3Detail = "l3_detail"

            case ticketId = "ticket_id"

            case createdat

            case l1Detail = "l1_detail"

            case user

            case l2Detail = "l2_detail"
        }

        public init(createdat: String, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, ticketId: String? = nil, ticketUrl: String? = nil, type: String, user: String) {
            self.ticketUrl = ticketUrl

            self.type = type

            self.message = message

            self.l3Detail = l3Detail

            self.ticketId = ticketId

            self.createdat = createdat

            self.l1Detail = l1Detail

            self.user = user

            self.l2Detail = l2Detail
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ticketUrl = try container.decode(String.self, forKey: .ticketUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            message = try container.decode(String.self, forKey: .message)

            do {
                l3Detail = try container.decode(String.self, forKey: .l3Detail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ticketId = try container.decode(String.self, forKey: .ticketId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdat = try container.decode(String.self, forKey: .createdat)

            do {
                l1Detail = try container.decode(String.self, forKey: .l1Detail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(String.self, forKey: .user)

            do {
                l2Detail = try container.decode(String.self, forKey: .l2Detail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)
        }
    }
}
