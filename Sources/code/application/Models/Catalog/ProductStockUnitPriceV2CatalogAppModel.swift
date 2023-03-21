

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductStockUnitPriceV2
         Used By: Catalog
     */
    class ProductStockUnitPriceV2: Codable {
        public var currencySymbol: String?

        public var unit: String?

        public var price: Double?

        public var currencyCode: String?

        public enum CodingKeys: String, CodingKey {
            case currencySymbol = "currency_symbol"

            case unit

            case price

            case currencyCode = "currency_code"
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil, price: Double? = nil, unit: String? = nil) {
            self.currencySymbol = currencySymbol

            self.unit = unit

            self.price = price

            self.currencyCode = currencyCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(Double.self, forKey: .price)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }
}
