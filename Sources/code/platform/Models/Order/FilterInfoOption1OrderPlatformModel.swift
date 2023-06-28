

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FilterInfoOption1
         Used By: Order
     */

    class FilterInfoOption1: Codable {
        public var showUi: Bool?

        public var name: String?

        public var text: String?

        public var value: String?

        public var placeholderText: String?

        public var minSearchSize: Int?

        public enum CodingKeys: String, CodingKey {
            case showUi = "show_ui"

            case name

            case text

            case value

            case placeholderText = "placeholder_text"

            case minSearchSize = "min_search_size"
        }

        public init(minSearchSize: Int? = nil, name: String? = nil, placeholderText: String? = nil, showUi: Bool? = nil, text: String? = nil, value: String? = nil) {
            self.showUi = showUi

            self.name = name

            self.text = text

            self.value = value

            self.placeholderText = placeholderText

            self.minSearchSize = minSearchSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                showUi = try container.decode(Bool.self, forKey: .showUi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(String.self, forKey: .text)

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
                placeholderText = try container.decode(String.self, forKey: .placeholderText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minSearchSize = try container.decode(Int.self, forKey: .minSearchSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(showUi, forKey: .showUi)

            try? container.encode(name, forKey: .name)

            try? container.encode(text, forKey: .text)

            try? container.encode(value, forKey: .value)

            try? container.encodeIfPresent(placeholderText, forKey: .placeholderText)

            try? container.encodeIfPresent(minSearchSize, forKey: .minSearchSize)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FilterInfoOption1
         Used By: Order
     */

    class FilterInfoOption1: Codable {
        public var showUi: Bool?

        public var name: String?

        public var text: String?

        public var value: String?

        public var placeholderText: String?

        public var minSearchSize: Int?

        public enum CodingKeys: String, CodingKey {
            case showUi = "show_ui"

            case name

            case text

            case value

            case placeholderText = "placeholder_text"

            case minSearchSize = "min_search_size"
        }

        public init(minSearchSize: Int? = nil, name: String? = nil, placeholderText: String? = nil, showUi: Bool? = nil, text: String? = nil, value: String? = nil) {
            self.showUi = showUi

            self.name = name

            self.text = text

            self.value = value

            self.placeholderText = placeholderText

            self.minSearchSize = minSearchSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                showUi = try container.decode(Bool.self, forKey: .showUi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(String.self, forKey: .text)

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
                placeholderText = try container.decode(String.self, forKey: .placeholderText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minSearchSize = try container.decode(Int.self, forKey: .minSearchSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(showUi, forKey: .showUi)

            try? container.encode(name, forKey: .name)

            try? container.encode(text, forKey: .text)

            try? container.encode(value, forKey: .value)

            try? container.encodeIfPresent(placeholderText, forKey: .placeholderText)

            try? container.encodeIfPresent(minSearchSize, forKey: .minSearchSize)
        }
    }
}
