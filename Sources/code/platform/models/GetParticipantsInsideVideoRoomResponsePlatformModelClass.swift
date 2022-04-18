import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetParticipantsInsideVideoRoomResponse
         Used By: Lead
     */

    class GetParticipantsInsideVideoRoomResponse: Codable {
        public var participants: [Participant]

        public enum CodingKeys: String, CodingKey {
            case participants
        }

        public init(participants: [Participant]) {
            self.participants = participants
        }

        public func duplicate() -> GetParticipantsInsideVideoRoomResponse {
            let dict = self.dictionary!
            let copy = GetParticipantsInsideVideoRoomResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            participants = try container.decode([Participant].self, forKey: .participants)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(participants, forKey: .participants)
        }
    }
}