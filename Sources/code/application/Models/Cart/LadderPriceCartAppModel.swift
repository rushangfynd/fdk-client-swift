

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: LadderPrice
         Used By: Cart
     */
    class LadderPrice: Codable {
        public var marked: Int?

        public var currencyCode: String?

        public var currencySymbol: String?

        public var offerPrice: Double?

        public var effective: Int?

        public enum CodingKeys: String, CodingKey {
            case marked

            case currencyCode = "currency_code"

            case currencySymbol = "currency_symbol"

            case offerPrice = "offer_price"

            case effective
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil, effective: Int? = nil, marked: Int? = nil, offerPrice: Double? = nil) {
            self.marked = marked

            self.currencyCode = currencyCode

            self.currencySymbol = currencySymbol

            self.offerPrice = offerPrice

            self.effective = effective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                marked = try container.decode(Int.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                offerPrice = try container.decode(Double.self, forKey: .offerPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                effective = try container.decode(Int.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(offerPrice, forKey: .offerPrice)

            try? container.encodeIfPresent(effective, forKey: .effective)
        }
    }
}