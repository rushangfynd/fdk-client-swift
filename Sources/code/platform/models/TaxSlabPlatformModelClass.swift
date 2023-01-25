

import Foundation
public extension PlatformClient {
    /*
         Model: TaxSlab
         Used By: Catalog
     */

    class TaxSlab: Codable {
        public var effectiveDate: String

        public var threshold: Double

        public var rate: Double

        public var cess: Double?

        public enum CodingKeys: String, CodingKey {
            case effectiveDate = "effective_date"

            case threshold

            case rate

            case cess
        }

        public init(cess: Double? = nil, effectiveDate: String, rate: Double, threshold: Double) {
            self.effectiveDate = effectiveDate

            self.threshold = threshold

            self.rate = rate

            self.cess = cess
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            effectiveDate = try container.decode(String.self, forKey: .effectiveDate)

            threshold = try container.decode(Double.self, forKey: .threshold)

            rate = try container.decode(Double.self, forKey: .rate)

            do {
                cess = try container.decode(Double.self, forKey: .cess)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(effectiveDate, forKey: .effectiveDate)

            try? container.encodeIfPresent(threshold, forKey: .threshold)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(cess, forKey: .cess)
        }
    }
}
