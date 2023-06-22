

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: StaticConfigV2
         Used By: Theme
     */
    class StaticConfigV2: Codable {
        public var props: StaticPropsV2?

        public enum CodingKeys: String, CodingKey {
            case props
        }

        public init(props: StaticPropsV2? = nil) {
            self.props = props
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                props = try container.decode(StaticPropsV2.self, forKey: .props)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(props, forKey: .props)
        }
    }
}