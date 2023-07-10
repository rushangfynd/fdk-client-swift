

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: AggregatorsConfigDetailResponse
         Used By: Payment
     */
    class AggregatorsConfigDetailResponse: Codable {
        public var payumoney: AggregatorConfigDetail?

        public var razorpay: AggregatorConfigDetail?

        public var simpl: AggregatorConfigDetail?

        public var rupifi: AggregatorConfigDetail?

        public var ccavenue: AggregatorConfigDetail?

        public var env: String

        public var mswipe: AggregatorConfigDetail?

        public var juspay: AggregatorConfigDetail?

        public var success: Bool

        public var stripe: AggregatorConfigDetail?

        public enum CodingKeys: String, CodingKey {
            case payumoney

            case razorpay

            case simpl

            case rupifi

            case ccavenue

            case env

            case mswipe

            case juspay

            case success

            case stripe
        }

        public init(ccavenue: AggregatorConfigDetail? = nil, env: String, juspay: AggregatorConfigDetail? = nil, mswipe: AggregatorConfigDetail? = nil, payumoney: AggregatorConfigDetail? = nil, razorpay: AggregatorConfigDetail? = nil, rupifi: AggregatorConfigDetail? = nil, simpl: AggregatorConfigDetail? = nil, stripe: AggregatorConfigDetail? = nil, success: Bool) {
            self.payumoney = payumoney

            self.razorpay = razorpay

            self.simpl = simpl

            self.rupifi = rupifi

            self.ccavenue = ccavenue

            self.env = env

            self.mswipe = mswipe

            self.juspay = juspay

            self.success = success

            self.stripe = stripe
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                payumoney = try container.decode(AggregatorConfigDetail.self, forKey: .payumoney)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                razorpay = try container.decode(AggregatorConfigDetail.self, forKey: .razorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                simpl = try container.decode(AggregatorConfigDetail.self, forKey: .simpl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rupifi = try container.decode(AggregatorConfigDetail.self, forKey: .rupifi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ccavenue = try container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            env = try container.decode(String.self, forKey: .env)

            do {
                mswipe = try container.decode(AggregatorConfigDetail.self, forKey: .mswipe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                juspay = try container.decode(AggregatorConfigDetail.self, forKey: .juspay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                stripe = try container.decode(AggregatorConfigDetail.self, forKey: .stripe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payumoney, forKey: .payumoney)

            try? container.encodeIfPresent(razorpay, forKey: .razorpay)

            try? container.encodeIfPresent(simpl, forKey: .simpl)

            try? container.encodeIfPresent(rupifi, forKey: .rupifi)

            try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)

            try? container.encodeIfPresent(env, forKey: .env)

            try? container.encodeIfPresent(mswipe, forKey: .mswipe)

            try? container.encodeIfPresent(juspay, forKey: .juspay)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(stripe, forKey: .stripe)
        }
    }
}
