

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductFiltersKey
         Used By: Catalog
     */

    class ProductFiltersKey: Codable {
        public var kind: String?

        public var display: String

        public var name: String

        public var operators: [String]?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case kind

            case display

            case name

            case operators

            case logo
        }

        public init(display: String, kind: String? = nil, logo: String? = nil, name: String, operators: [String]? = nil) {
            self.kind = kind

            self.display = display

            self.name = name

            self.operators = operators

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                kind = try container.decode(String.self, forKey: .kind)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            display = try container.decode(String.self, forKey: .display)

            name = try container.decode(String.self, forKey: .name)

            do {
                operators = try container.decode([String].self, forKey: .operators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(kind, forKey: .kind)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(operators, forKey: .operators)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductFiltersKey
         Used By: Catalog
     */

    class ProductFiltersKey: Codable {
        public var kind: String?

        public var display: String

        public var name: String

        public var operators: [String]?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case kind

            case display

            case name

            case operators

            case logo
        }

        public init(display: String, kind: String? = nil, logo: String? = nil, name: String, operators: [String]? = nil) {
            self.kind = kind

            self.display = display

            self.name = name

            self.operators = operators

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                kind = try container.decode(String.self, forKey: .kind)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            display = try container.decode(String.self, forKey: .display)

            name = try container.decode(String.self, forKey: .name)

            do {
                operators = try container.decode([String].self, forKey: .operators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(kind, forKey: .kind)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(operators, forKey: .operators)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
