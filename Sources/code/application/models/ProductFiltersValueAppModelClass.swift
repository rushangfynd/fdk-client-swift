

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductFiltersValue
         Used By: Catalog
     */
    class ProductFiltersValue: Codable {
        public var min: Int?

        public var displayFormat: String?

        public var currencyCode: String?

        public var count: Int?

        public var display: String

        public var max: Int?

        public var currencySymbol: String?

        public var value: String?

        public var selectedMax: Int?

        public var selectedMin: Int?

        public var queryFormat: String?

        public var isSelected: Bool

        public enum CodingKeys: String, CodingKey {
            case min

            case displayFormat = "display_format"

            case currencyCode = "currency_code"

            case count

            case display

            case max

            case currencySymbol = "currency_symbol"

            case value

            case selectedMax = "selected_max"

            case selectedMin = "selected_min"

            case queryFormat = "query_format"

            case isSelected = "is_selected"
        }

        public init(count: Int? = nil, currencyCode: String? = nil, currencySymbol: String? = nil, display: String, displayFormat: String? = nil, isSelected: Bool, max: Int? = nil, min: Int? = nil, queryFormat: String? = nil, selectedMax: Int? = nil, selectedMin: Int? = nil, value: String? = nil) {
            self.min = min

            self.displayFormat = displayFormat

            self.currencyCode = currencyCode

            self.count = count

            self.display = display

            self.max = max

            self.currencySymbol = currencySymbol

            self.value = value

            self.selectedMax = selectedMax

            self.selectedMin = selectedMin

            self.queryFormat = queryFormat

            self.isSelected = isSelected
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                min = try container.decode(Int.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayFormat = try container.decode(String.self, forKey: .displayFormat)

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
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            display = try container.decode(String.self, forKey: .display)

            do {
                max = try container.decode(Int.self, forKey: .max)

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
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                selectedMax = try container.decode(Int.self, forKey: .selectedMax)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                selectedMin = try container.decode(Int.self, forKey: .selectedMin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                queryFormat = try container.decode(String.self, forKey: .queryFormat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isSelected = try container.decode(Bool.self, forKey: .isSelected)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)

            try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)

            try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
        }
    }
}
