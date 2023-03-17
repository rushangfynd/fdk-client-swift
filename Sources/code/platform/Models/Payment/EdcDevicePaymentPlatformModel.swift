

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var aggregatorName: String?

        public var deviceTag: String

        public var edcModel: String?

        public var terminalUniqueIdentifier: String

        public var isActive: Bool

        public var merchantStorePosCode: String?

        public var storeId: Int

        public var edcDeviceSerialNo: String

        public var applicationId: String

        public var terminalSerialNo: String

        public var aggregatorId: Int

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case deviceTag = "device_tag"

            case edcModel = "edc_model"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case isActive = "is_active"

            case merchantStorePosCode = "merchant_store_pos_code"

            case storeId = "store_id"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case applicationId = "application_id"

            case terminalSerialNo = "terminal_serial_no"

            case aggregatorId = "aggregator_id"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.aggregatorName = aggregatorName

            self.deviceTag = deviceTag

            self.edcModel = edcModel

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.isActive = isActive

            self.merchantStorePosCode = merchantStorePosCode

            self.storeId = storeId

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.applicationId = applicationId

            self.terminalSerialNo = terminalSerialNo

            self.aggregatorId = aggregatorId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var aggregatorName: String?

        public var deviceTag: String

        public var edcModel: String?

        public var terminalUniqueIdentifier: String

        public var isActive: Bool

        public var merchantStorePosCode: String?

        public var storeId: Int

        public var edcDeviceSerialNo: String

        public var applicationId: String

        public var terminalSerialNo: String

        public var aggregatorId: Int

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case deviceTag = "device_tag"

            case edcModel = "edc_model"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case isActive = "is_active"

            case merchantStorePosCode = "merchant_store_pos_code"

            case storeId = "store_id"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case applicationId = "application_id"

            case terminalSerialNo = "terminal_serial_no"

            case aggregatorId = "aggregator_id"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.aggregatorName = aggregatorName

            self.deviceTag = deviceTag

            self.edcModel = edcModel

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.isActive = isActive

            self.merchantStorePosCode = merchantStorePosCode

            self.storeId = storeId

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.applicationId = applicationId

            self.terminalSerialNo = terminalSerialNo

            self.aggregatorId = aggregatorId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
        }
    }
}