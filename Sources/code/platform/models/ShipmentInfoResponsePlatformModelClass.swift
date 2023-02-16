

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Order
     */

    class ShipmentInfoResponse: Codable {
        public var shipmentStatus: String?

        public var replacementDetails: String?

        public var trackingList: [TrackingList]?

        public var trackingUrl: String

        public var orderingStore: [String: Any]

        public var beneficiaryDetails: Bool?

        public var userInfo: [String: Any]?

        public var kiranaStoreId: String?

        public var forwardOrderStatus: [[String: Any]]?

        public var vertical: String?

        public var paymentMode: String?

        public var billingDetails: UserDetailsData?

        public var totalBags: Int?

        public var shipmentId: String

        public var gstDetails: GSTDetailsData?

        public var shipmentQuantity: Int?

        public var priorityText: String?

        public var orderStatus: [String: Any]

        public var isInvoiced: Bool

        public var canReturn: Bool?

        public var coupon: [String: Any]?

        public var userAgent: String?

        public var items: [[String: Any]]

        public var order: OrderDetailsData?

        public var userId: String

        public var lockStatus: String

        public var status: ShipmentStatusData?

        public var deliveryDetails: UserDetailsData?

        public var forwardShipmentStatus: [[String: Any]]?

        public var journeyType: String?

        public var operationalStatus: String?

        public var statusProgress: Int

        public var payButton: String?

        public var isFyndStore: String?

        public var creditNoteId: String

        public var pickedDate: String?

        public var isFyndCoupon: Bool

        public var enableTracking: Bool?

        public var prices: Prices?

        public var canBreak: String

        public var fyndstoreEmp: [String: Any]

        public var company: [String: Any]

        public var canCancel: Bool?

        public var bagStatusHistory: [BagStatusHistory]?

        public var packagingType: String?

        public var securedDeliveryFlag: String?

        public var childNodes: [String]?

        public var deliverySlot: [String: Any]?

        public var isPdsr: String?

        public var bags: [OrderBags]?

        public var isPackagingOrder: Bool

        public var shipmentImages: [String]?

        public var enableDpTracking: Bool?

        public var isNotFyndSource: Bool

        public var emailId: String

        public var fulfillingStore: FulfillingStore?

        public var refundText: String?

        public var bankData: [String: Any]?

        public var goGreen: Bool?

        public var orderCreatedTime: String?

        public var totalItems: Int?

        public var refundDetails: [String: Any]?

        public var payments: ShipmentPayments?

        public var mid: String?

        public var customMeta: [[String: Any]]?

        public var platformLogo: Bool

        public var deliveryStatus: [[String: Any]]

        public var affiliateShipmentId: String

        public var dueDate: String?

        public var dpDetails: DPDetailsData?

        public var escalation: [String: Any]?

        public var orderType: String

        public var forwardTrackingList: [[String: Any]]?

        public var currentShipmentStatus: [String: Any]

        public var invoice: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case shipmentStatus = "shipment_status"

            case replacementDetails = "replacement_details"

            case trackingList = "tracking_list"

            case trackingUrl = "tracking_url"

            case orderingStore = "ordering_store"

            case beneficiaryDetails = "beneficiary_details"

            case userInfo = "user_info"

            case kiranaStoreId = "kirana_store_id"

            case forwardOrderStatus = "forward_order_status"

            case vertical

            case paymentMode = "payment_mode"

            case billingDetails = "billing_details"

            case totalBags = "total_bags"

            case shipmentId = "shipment_id"

            case gstDetails = "gst_details"

            case shipmentQuantity = "shipment_quantity"

            case priorityText = "priority_text"

            case orderStatus = "order_status"

            case isInvoiced = "is_invoiced"

            case canReturn = "can_return"

            case coupon

            case userAgent = "user_agent"

            case items

            case order

            case userId = "user_id"

            case lockStatus = "lock_status"

            case status

            case deliveryDetails = "delivery_details"

            case forwardShipmentStatus = "forward_shipment_status"

            case journeyType = "journey_type"

            case operationalStatus = "operational_status"

            case statusProgress = "status_progress"

            case payButton = "pay_button"

            case isFyndStore = "is_fynd_store"

            case creditNoteId = "credit_note_id"

            case pickedDate = "picked_date"

            case isFyndCoupon = "is_fynd_coupon"

            case enableTracking = "enable_tracking"

            case prices

            case canBreak = "can_break"

            case fyndstoreEmp = "fyndstore_emp"

            case company

            case canCancel = "can_cancel"

            case bagStatusHistory = "bag_status_history"

            case packagingType = "packaging_type"

            case securedDeliveryFlag = "secured_delivery_flag"

            case childNodes = "child_nodes"

            case deliverySlot = "delivery_slot"

            case isPdsr = "is_pdsr"

            case bags

            case isPackagingOrder = "is_packaging_order"

            case shipmentImages = "shipment_images"

            case enableDpTracking = "enable_dp_tracking"

            case isNotFyndSource = "is_not_fynd_source"

            case emailId = "email_id"

            case fulfillingStore = "fulfilling_store"

            case refundText = "refund_text"

            case bankData = "bank_data"

            case goGreen = "go_green"

            case orderCreatedTime = "order_created_time"

            case totalItems = "total_items"

            case refundDetails = "refund_details"

            case payments

            case mid

            case customMeta = "custom_meta"

            case platformLogo = "platform_logo"

            case deliveryStatus = "delivery_status"

            case affiliateShipmentId = "affiliate_shipment_id"

            case dueDate = "due_date"

            case dpDetails = "dp_details"

            case escalation

            case orderType = "order_type"

            case forwardTrackingList = "forward_tracking_list"

            case currentShipmentStatus = "current_shipment_status"

            case invoice
        }

        public init(affiliateShipmentId: String, bags: [OrderBags]? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], customMeta: [[String: Any]]? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any]? = nil, deliveryStatus: [[String: Any]], dpDetails: DPDetailsData? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: Bool? = nil, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GSTDetailsData? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String? = nil, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, operationalStatus: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String? = nil, payments: ShipmentPayments? = nil, paymentMode: String? = nil, payButton: String? = nil, pickedDate: String? = nil, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentQuantity: Int? = nil, shipmentStatus: String? = nil, status: ShipmentStatusData? = nil, statusProgress: Int, totalBags: Int? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String? = nil, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.shipmentStatus = shipmentStatus

            self.replacementDetails = replacementDetails

            self.trackingList = trackingList

            self.trackingUrl = trackingUrl

            self.orderingStore = orderingStore

            self.beneficiaryDetails = beneficiaryDetails

            self.userInfo = userInfo

            self.kiranaStoreId = kiranaStoreId

            self.forwardOrderStatus = forwardOrderStatus

            self.vertical = vertical

            self.paymentMode = paymentMode

            self.billingDetails = billingDetails

            self.totalBags = totalBags

            self.shipmentId = shipmentId

            self.gstDetails = gstDetails

            self.shipmentQuantity = shipmentQuantity

            self.priorityText = priorityText

            self.orderStatus = orderStatus

            self.isInvoiced = isInvoiced

            self.canReturn = canReturn

            self.coupon = coupon

            self.userAgent = userAgent

            self.items = items

            self.order = order

            self.userId = userId

            self.lockStatus = lockStatus

            self.status = status

            self.deliveryDetails = deliveryDetails

            self.forwardShipmentStatus = forwardShipmentStatus

            self.journeyType = journeyType

            self.operationalStatus = operationalStatus

            self.statusProgress = statusProgress

            self.payButton = payButton

            self.isFyndStore = isFyndStore

            self.creditNoteId = creditNoteId

            self.pickedDate = pickedDate

            self.isFyndCoupon = isFyndCoupon

            self.enableTracking = enableTracking

            self.prices = prices

            self.canBreak = canBreak

            self.fyndstoreEmp = fyndstoreEmp

            self.company = company

            self.canCancel = canCancel

            self.bagStatusHistory = bagStatusHistory

            self.packagingType = packagingType

            self.securedDeliveryFlag = securedDeliveryFlag

            self.childNodes = childNodes

            self.deliverySlot = deliverySlot

            self.isPdsr = isPdsr

            self.bags = bags

            self.isPackagingOrder = isPackagingOrder

            self.shipmentImages = shipmentImages

            self.enableDpTracking = enableDpTracking

            self.isNotFyndSource = isNotFyndSource

            self.emailId = emailId

            self.fulfillingStore = fulfillingStore

            self.refundText = refundText

            self.bankData = bankData

            self.goGreen = goGreen

            self.orderCreatedTime = orderCreatedTime

            self.totalItems = totalItems

            self.refundDetails = refundDetails

            self.payments = payments

            self.mid = mid

            self.customMeta = customMeta

            self.platformLogo = platformLogo

            self.deliveryStatus = deliveryStatus

            self.affiliateShipmentId = affiliateShipmentId

            self.dueDate = dueDate

            self.dpDetails = dpDetails

            self.escalation = escalation

            self.orderType = orderType

            self.forwardTrackingList = forwardTrackingList

            self.currentShipmentStatus = currentShipmentStatus

            self.invoice = invoice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipmentStatus = try container.decode(String.self, forKey: .shipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            do {
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vertical = try container.decode(String.self, forKey: .vertical)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalBags = try container.decode(Int.self, forKey: .totalBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                gstDetails = try container.decode(GSTDetailsData.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userAgent = try container.decode(String.self, forKey: .userAgent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([[String: Any]].self, forKey: .items)

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                journeyType = try container.decode(String.self, forKey: .journeyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                payButton = try container.decode(String.self, forKey: .payButton)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isFyndStore = try container.decode(String.self, forKey: .isFyndStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                pickedDate = try container.decode(String.self, forKey: .pickedDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            canBreak = try container.decode(String.self, forKey: .canBreak)

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            company = try container.decode([String: Any].self, forKey: .company)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packagingType = try container.decode(String.self, forKey: .packagingType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                securedDeliveryFlag = try container.decode(String.self, forKey: .securedDeliveryFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childNodes = try container.decode([String].self, forKey: .childNodes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode([OrderBags].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                shipmentImages = try container.decode([String].self, forKey: .shipmentImages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enableDpTracking = try container.decode(Bool.self, forKey: .enableDpTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            emailId = try container.decode(String.self, forKey: .emailId)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundText = try container.decode(String.self, forKey: .refundText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bankData = try container.decode([String: Any].self, forKey: .bankData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mid = try container.decode(String.self, forKey: .mid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpDetails = try container.decode(DPDetailsData.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                escalation = try container.decode([String: Any].self, forKey: .escalation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                forwardTrackingList = try container.decode([[String: Any]].self, forKey: .forwardTrackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            invoice = try container.decode([String: Any].self, forKey: .invoice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encode(vertical, forKey: .vertical)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encode(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(invoice, forKey: .invoice)
        }
    }
}
