

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PaymentModesSchema
         Used By: Cart
     */

    class PaymentModesSchema: Codable {
        public var codes: [String]?

        public var networks: [String]?

        public var types: [String]?

        public var uses: PaymentAllowValueSchema?

        public enum CodingKeys: String, CodingKey {
            case codes

            case networks

            case types

            case uses
        }

        public init(codes: [String]? = nil, networks: [String]? = nil, types: [String]? = nil, uses: PaymentAllowValueSchema? = nil) {
            self.codes = codes

            self.networks = networks

            self.types = types

            self.uses = uses
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                codes = try container.decode([String].self, forKey: .codes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                networks = try container.decode([String].self, forKey: .networks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                types = try container.decode([String].self, forKey: .types)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uses = try container.decode(PaymentAllowValueSchema.self, forKey: .uses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codes, forKey: .codes)

            try? container.encodeIfPresent(networks, forKey: .networks)

            try? container.encodeIfPresent(types, forKey: .types)

            try? container.encodeIfPresent(uses, forKey: .uses)
        }
    }
}