

import Foundation
public extension ApplicationClient {
    /*
         Model: TATViewRequest
         Used By: Logistic
     */
    class TATViewRequest: Codable {
        public var toPincode: String?

        public var source: String?

        public var action: String?

        public var identifier: String?

        public var paymentMode: String?

        public var journey: String?

        public var locationDetails: [TATLocationDetailsRequest]?

        public enum CodingKeys: String, CodingKey {
            case toPincode = "to_pincode"

            case source

            case action

            case identifier

            case paymentMode = "payment_mode"

            case journey

            case locationDetails = "location_details"
        }

        public init(action: String? = nil, identifier: String? = nil, journey: String? = nil, locationDetails: [TATLocationDetailsRequest]? = nil, paymentMode: String? = nil, source: String? = nil, toPincode: String? = nil) {
            self.toPincode = toPincode

            self.source = source

            self.action = action

            self.identifier = identifier

            self.paymentMode = paymentMode

            self.journey = journey

            self.locationDetails = locationDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                toPincode = try container.decode(String.self, forKey: .toPincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                journey = try container.decode(String.self, forKey: .journey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                locationDetails = try container.decode([TATLocationDetailsRequest].self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)
        }
    }
}
