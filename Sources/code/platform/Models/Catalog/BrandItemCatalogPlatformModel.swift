

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: BrandItem
         Used By: Catalog
     */

    class BrandItem: Codable {
        public var discount: String?

        public var action: Action?

        public var banners: ImageUrls?

        public var uid: Int?

        public var departments: [String]?

        public var logo: Media?

        public var name: String?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case discount

            case action

            case banners

            case uid

            case departments

            case logo

            case name

            case slug
        }

        public init(action: Action? = nil, banners: ImageUrls? = nil, departments: [String]? = nil, discount: String? = nil, logo: Media? = nil, name: String? = nil, slug: String? = nil, uid: Int? = nil) {
            self.discount = discount

            self.action = action

            self.banners = banners

            self.uid = uid

            self.departments = departments

            self.logo = logo

            self.name = name

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(Action.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([String].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

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
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: BrandItem
         Used By: Catalog
     */

    class BrandItem: Codable {
        public var discount: String?

        public var action: Action?

        public var banners: ImageUrls?

        public var uid: Int?

        public var departments: [String]?

        public var logo: Media?

        public var name: String?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case discount

            case action

            case banners

            case uid

            case departments

            case logo

            case name

            case slug
        }

        public init(action: Action? = nil, banners: ImageUrls? = nil, departments: [String]? = nil, discount: String? = nil, logo: Media? = nil, name: String? = nil, slug: String? = nil, uid: Int? = nil) {
            self.discount = discount

            self.action = action

            self.banners = banners

            self.uid = uid

            self.departments = departments

            self.logo = logo

            self.name = name

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(Action.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([String].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

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
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
