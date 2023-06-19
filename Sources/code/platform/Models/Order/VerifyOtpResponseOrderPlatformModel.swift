

import Foundation

public extension PlatformClient.Order {
    /*
         Model: VerifyOtpResponse
         Used By: Order
     */

    class VerifyOtpResponse: Codable {
        public var message: String?

        public var success: Bool?

        public var data: VerifyOtpResponseData?

        public var status: Int?

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case data

            case status
        }

        public init(data: VerifyOtpResponseData? = nil, message: String? = nil, status: Int? = nil, success: Bool? = nil) {
            self.message = message

            self.success = success

            self.data = data

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

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
                data = try container.decode(VerifyOtpResponseData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: VerifyOtpResponse
         Used By: Order
     */

    class VerifyOtpResponse: Codable {
        public var message: String?

        public var success: Bool?

        public var data: VerifyOtpResponseData?

        public var status: Int?

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case data

            case status
        }

        public init(data: VerifyOtpResponseData? = nil, message: String? = nil, status: Int? = nil, success: Bool? = nil) {
            self.message = message

            self.success = success

            self.data = data

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

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
                data = try container.decode(VerifyOtpResponseData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
