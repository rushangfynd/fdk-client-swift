public extension PlatformClient {
    
    
    /*
        Model: TicketList
    */

    struct TicketList: Codable {
        
        
        public var docs: [Ticket]?
        
        public var filters: Filter?
        
        public var limit: Int?
        
        public var page: Int?
        
        public var pages: Int?
        
        public var total: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case filters = "filters"
            
            case limit = "limit"
            
            case page = "page"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(docs: [Ticket]?, filters: Filter?, limit: Int?, page: Int?, pages: Int?, total: Int?) {
            
            self.docs = docs
            
            self.filters = filters
            
            self.limit = limit
            
            self.page = page
            
            self.pages = pages
            
            self.total = total
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([Ticket].self, forKey: .docs)
            
            filters = try? container.decode(Filter.self, forKey: .filters)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
            total = try? container.decode(Int.self, forKey: .total)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
        }
        
    }
    
    /*
        Model: TicketHistoryList
    */

    struct TicketHistoryList: Codable {
        
        
        public var docs: [TicketHistory]?
        
        public var limit: Int?
        
        public var page: Int?
        
        public var pages: Int?
        
        public var total: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case limit = "limit"
            
            case page = "page"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(docs: [TicketHistory]?, limit: Int?, page: Int?, pages: Int?, total: Int?) {
            
            self.docs = docs
            
            self.limit = limit
            
            self.page = page
            
            self.pages = pages
            
            self.total = total
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([TicketHistory].self, forKey: .docs)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
            total = try? container.decode(Int.self, forKey: .total)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
        }
        
    }
    
    /*
        Model: CustomFormList
    */

    struct CustomFormList: Codable {
        
        
        public var docs: [CustomForm]?
        
        public var limit: Int?
        
        public var page: Int?
        
        public var pages: Int?
        
        public var total: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case limit = "limit"
            
            case page = "page"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(docs: [CustomForm]?, limit: Int?, page: Int?, pages: Int?, total: Int?) {
            
            self.docs = docs
            
            self.limit = limit
            
            self.page = page
            
            self.pages = pages
            
            self.total = total
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([CustomForm].self, forKey: .docs)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
            total = try? container.decode(Int.self, forKey: .total)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
        }
        
    }
    
    /*
        Model: CreateCustomFormPayload
    */

    struct CreateCustomFormPayload: Codable {
        
        
        public var slug: String
        
        public var title: String
        
        public var inputs: [[String: Any]]
        
        public var description: String?
        
        public var headerImage: String?
        
        public var shouldNotify: Bool?
        
        public var successMessage: String?
        
        public var pollForAssignment: PollForAssignment?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case title = "title"
            
            case inputs = "inputs"
            
            case description = "description"
            
            case headerImage = "header_image"
            
            case shouldNotify = "should_notify"
            
            case successMessage = "success_message"
            
            case pollForAssignment = "poll_for_assignment"
            
        }

        public init(slug: String, title: String, inputs: [[String: Any]], description: String?, headerImage: String?, shouldNotify: Bool?, successMessage: String?, pollForAssignment: PollForAssignment?) {
            
            self.slug = slug
            
            self.title = title
            
            self.inputs = inputs
            
            self.description = description
            
            self.headerImage = headerImage
            
            self.shouldNotify = shouldNotify
            
            self.successMessage = successMessage
            
            self.pollForAssignment = pollForAssignment
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            slug = try container.decode(String.self, forKey: .slug)
            
            title = try container.decode(String.self, forKey: .title)
            
            inputs = try container.decode([[String: Any]].self, forKey: .inputs)
            
            description = try? container.decode(String.self, forKey: .description)
            
            headerImage = try? container.decode(String.self, forKey: .headerImage)
            
            shouldNotify = try? container.decode(Bool.self, forKey: .shouldNotify)
            
            successMessage = try? container.decode(String.self, forKey: .successMessage)
            
            pollForAssignment = try? container.decode(PollForAssignment.self, forKey: .pollForAssignment)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(inputs, forKey: .inputs)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(headerImage, forKey: .headerImage)
            
            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
            
        }
        
    }
    
    /*
        Model: EditCustomFormPayload
    */

    struct EditCustomFormPayload: Codable {
        
        
        public var title: String
        
        public var inputs: [[String: Any]]
        
        public var description: String?
        
        public var headerImage: String?
        
        public var shouldNotify: Bool?
        
        public var loginRequired: Bool?
        
        public var successMessage: String?
        
        public var pollForAssignment: PollForAssignment?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case inputs = "inputs"
            
            case description = "description"
            
            case headerImage = "header_image"
            
            case shouldNotify = "should_notify"
            
            case loginRequired = "login_required"
            
            case successMessage = "success_message"
            
            case pollForAssignment = "poll_for_assignment"
            
        }

        public init(title: String, inputs: [[String: Any]], description: String?, headerImage: String?, shouldNotify: Bool?, loginRequired: Bool?, successMessage: String?, pollForAssignment: PollForAssignment?) {
            
            self.title = title
            
            self.inputs = inputs
            
            self.description = description
            
            self.headerImage = headerImage
            
            self.shouldNotify = shouldNotify
            
            self.loginRequired = loginRequired
            
            self.successMessage = successMessage
            
            self.pollForAssignment = pollForAssignment
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try container.decode(String.self, forKey: .title)
            
            inputs = try container.decode([[String: Any]].self, forKey: .inputs)
            
            description = try? container.decode(String.self, forKey: .description)
            
            headerImage = try? container.decode(String.self, forKey: .headerImage)
            
            shouldNotify = try? container.decode(Bool.self, forKey: .shouldNotify)
            
            loginRequired = try? container.decode(Bool.self, forKey: .loginRequired)
            
            successMessage = try? container.decode(String.self, forKey: .successMessage)
            
            pollForAssignment = try? container.decode(PollForAssignment.self, forKey: .pollForAssignment)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(inputs, forKey: .inputs)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(headerImage, forKey: .headerImage)
            
            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)
            
            try? container.encodeIfPresent(loginRequired, forKey: .loginRequired)
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
            
        }
        
    }
    
    /*
        Model: EditTicketPayload
    */

    struct EditTicketPayload: Codable {
        
        
        public var content: TicketContent?
        
        public var category: String?
        
        public var source: String?
        
        public var status: String?
        
        public var priority: String?
        
        public var assignedTo: AgentChangePayload?
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case content = "content"
            
            case category = "category"
            
            case source = "source"
            
            case status = "status"
            
            case priority = "priority"
            
            case assignedTo = "assigned_to"
            
            case tags = "tags"
            
        }

        public init(content: TicketContent?, category: String?, source: String?, status: String?, priority: String?, assignedTo: AgentChangePayload?, tags: [String]?) {
            
            self.content = content
            
            self.category = category
            
            self.source = source
            
            self.status = status
            
            self.priority = priority
            
            self.assignedTo = assignedTo
            
            self.tags = tags
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            content = try? container.decode(TicketContent.self, forKey: .content)
            
            category = try? container.decode(String.self, forKey: .category)
            
            source = try? container.decode(String.self, forKey: .source)
            
            status = try? container.decode(String.self, forKey: .status)
            
            priority = try? container.decode(String.self, forKey: .priority)
            
            assignedTo = try? container.decode(AgentChangePayload.self, forKey: .assignedTo)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(content, forKey: .content)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(assignedTo, forKey: .assignedTo)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: AgentChangePayload
    */

    struct AgentChangePayload: Codable {
        
        
        public var agentId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case agentId = "agent_id"
            
        }

        public init(agentId: String) {
            
            self.agentId = agentId
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            agentId = try container.decode(String.self, forKey: .agentId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(agentId, forKey: .agentId)
            
        }
        
    }
    
    /*
        Model: CreateVideoRoomResponse
    */

    struct CreateVideoRoomResponse: Codable {
        
        
        public var uniqueName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueName = "unique_name"
            
        }

        public init(uniqueName: String) {
            
            self.uniqueName = uniqueName
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uniqueName = try container.decode(String.self, forKey: .uniqueName)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uniqueName, forKey: .uniqueName)
            
        }
        
    }
    
    /*
        Model: CloseVideoRoomResponse
    */

    struct CloseVideoRoomResponse: Codable {
        
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
        }

        public init(success: Bool) {
            
            self.success = success
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: CreateVideoRoomPayload
    */

    struct CreateVideoRoomPayload: Codable {
        
        
        public var uniqueName: String
        
        public var notify: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueName = "unique_name"
            
            case notify = "notify"
            
        }

        public init(uniqueName: String, notify: [[String: Any]]?) {
            
            self.uniqueName = uniqueName
            
            self.notify = notify
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uniqueName = try container.decode(String.self, forKey: .uniqueName)
            
            notify = try? container.decode([[String: Any]].self, forKey: .notify)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uniqueName, forKey: .uniqueName)
            
            try? container.encodeIfPresent(notify, forKey: .notify)
            
        }
        
    }
    
    /*
        Model: Filter
    */

    struct Filter: Codable {
        
        
        public var priorities: Priority
        
        public var categories: Category?
        
        public var statuses: Status
        
        public var assignees: [[String: Any]]
        

        public enum CodingKeys: String, CodingKey {
            
            case priorities = "priorities"
            
            case categories = "categories"
            
            case statuses = "statuses"
            
            case assignees = "assignees"
            
        }

        public init(priorities: Priority, categories: Category?, statuses: Status, assignees: [[String: Any]]) {
            
            self.priorities = priorities
            
            self.categories = categories
            
            self.statuses = statuses
            
            self.assignees = assignees
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            priorities = try container.decode(Priority.self, forKey: .priorities)
            
            categories = try? container.decode(Category.self, forKey: .categories)
            
            statuses = try container.decode(Status.self, forKey: .statuses)
            
            assignees = try container.decode([[String: Any]].self, forKey: .assignees)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(priorities, forKey: .priorities)
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            try? container.encodeIfPresent(statuses, forKey: .statuses)
            
            try? container.encodeIfPresent(assignees, forKey: .assignees)
            
        }
        
    }
    
    /*
        Model: TicketHistoryPayload
    */

    struct TicketHistoryPayload: Codable {
        
        
        public var value: [String: Any]?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(value: [String: Any]?, type: String?) {
            
            self.value = value
            
            self.type = type
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            value = try? container.decode([String: Any].self, forKey: .value)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: CustomFormSubmissionPayload
    */

    struct CustomFormSubmissionPayload: Codable {
        
        
        public var response: [[String: Any]]
        

        public enum CodingKeys: String, CodingKey {
            
            case response = "response"
            
        }

        public init(response: [[String: Any]]) {
            
            self.response = response
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            response = try container.decode([[String: Any]].self, forKey: .response)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(response, forKey: .response)
            
        }
        
    }
    
    /*
        Model: GetTokenForVideoRoomResponse
    */

    struct GetTokenForVideoRoomResponse: Codable {
        
        
        public var accessToken: String
        

        public enum CodingKeys: String, CodingKey {
            
            case accessToken = "access_token"
            
        }

        public init(accessToken: String) {
            
            self.accessToken = accessToken
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            accessToken = try container.decode(String.self, forKey: .accessToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(accessToken, forKey: .accessToken)
            
        }
        
    }
    
    /*
        Model: GetParticipantsInsideVideoRoomResponse
    */

    struct GetParticipantsInsideVideoRoomResponse: Codable {
        
        
        public var participants: [[String: Any]]
        

        public enum CodingKeys: String, CodingKey {
            
            case participants = "participants"
            
        }

        public init(participants: [[String: Any]]) {
            
            self.participants = participants
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            participants = try container.decode([[String: Any]].self, forKey: .participants)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(participants, forKey: .participants)
            
        }
        
    }
    
    /*
        Model: SubmitCustomFormResponse
    */

    struct SubmitCustomFormResponse: Codable {
        
        
        public var ticket: Ticket
        

        public enum CodingKeys: String, CodingKey {
            
            case ticket = "ticket"
            
        }

        public init(ticket: Ticket) {
            
            self.ticket = ticket
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            ticket = try container.decode(Ticket.self, forKey: .ticket)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(ticket, forKey: .ticket)
            
        }
        
    }
    
    /*
        Model: TicketContext
    */

    struct TicketContext: Codable {
        
        
        public var applicationId: String?
        
        public var companyId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
        }

        public init(applicationId: String?, companyId: String) {
            
            self.applicationId = applicationId
            
            self.companyId = companyId
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            applicationId = try? container.decode(String.self, forKey: .applicationId)
            
            companyId = try container.decode(String.self, forKey: .companyId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
        }
        
    }
    
    /*
        Model: CreatedOn
    */

    struct CreatedOn: Codable {
        
        
        public var userAgent: String
        

        public enum CodingKeys: String, CodingKey {
            
            case userAgent = "user_agent"
            
        }

        public init(userAgent: String) {
            
            self.userAgent = userAgent
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            userAgent = try container.decode(String.self, forKey: .userAgent)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(userAgent, forKey: .userAgent)
            
        }
        
    }
    
    /*
        Model: Asset
    */

    struct Asset: Codable {
        
        
        public var display: String?
        
        public var value: String
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(display: String?, value: String, type: String) {
            
            self.display = display
            
            self.value = value
            
            self.type = type
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            display = try? container.decode(String.self, forKey: .display)
            
            value = try container.decode(String.self, forKey: .value)
            
            type = try container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: TicketContent
    */

    struct TicketContent: Codable {
        
        
        public var title: String
        
        public var description: String?
        
        public var attachments: [Asset]?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case description = "description"
            
            case attachments = "attachments"
            
        }

        public init(title: String, description: String?, attachments: [Asset]?) {
            
            self.title = title
            
            self.description = description
            
            self.attachments = attachments
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try container.decode(String.self, forKey: .title)
            
            description = try? container.decode(String.self, forKey: .description)
            
            attachments = try? container.decode([Asset].self, forKey: .attachments)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(attachments, forKey: .attachments)
            
        }
        
    }
    
    /*
        Model: APIError
    */

    struct APIError: Codable {
        
        
        public var code: Double?
        
        public var error: [String: Any]?
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case error = "error"
            
            case message = "message"
            
        }

        public init(code: Double?, error: [String: Any]?, message: String) {
            
            self.code = code
            
            self.error = error
            
            self.message = message
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(Double.self, forKey: .code)
            
            error = try? container.decode([String: Any].self, forKey: .error)
            
            message = try container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: AddTicketPayload
    */

    struct AddTicketPayload: Codable {
        
        
        public var status: String
        
        public var priority: String
        
        public var category: String
        
        public var content: TicketContent
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case priority = "priority"
            
            case category = "category"
            
            case content = "content"
            
        }

        public init(status: String, priority: String, category: String, content: TicketContent) {
            
            self.status = status
            
            self.priority = priority
            
            self.category = category
            
            self.content = content
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            status = try container.decode(String.self, forKey: .status)
            
            priority = try container.decode(String.self, forKey: .priority)
            
            category = try container.decode(String.self, forKey: .category)
            
            content = try container.decode(TicketContent.self, forKey: .content)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            try? container.encodeIfPresent(content, forKey: .content)
            
        }
        
    }
    
    /*
        Model: Priority
    */

    struct Priority: Codable {
        
        
        public var key: String
        
        public var display: String
        
        public var color: String
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case color = "color"
            
        }

        public init(key: String, display: String, color: String) {
            
            self.key = key
            
            self.display = display
            
            self.color = color
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try container.decode(String.self, forKey: .key)
            
            display = try container.decode(String.self, forKey: .display)
            
            color = try container.decode(String.self, forKey: .color)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(color, forKey: .color)
            
        }
        
    }
    
    /*
        Model: Status
    */

    struct Status: Codable {
        
        
        public var key: String
        
        public var display: String
        
        public var color: String
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case color = "color"
            
        }

        public init(key: String, display: String, color: String) {
            
            self.key = key
            
            self.display = display
            
            self.color = color
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try container.decode(String.self, forKey: .key)
            
            display = try container.decode(String.self, forKey: .display)
            
            color = try container.decode(String.self, forKey: .color)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(color, forKey: .color)
            
        }
        
    }
    
    /*
        Model: Category
    */

    struct Category: Codable {
        
        
        public var key: String
        
        public var display: String
        
        public var form: CustomForm?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case form = "form"
            
        }

        public init(key: String, display: String, form: CustomForm?) {
            
            self.key = key
            
            self.display = display
            
            self.form = form
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try container.decode(String.self, forKey: .key)
            
            display = try container.decode(String.self, forKey: .display)
            
            form = try? container.decode(CustomForm.self, forKey: .form)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(form, forKey: .form)
            
        }
        
    }
    
    /*
        Model: SubmitButton
    */

    struct SubmitButton: Codable {
        
        
        public var title: String
        
        public var titleColor: String
        
        public var backgroundColor: String
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case titleColor = "title_color"
            
            case backgroundColor = "background_color"
            
        }

        public init(title: String, titleColor: String, backgroundColor: String) {
            
            self.title = title
            
            self.titleColor = titleColor
            
            self.backgroundColor = backgroundColor
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try container.decode(String.self, forKey: .title)
            
            titleColor = try container.decode(String.self, forKey: .titleColor)
            
            backgroundColor = try container.decode(String.self, forKey: .backgroundColor)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(titleColor, forKey: .titleColor)
            
            try? container.encodeIfPresent(backgroundColor, forKey: .backgroundColor)
            
        }
        
    }
    
    /*
        Model: PollForAssignment
    */

    struct PollForAssignment: Codable {
        
        
        public var duration: Double
        
        public var message: String
        
        public var successMessage: String
        
        public var failureMessage: String
        

        public enum CodingKeys: String, CodingKey {
            
            case duration = "duration"
            
            case message = "message"
            
            case successMessage = "success_message"
            
            case failureMessage = "failure_message"
            
        }

        public init(duration: Double, message: String, successMessage: String, failureMessage: String) {
            
            self.duration = duration
            
            self.message = message
            
            self.successMessage = successMessage
            
            self.failureMessage = failureMessage
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            duration = try container.decode(Double.self, forKey: .duration)
            
            message = try container.decode(String.self, forKey: .message)
            
            successMessage = try container.decode(String.self, forKey: .successMessage)
            
            failureMessage = try container.decode(String.self, forKey: .failureMessage)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            try? container.encodeIfPresent(failureMessage, forKey: .failureMessage)
            
        }
        
    }
    
    /*
        Model: CustomForm
    */

    struct CustomForm: Codable {
        
        
        public var applicationId: String
        
        public var slug: String
        
        public var headerImage: String?
        
        public var title: String
        
        public var description: String?
        
        public var loginRequired: Bool
        
        public var shouldNotify: Bool
        
        public var successMessage: String?
        
        public var submitButton: SubmitButton?
        
        public var inputs: [[String: Any]]
        
        public var createdOn: CreatedOn?
        
        public var createdBy: [String: Any]?
        
        public var pollForAssignment: PollForAssignment?
        
        public var id: String
        
        public var updatedAt: String?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationId = "application_id"
            
            case slug = "slug"
            
            case headerImage = "header_image"
            
            case title = "title"
            
            case description = "description"
            
            case loginRequired = "login_required"
            
            case shouldNotify = "should_notify"
            
            case successMessage = "success_message"
            
            case submitButton = "submit_button"
            
            case inputs = "inputs"
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case pollForAssignment = "poll_for_assignment"
            
            case id = "_id"
            
            case updatedAt = "updatedAt"
            
            case createdAt = "createdAt"
            
        }

        public init(applicationId: String, slug: String, headerImage: String?, title: String, description: String?, loginRequired: Bool, shouldNotify: Bool, successMessage: String?, submitButton: SubmitButton?, inputs: [[String: Any]], createdOn: CreatedOn?, createdBy: [String: Any]?, pollForAssignment: PollForAssignment?, id: String, updatedAt: String?, createdAt: String?) {
            
            self.applicationId = applicationId
            
            self.slug = slug
            
            self.headerImage = headerImage
            
            self.title = title
            
            self.description = description
            
            self.loginRequired = loginRequired
            
            self.shouldNotify = shouldNotify
            
            self.successMessage = successMessage
            
            self.submitButton = submitButton
            
            self.inputs = inputs
            
            self.createdOn = createdOn
            
            self.createdBy = createdBy
            
            self.pollForAssignment = pollForAssignment
            
            self.id = id
            
            self.updatedAt = updatedAt
            
            self.createdAt = createdAt
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            applicationId = try container.decode(String.self, forKey: .applicationId)
            
            slug = try container.decode(String.self, forKey: .slug)
            
            headerImage = try? container.decode(String.self, forKey: .headerImage)
            
            title = try container.decode(String.self, forKey: .title)
            
            description = try? container.decode(String.self, forKey: .description)
            
            loginRequired = try container.decode(Bool.self, forKey: .loginRequired)
            
            shouldNotify = try container.decode(Bool.self, forKey: .shouldNotify)
            
            successMessage = try? container.decode(String.self, forKey: .successMessage)
            
            submitButton = try? container.decode(SubmitButton.self, forKey: .submitButton)
            
            inputs = try container.decode([[String: Any]].self, forKey: .inputs)
            
            createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            pollForAssignment = try? container.decode(PollForAssignment.self, forKey: .pollForAssignment)
            
            id = try container.decode(String.self, forKey: .id)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(headerImage, forKey: .headerImage)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(loginRequired, forKey: .loginRequired)
            
            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            try? container.encodeIfPresent(submitButton, forKey: .submitButton)
            
            try? container.encodeIfPresent(inputs, forKey: .inputs)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
        }
        
    }
    
    /*
        Model: TicketHistory
    */

    struct TicketHistory: Codable {
        
        
        public var type: String
        
        public var value: [String: Any]
        
        public var ticketId: String
        
        public var createdOn: CreatedOn?
        
        public var createdBy: [String: Any]?
        
        public var id: String
        
        public var updatedAt: String?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case value = "value"
            
            case ticketId = "ticket_id"
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case id = "_id"
            
            case updatedAt = "updatedAt"
            
            case createdAt = "createdAt"
            
        }

        public init(type: String, value: [String: Any], ticketId: String, createdOn: CreatedOn?, createdBy: [String: Any]?, id: String, updatedAt: String?, createdAt: String?) {
            
            self.type = type
            
            self.value = value
            
            self.ticketId = ticketId
            
            self.createdOn = createdOn
            
            self.createdBy = createdBy
            
            self.id = id
            
            self.updatedAt = updatedAt
            
            self.createdAt = createdAt
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            type = try container.decode(String.self, forKey: .type)
            
            value = try container.decode([String: Any].self, forKey: .value)
            
            ticketId = try container.decode(String.self, forKey: .ticketId)
            
            createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            id = try container.decode(String.self, forKey: .id)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(ticketId, forKey: .ticketId)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
        }
        
    }
    
    /*
        Model: Ticket
    */

    struct Ticket: Codable {
        
        
        public var context: TicketContext?
        
        public var createdOn: CreatedOn?
        
        public var responseId: String?
        
        public var content: TicketContent?
        
        public var ticketId: String
        
        public var category: Category
        
        public var source: String
        
        public var status: Status
        
        public var priority: Priority
        
        public var createdBy: [String: Any]?
        
        public var assignedTo: [String: Any]?
        
        public var tags: [String]?
        
        public var customJson: [String: Any]?
        
        public var id: String?
        
        public var updatedAt: String?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case context = "context"
            
            case createdOn = "created_on"
            
            case responseId = "response_id"
            
            case content = "content"
            
            case ticketId = "ticket_id"
            
            case category = "category"
            
            case source = "source"
            
            case status = "status"
            
            case priority = "priority"
            
            case createdBy = "created_by"
            
            case assignedTo = "assigned_to"
            
            case tags = "tags"
            
            case customJson = "_custom_json"
            
            case id = "_id"
            
            case updatedAt = "updatedAt"
            
            case createdAt = "createdAt"
            
        }

        public init(context: TicketContext?, createdOn: CreatedOn?, responseId: String?, content: TicketContent?, ticketId: String, category: Category, source: String, status: Status, priority: Priority, createdBy: [String: Any]?, assignedTo: [String: Any]?, tags: [String]?, customJson: [String: Any]?, id: String?, updatedAt: String?, createdAt: String?) {
            
            self.context = context
            
            self.createdOn = createdOn
            
            self.responseId = responseId
            
            self.content = content
            
            self.ticketId = ticketId
            
            self.category = category
            
            self.source = source
            
            self.status = status
            
            self.priority = priority
            
            self.createdBy = createdBy
            
            self.assignedTo = assignedTo
            
            self.tags = tags
            
            self.customJson = customJson
            
            self.id = id
            
            self.updatedAt = updatedAt
            
            self.createdAt = createdAt
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            context = try? container.decode(TicketContext.self, forKey: .context)
            
            createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
            
            responseId = try? container.decode(String.self, forKey: .responseId)
            
            content = try? container.decode(TicketContent.self, forKey: .content)
            
            ticketId = try container.decode(String.self, forKey: .ticketId)
            
            category = try container.decode(Category.self, forKey: .category)
            
            source = try container.decode(String.self, forKey: .source)
            
            status = try container.decode(Status.self, forKey: .status)
            
            priority = try container.decode(Priority.self, forKey: .priority)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            assignedTo = try? container.decode([String: Any].self, forKey: .assignedTo)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            customJson = try? container.decode([String: Any].self, forKey: .customJson)
            
            id = try? container.decode(String.self, forKey: .id)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(context, forKey: .context)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(responseId, forKey: .responseId)
            
            try? container.encodeIfPresent(content, forKey: .content)
            
            try? container.encodeIfPresent(ticketId, forKey: .ticketId)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(assignedTo, forKey: .assignedTo)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
        }
        
    }
    
    
    
    /*
        Model: PaginationSchema
    */

    struct PaginationSchema: Codable {
        
        
        public var size: Int?
        
        public var itemTotal: Int?
        
        public var hasNext: Bool?
        
        public var type: String?
        
        public var current: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case itemTotal = "item_total"
            
            case hasNext = "has_next"
            
            case type = "type"
            
            case current = "current"
            
        }

        public init(size: Int?, itemTotal: Int?, hasNext: Bool?, type: String?, current: Int?) {
            
            self.size = size
            
            self.itemTotal = itemTotal
            
            self.hasNext = hasNext
            
            self.type = type
            
            self.current = current
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            size = try? container.decode(Int.self, forKey: .size)
            
            itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
            type = try? container.decode(String.self, forKey: .type)
            
            current = try? container.decode(Int.self, forKey: .current)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(current, forKey: .current)
            
        }
        
    }
    
    /*
        Model: ThemesListingResponseSchema
    */

    struct ThemesListingResponseSchema: Codable {
        
        
        public var items: [ThemesSchema]?
        
        public var page: PaginationSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [ThemesSchema]?, page: PaginationSchema?) {
            
            self.items = items
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([ThemesSchema].self, forKey: .items)
            
            page = try? container.decode(PaginationSchema.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: AddThemeRequestSchema
    */

    struct AddThemeRequestSchema: Codable {
        
        
        public var themeId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case themeId = "theme_id"
            
        }

        public init(themeId: String?) {
            
            self.themeId = themeId
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            themeId = try? container.decode(String.self, forKey: .themeId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(themeId, forKey: .themeId)
            
        }
        
    }
    
    /*
        Model: UpgradableThemeSchema
    */

    struct UpgradableThemeSchema: Codable {
        
        
        public var parentTheme: String?
        
        public var appliedTheme: String?
        
        public var upgrade: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case parentTheme = "parent_theme"
            
            case appliedTheme = "applied_theme"
            
            case upgrade = "upgrade"
            
        }

        public init(parentTheme: String?, appliedTheme: String?, upgrade: Bool?) {
            
            self.parentTheme = parentTheme
            
            self.appliedTheme = appliedTheme
            
            self.upgrade = upgrade
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            parentTheme = try? container.decode(String.self, forKey: .parentTheme)
            
            appliedTheme = try? container.decode(String.self, forKey: .appliedTheme)
            
            upgrade = try? container.decode(Bool.self, forKey: .upgrade)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(parentTheme, forKey: .parentTheme)
            
            try? container.encodeIfPresent(appliedTheme, forKey: .appliedTheme)
            
            try? container.encodeIfPresent(upgrade, forKey: .upgrade)
            
        }
        
    }
    
    /*
        Model: FontsSchema
    */

    struct FontsSchema: Codable {
        
        
        public var items: [[String: Any]]?
        
        public var kind: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case kind = "kind"
            
        }

        public init(items: [[String: Any]]?, kind: String?) {
            
            self.items = items
            
            self.kind = kind
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([[String: Any]].self, forKey: .items)
            
            kind = try? container.decode(String.self, forKey: .kind)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(kind, forKey: .kind)
            
        }
        
    }
    
    /*
        Model: ThemesSchema
    */

    struct ThemesSchema: Codable {
        
        
        public var application: String?
        
        public var applied: Bool?
        
        public var customized: Bool?
        
        public var published: Bool?
        
        public var archived: Bool?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var version: String?
        
        public var parentThemeVersion: String?
        
        public var parentTheme: String?
        
        public var information: [String: Any]?
        
        public var tags: [String]?
        
        public var src: [String: Any]?
        
        public var assets: [String: Any]?
        
        public var availablePages: [[String: Any]]?
        
        public var pages: [String: Any]?
        
        public var availableSections: [availableSectionSchema]?
        
        public var sections: [sectionSchema]?
        
        public var constants: [String: Any]?
        
        public var styles: [String: Any]?
        
        public var config: [String: Any]?
        
        public var settings: [String: Any]?
        
        public var font: [String: Any]?
        
        public var id: String?
        
        public var v: Int?
        
        public var colors: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case applied = "applied"
            
            case customized = "customized"
            
            case published = "published"
            
            case archived = "archived"
            
            case createdAt = "createdAt"
            
            case updatedAt = "updatedAt"
            
            case version = "version"
            
            case parentThemeVersion = "parentThemeVersion"
            
            case parentTheme = "parentTheme"
            
            case information = "information"
            
            case tags = "tags"
            
            case src = "src"
            
            case assets = "assets"
            
            case availablePages = "available_pages"
            
            case pages = "pages"
            
            case availableSections = "available_sections"
            
            case sections = "sections"
            
            case constants = "constants"
            
            case styles = "styles"
            
            case config = "config"
            
            case settings = "settings"
            
            case font = "font"
            
            case id = "_id"
            
            case v = "__v"
            
            case colors = "colors"
            
        }

        public init(application: String?, applied: Bool?, customized: Bool?, published: Bool?, archived: Bool?, createdAt: String?, updatedAt: String?, version: String?, parentThemeVersion: String?, parentTheme: String?, information: [String: Any]?, tags: [String]?, src: [String: Any]?, assets: [String: Any]?, availablePages: [[String: Any]]?, pages: [String: Any]?, availableSections: [availableSectionSchema]?, sections: [sectionSchema]?, constants: [String: Any]?, styles: [String: Any]?, config: [String: Any]?, settings: [String: Any]?, font: [String: Any]?, id: String?, v: Int?, colors: [String: Any]?) {
            
            self.application = application
            
            self.applied = applied
            
            self.customized = customized
            
            self.published = published
            
            self.archived = archived
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.version = version
            
            self.parentThemeVersion = parentThemeVersion
            
            self.parentTheme = parentTheme
            
            self.information = information
            
            self.tags = tags
            
            self.src = src
            
            self.assets = assets
            
            self.availablePages = availablePages
            
            self.pages = pages
            
            self.availableSections = availableSections
            
            self.sections = sections
            
            self.constants = constants
            
            self.styles = styles
            
            self.config = config
            
            self.settings = settings
            
            self.font = font
            
            self.id = id
            
            self.v = v
            
            self.colors = colors
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            application = try? container.decode(String.self, forKey: .application)
            
            applied = try? container.decode(Bool.self, forKey: .applied)
            
            customized = try? container.decode(Bool.self, forKey: .customized)
            
            published = try? container.decode(Bool.self, forKey: .published)
            
            archived = try? container.decode(Bool.self, forKey: .archived)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            version = try? container.decode(String.self, forKey: .version)
            
            parentThemeVersion = try? container.decode(String.self, forKey: .parentThemeVersion)
            
            parentTheme = try? container.decode(String.self, forKey: .parentTheme)
            
            information = try? container.decode([String: Any].self, forKey: .information)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            src = try? container.decode([String: Any].self, forKey: .src)
            
            assets = try? container.decode([String: Any].self, forKey: .assets)
            
            availablePages = try? container.decode([[String: Any]].self, forKey: .availablePages)
            
            pages = try? container.decode([String: Any].self, forKey: .pages)
            
            availableSections = try? container.decode([availableSectionSchema].self, forKey: .availableSections)
            
            sections = try? container.decode([sectionSchema].self, forKey: .sections)
            
            constants = try? container.decode([String: Any].self, forKey: .constants)
            
            styles = try? container.decode([String: Any].self, forKey: .styles)
            
            config = try? container.decode([String: Any].self, forKey: .config)
            
            settings = try? container.decode([String: Any].self, forKey: .settings)
            
            font = try? container.decode([String: Any].self, forKey: .font)
            
            id = try? container.decode(String.self, forKey: .id)
            
            v = try? container.decode(Int.self, forKey: .v)
            
            colors = try? container.decode([String: Any].self, forKey: .colors)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(applied, forKey: .applied)
            
            try? container.encodeIfPresent(customized, forKey: .customized)
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            try? container.encodeIfPresent(archived, forKey: .archived)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            try? container.encodeIfPresent(parentThemeVersion, forKey: .parentThemeVersion)
            
            try? container.encodeIfPresent(parentTheme, forKey: .parentTheme)
            
            try? container.encodeIfPresent(information, forKey: .information)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(src, forKey: .src)
            
            try? container.encodeIfPresent(assets, forKey: .assets)
            
            try? container.encodeIfPresent(availablePages, forKey: .availablePages)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(availableSections, forKey: .availableSections)
            
            try? container.encodeIfPresent(sections, forKey: .sections)
            
            try? container.encodeIfPresent(constants, forKey: .constants)
            
            try? container.encodeIfPresent(styles, forKey: .styles)
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            try? container.encodeIfPresent(settings, forKey: .settings)
            
            try? container.encodeIfPresent(font, forKey: .font)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            try? container.encodeIfPresent(colors, forKey: .colors)
            
        }
        
    }
    
    /*
        Model: pagesSchema
    */

    struct pagesSchema: Codable {
        
        
        public var text: String?
        
        public var path: String?
        
        public var type: String?
        
        public var value: String?
        
        public var sections: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case path = "path"
            
            case type = "type"
            
            case value = "value"
            
            case sections = "sections"
            
        }

        public init(text: String?, path: String?, type: String?, value: String?, sections: [[String: Any]]?) {
            
            self.text = text
            
            self.path = path
            
            self.type = type
            
            self.value = value
            
            self.sections = sections
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            text = try? container.decode(String.self, forKey: .text)
            
            path = try? container.decode(String.self, forKey: .path)
            
            type = try? container.decode(String.self, forKey: .type)
            
            value = try? container.decode(String.self, forKey: .value)
            
            sections = try? container.decode([[String: Any]].self, forKey: .sections)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(path, forKey: .path)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(sections, forKey: .sections)
            
        }
        
    }
    
    /*
        Model: availableSectionSchema
    */

    struct availableSectionSchema: Codable {
        
        
        public var blocks: [[String: Any]]?
        
        public var name: String?
        
        public var label: String?
        
        public var props: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case blocks = "blocks"
            
            case name = "name"
            
            case label = "label"
            
            case props = "props"
            
        }

        public init(blocks: [[String: Any]]?, name: String?, label: String?, props: [[String: Any]]?) {
            
            self.blocks = blocks
            
            self.name = name
            
            self.label = label
            
            self.props = props
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            blocks = try? container.decode([[String: Any]].self, forKey: .blocks)
            
            name = try? container.decode(String.self, forKey: .name)
            
            label = try? container.decode(String.self, forKey: .label)
            
            props = try? container.decode([[String: Any]].self, forKey: .props)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(blocks, forKey: .blocks)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            try? container.encodeIfPresent(props, forKey: .props)
            
        }
        
    }
    
    /*
        Model: sectionSchema
    */

    struct sectionSchema: Codable {
        
        
        public var pageKey: String?
        
        public var pageSections: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case pageKey = "page_key"
            
            case pageSections = "page_sections"
            
        }

        public init(pageKey: String?, pageSections: [[String: Any]]?) {
            
            self.pageKey = pageKey
            
            self.pageSections = pageSections
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            pageKey = try? container.decode(String.self, forKey: .pageKey)
            
            pageSections = try? container.decode([[String: Any]].self, forKey: .pageSections)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(pageKey, forKey: .pageKey)
            
            try? container.encodeIfPresent(pageSections, forKey: .pageSections)
            
        }
        
    }
    
    
    
    /*
        Model: EditEmailRequestSchema
    */

    struct EditEmailRequestSchema: Codable {
        
        
        public var email: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
        }

        public init(email: String?) {
            
            self.email = email
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            email = try? container.decode(String.self, forKey: .email)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
        }
        
    }
    
    /*
        Model: SendVerificationLinkMobileRequestSchema
    */

    struct SendVerificationLinkMobileRequestSchema: Codable {
        
        
        public var verified: Bool?
        
        public var active: Bool?
        
        public var countryCode: String?
        
        public var phone: String?
        
        public var primary: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case verified = "verified"
            
            case active = "active"
            
            case countryCode = "country_code"
            
            case phone = "phone"
            
            case primary = "primary"
            
        }

        public init(verified: Bool?, active: Bool?, countryCode: String?, phone: String?, primary: Bool?) {
            
            self.verified = verified
            
            self.active = active
            
            self.countryCode = countryCode
            
            self.phone = phone
            
            self.primary = primary
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            verified = try? container.decode(Bool.self, forKey: .verified)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            phone = try? container.decode(String.self, forKey: .phone)
            
            primary = try? container.decode(Bool.self, forKey: .primary)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(primary, forKey: .primary)
            
        }
        
    }
    
    /*
        Model: EditMobileRequestSchema
    */

    struct EditMobileRequestSchema: Codable {
        
        
        public var countryCode: String?
        
        public var phone: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case phone = "phone"
            
        }

        public init(countryCode: String?, phone: String?) {
            
            self.countryCode = countryCode
            
            self.phone = phone
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            phone = try? container.decode(String.self, forKey: .phone)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
        }
        
    }
    
    /*
        Model: EditProfileRequestSchema
    */

    struct EditProfileRequestSchema: Codable {
        
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var mobile: String?
        
        public var email: String?
        
        public var gender: String?
        
        public var dob: String?
        
        public var profilePicUrl: String?
        
        public var androidHash: String?
        
        public var sender: String?
        
        public var registerToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case mobile = "mobile"
            
            case email = "email"
            
            case gender = "gender"
            
            case dob = "dob"
            
            case profilePicUrl = "profile_pic_url"
            
            case androidHash = "androidHash"
            
            case sender = "sender"
            
            case registerToken = "register_token"
            
        }

        public init(firstName: String?, lastName: String?, mobile: String?, email: String?, gender: String?, dob: String?, profilePicUrl: String?, androidHash: String?, sender: String?, registerToken: String?) {
            
            self.firstName = firstName
            
            self.lastName = lastName
            
            self.mobile = mobile
            
            self.email = email
            
            self.gender = gender
            
            self.dob = dob
            
            self.profilePicUrl = profilePicUrl
            
            self.androidHash = androidHash
            
            self.sender = sender
            
            self.registerToken = registerToken
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            firstName = try? container.decode(String.self, forKey: .firstName)
            
            lastName = try? container.decode(String.self, forKey: .lastName)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
            email = try? container.decode(String.self, forKey: .email)
            
            gender = try? container.decode(String.self, forKey: .gender)
            
            dob = try? container.decode(String.self, forKey: .dob)
            
            profilePicUrl = try? container.decode(String.self, forKey: .profilePicUrl)
            
            androidHash = try? container.decode(String.self, forKey: .androidHash)
            
            sender = try? container.decode(String.self, forKey: .sender)
            
            registerToken = try? container.decode(String.self, forKey: .registerToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            try? container.encodeIfPresent(dob, forKey: .dob)
            
            try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
            
            try? container.encodeIfPresent(androidHash, forKey: .androidHash)
            
            try? container.encodeIfPresent(sender, forKey: .sender)
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
        }
        
    }
    
    /*
        Model: SendEmailOtpRequestSchema
    */

    struct SendEmailOtpRequestSchema: Codable {
        
        
        public var email: String?
        
        public var action: String?
        
        public var token: String?
        
        public var registerToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case action = "action"
            
            case token = "token"
            
            case registerToken = "register_token"
            
        }

        public init(email: String?, action: String?, token: String?, registerToken: String?) {
            
            self.email = email
            
            self.action = action
            
            self.token = token
            
            self.registerToken = registerToken
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            email = try? container.decode(String.self, forKey: .email)
            
            action = try? container.decode(String.self, forKey: .action)
            
            token = try? container.decode(String.self, forKey: .token)
            
            registerToken = try? container.decode(String.self, forKey: .registerToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
        }
        
    }
    
    /*
        Model: VerifyOtpRequestSchema
    */

    struct VerifyOtpRequestSchema: Codable {
        
        
        public var requestId: String?
        
        public var registerToken: String?
        
        public var otp: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
            case registerToken = "register_token"
            
            case otp = "otp"
            
        }

        public init(requestId: String?, registerToken: String?, otp: String?) {
            
            self.requestId = requestId
            
            self.registerToken = registerToken
            
            self.otp = otp
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            requestId = try? container.decode(String.self, forKey: .requestId)
            
            registerToken = try? container.decode(String.self, forKey: .registerToken)
            
            otp = try? container.decode(String.self, forKey: .otp)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
        }
        
    }
    
    /*
        Model: SendMobileOtpRequestSchema
    */

    struct SendMobileOtpRequestSchema: Codable {
        
        
        public var mobile: String?
        
        public var countryCode: String?
        
        public var action: String?
        
        public var token: String?
        
        public var androidHash: String?
        
        public var force: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case mobile = "mobile"
            
            case countryCode = "country_code"
            
            case action = "action"
            
            case token = "token"
            
            case androidHash = "androidHash"
            
            case force = "force"
            
        }

        public init(mobile: String?, countryCode: String?, action: String?, token: String?, androidHash: String?, force: String?) {
            
            self.mobile = mobile
            
            self.countryCode = countryCode
            
            self.action = action
            
            self.token = token
            
            self.androidHash = androidHash
            
            self.force = force
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            action = try? container.decode(String.self, forKey: .action)
            
            token = try? container.decode(String.self, forKey: .token)
            
            androidHash = try? container.decode(String.self, forKey: .androidHash)
            
            force = try? container.decode(String.self, forKey: .force)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            try? container.encodeIfPresent(androidHash, forKey: .androidHash)
            
            try? container.encodeIfPresent(force, forKey: .force)
            
        }
        
    }
    
    /*
        Model: UpdatePasswordRequestSchema
    */

    struct UpdatePasswordRequestSchema: Codable {
        
        
        public var oldPassword: String?
        
        public var newPassword: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case oldPassword = "old_password"
            
            case newPassword = "new_password"
            
        }

        public init(oldPassword: String?, newPassword: String?) {
            
            self.oldPassword = oldPassword
            
            self.newPassword = newPassword
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            oldPassword = try? container.decode(String.self, forKey: .oldPassword)
            
            newPassword = try? container.decode(String.self, forKey: .newPassword)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(oldPassword, forKey: .oldPassword)
            
            try? container.encodeIfPresent(newPassword, forKey: .newPassword)
            
        }
        
    }
    
    /*
        Model: FormRegisterRequestSchema
    */

    struct FormRegisterRequestSchema: Codable {
        
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var gender: String?
        
        public var email: String?
        
        public var password: String?
        
        public var phone: [String: Any]?
        
        public var registerToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case gender = "gender"
            
            case email = "email"
            
            case password = "password"
            
            case phone = "phone"
            
            case registerToken = "register_token"
            
        }

        public init(firstName: String?, lastName: String?, gender: String?, email: String?, password: String?, phone: [String: Any]?, registerToken: String?) {
            
            self.firstName = firstName
            
            self.lastName = lastName
            
            self.gender = gender
            
            self.email = email
            
            self.password = password
            
            self.phone = phone
            
            self.registerToken = registerToken
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            firstName = try? container.decode(String.self, forKey: .firstName)
            
            lastName = try? container.decode(String.self, forKey: .lastName)
            
            gender = try? container.decode(String.self, forKey: .gender)
            
            email = try? container.decode(String.self, forKey: .email)
            
            password = try? container.decode(String.self, forKey: .password)
            
            phone = try? container.decode([String: Any].self, forKey: .phone)
            
            registerToken = try? container.decode(String.self, forKey: .registerToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
        }
        
    }
    
    /*
        Model: TokenRequestBodySchema
    */

    struct TokenRequestBodySchema: Codable {
        
        
        public var token: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case token = "token"
            
        }

        public init(token: String?) {
            
            self.token = token
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            token = try? container.decode(String.self, forKey: .token)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(token, forKey: .token)
            
        }
        
    }
    
    /*
        Model: ForgotPasswordRequestSchema
    */

    struct ForgotPasswordRequestSchema: Codable {
        
        
        public var code: String?
        
        public var password: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case password = "password"
            
        }

        public init(code: String?, password: String?) {
            
            self.code = code
            
            self.password = password
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(String.self, forKey: .code)
            
            password = try? container.decode(String.self, forKey: .password)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
        }
        
    }
    
    /*
        Model: CodeRequestBodySchema
    */

    struct CodeRequestBodySchema: Codable {
        
        
        public var code: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
        }

        public init(code: String?) {
            
            self.code = code
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(String.self, forKey: .code)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
        }
        
    }
    
    /*
        Model: SendResetPasswordEmailRequestSchema
    */

    struct SendResetPasswordEmailRequestSchema: Codable {
        
        
        public var email: String?
        
        public var gRecaptchaResponse: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case gRecaptchaResponse = "g-recaptcha-response"
            
        }

        public init(email: String?, gRecaptchaResponse: String?) {
            
            self.email = email
            
            self.gRecaptchaResponse = gRecaptchaResponse
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            email = try? container.decode(String.self, forKey: .email)
            
            gRecaptchaResponse = try? container.decode(String.self, forKey: .gRecaptchaResponse)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(gRecaptchaResponse, forKey: .gRecaptchaResponse)
            
        }
        
    }
    
    /*
        Model: PasswordLoginRequestSchema
    */

    struct PasswordLoginRequestSchema: Codable {
        
        
        public var gRecaptchaResponse: String?
        
        public var password: String?
        
        public var username: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case gRecaptchaResponse = "g-recaptcha-response"
            
            case password = "password"
            
            case username = "username"
            
        }

        public init(gRecaptchaResponse: String?, password: String?, username: String?) {
            
            self.gRecaptchaResponse = gRecaptchaResponse
            
            self.password = password
            
            self.username = username
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            gRecaptchaResponse = try? container.decode(String.self, forKey: .gRecaptchaResponse)
            
            password = try? container.decode(String.self, forKey: .password)
            
            username = try? container.decode(String.self, forKey: .username)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(gRecaptchaResponse, forKey: .gRecaptchaResponse)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
        }
        
    }
    
    /*
        Model: SendOtpRequestSchema
    */

    struct SendOtpRequestSchema: Codable {
        
        
        public var countryCode: String?
        
        public var gRecaptchaResponse: String?
        
        public var mobile: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case gRecaptchaResponse = "g-recaptcha-response"
            
            case mobile = "mobile"
            
        }

        public init(countryCode: String?, gRecaptchaResponse: String?, mobile: String?) {
            
            self.countryCode = countryCode
            
            self.gRecaptchaResponse = gRecaptchaResponse
            
            self.mobile = mobile
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            gRecaptchaResponse = try? container.decode(String.self, forKey: .gRecaptchaResponse)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(gRecaptchaResponse, forKey: .gRecaptchaResponse)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
        }
        
    }
    
    /*
        Model: OAuthRequestSchema
    */

    struct OAuthRequestSchema: Codable {
        
        
        public var isSignedIn: Bool?
        
        public var oauth2: [String: Any]?
        
        public var profile: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isSignedIn = "is_signed_in"
            
            case oauth2 = "oauth2"
            
            case profile = "profile"
            
        }

        public init(isSignedIn: Bool?, oauth2: [String: Any]?, profile: [String: Any]?) {
            
            self.isSignedIn = isSignedIn
            
            self.oauth2 = oauth2
            
            self.profile = profile
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isSignedIn = try? container.decode(Bool.self, forKey: .isSignedIn)
            
            oauth2 = try? container.decode([String: Any].self, forKey: .oauth2)
            
            profile = try? container.decode([String: Any].self, forKey: .profile)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isSignedIn, forKey: .isSignedIn)
            
            try? container.encodeIfPresent(oauth2, forKey: .oauth2)
            
            try? container.encodeIfPresent(profile, forKey: .profile)
            
        }
        
    }
    
    /*
        Model: AuthSuccess
    */

    struct AuthSuccess: Codable {
        
        
        public var registerToken: String?
        
        public var userExists: Bool?
        
        public var user: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case registerToken = "register_token"
            
            case userExists = "user_exists"
            
            case user = "user"
            
        }

        public init(registerToken: String?, userExists: Bool?, user: [String: Any]?) {
            
            self.registerToken = registerToken
            
            self.userExists = userExists
            
            self.user = user
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            registerToken = try? container.decode(String.self, forKey: .registerToken)
            
            userExists = try? container.decode(Bool.self, forKey: .userExists)
            
            user = try? container.decode([String: Any].self, forKey: .user)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
            try? container.encodeIfPresent(userExists, forKey: .userExists)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
        }
        
    }
    
    /*
        Model: SendOtpResponse
    */

    struct SendOtpResponse: Codable {
        
        
        public var resendTimer: Int?
        
        public var resendToken: String?
        
        public var success: Bool?
        
        public var requestId: String?
        
        public var message: String?
        
        public var mobile: String?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case resendTimer = "resend_timer"
            
            case resendToken = "resend_token"
            
            case success = "success"
            
            case requestId = "request_id"
            
            case message = "message"
            
            case mobile = "mobile"
            
            case countryCode = "country_code"
            
        }

        public init(resendTimer: Int?, resendToken: String?, success: Bool?, requestId: String?, message: String?, mobile: String?, countryCode: String?) {
            
            self.resendTimer = resendTimer
            
            self.resendToken = resendToken
            
            self.success = success
            
            self.requestId = requestId
            
            self.message = message
            
            self.mobile = mobile
            
            self.countryCode = countryCode
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            resendTimer = try? container.decode(Int.self, forKey: .resendTimer)
            
            resendToken = try? container.decode(String.self, forKey: .resendToken)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            requestId = try? container.decode(String.self, forKey: .requestId)
            
            message = try? container.decode(String.self, forKey: .message)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
            
            try? container.encodeIfPresent(resendToken, forKey: .resendToken)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
        }
        
    }
    
    /*
        Model: LoginSuccess
    */

    struct LoginSuccess: Codable {
        
        
        public var user: UserSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
        }

        public init(user: UserSchema?) {
            
            self.user = user
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            user = try? container.decode(UserSchema.self, forKey: .user)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
        }
        
    }
    
    /*
        Model: VerifyOtpSuccess
    */

    struct VerifyOtpSuccess: Codable {
        
        
        public var user: UserSchema?
        
        public var userExists: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
            case userExists = "userExists"
            
        }

        public init(user: UserSchema?, userExists: Bool?) {
            
            self.user = user
            
            self.userExists = userExists
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            user = try? container.decode(UserSchema.self, forKey: .user)
            
            userExists = try? container.decode(Bool.self, forKey: .userExists)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            try? container.encodeIfPresent(userExists, forKey: .userExists)
            
        }
        
    }
    
    /*
        Model: ResetPasswordSuccess
    */

    struct ResetPasswordSuccess: Codable {
        
        
        public var status: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
        }

        public init(status: String?) {
            
            self.status = status
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            status = try? container.decode(String.self, forKey: .status)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
        }
        
    }
    
    /*
        Model: RegisterFormSuccess
    */

    struct RegisterFormSuccess: Codable {
        
        
        public var resendTimer: Int?
        
        public var resendToken: String?
        
        public var success: Bool?
        
        public var requestId: String?
        
        public var message: String?
        
        public var mobile: String?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case resendTimer = "resend_timer"
            
            case resendToken = "resend_token"
            
            case success = "success"
            
            case requestId = "request_id"
            
            case message = "message"
            
            case mobile = "mobile"
            
            case countryCode = "country_code"
            
        }

        public init(resendTimer: Int?, resendToken: String?, success: Bool?, requestId: String?, message: String?, mobile: String?, countryCode: String?) {
            
            self.resendTimer = resendTimer
            
            self.resendToken = resendToken
            
            self.success = success
            
            self.requestId = requestId
            
            self.message = message
            
            self.mobile = mobile
            
            self.countryCode = countryCode
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            resendTimer = try? container.decode(Int.self, forKey: .resendTimer)
            
            resendToken = try? container.decode(String.self, forKey: .resendToken)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            requestId = try? container.decode(String.self, forKey: .requestId)
            
            message = try? container.decode(String.self, forKey: .message)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
            
            try? container.encodeIfPresent(resendToken, forKey: .resendToken)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
        }
        
    }
    
    /*
        Model: VerifyEmailSuccess
    */

    struct VerifyEmailSuccess: Codable {
        
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(message: String?) {
            
            self.message = message
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: HasPasswordSuccess
    */

    struct HasPasswordSuccess: Codable {
        
        
        public var result: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case result = "result"
            
        }

        public init(result: Bool?) {
            
            self.result = result
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            result = try? container.decode(Bool.self, forKey: .result)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(result, forKey: .result)
            
        }
        
    }
    
    /*
        Model: LogoutSuccess
    */

    struct LogoutSuccess: Codable {
        
        
        public var logout: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case logout = "logout"
            
        }

        public init(logout: Bool?) {
            
            self.logout = logout
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            logout = try? container.decode(Bool.self, forKey: .logout)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(logout, forKey: .logout)
            
        }
        
    }
    
    /*
        Model: OtpSuccess
    */

    struct OtpSuccess: Codable {
        
        
        public var resendTimer: Int?
        
        public var resendToken: String?
        
        public var success: Bool?
        
        public var requestId: String?
        
        public var message: String?
        
        public var mobile: String?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case resendTimer = "resend_timer"
            
            case resendToken = "resend_token"
            
            case success = "success"
            
            case requestId = "request_id"
            
            case message = "message"
            
            case mobile = "mobile"
            
            case countryCode = "country_code"
            
        }

        public init(resendTimer: Int?, resendToken: String?, success: Bool?, requestId: String?, message: String?, mobile: String?, countryCode: String?) {
            
            self.resendTimer = resendTimer
            
            self.resendToken = resendToken
            
            self.success = success
            
            self.requestId = requestId
            
            self.message = message
            
            self.mobile = mobile
            
            self.countryCode = countryCode
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            resendTimer = try? container.decode(Int.self, forKey: .resendTimer)
            
            resendToken = try? container.decode(String.self, forKey: .resendToken)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            requestId = try? container.decode(String.self, forKey: .requestId)
            
            message = try? container.decode(String.self, forKey: .message)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
            
            try? container.encodeIfPresent(resendToken, forKey: .resendToken)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
        }
        
    }
    
    /*
        Model: EmailOtpSuccess
    */

    struct EmailOtpSuccess: Codable {
        
        
        public var resendToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case resendToken = "resend_token"
            
        }

        public init(resendToken: String?) {
            
            self.resendToken = resendToken
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            resendToken = try? container.decode(String.self, forKey: .resendToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(resendToken, forKey: .resendToken)
            
        }
        
    }
    
    /*
        Model: SessionListSuccess
    */

    struct SessionListSuccess: Codable {
        
        
        public var sessions: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sessions = "sessions"
            
        }

        public init(sessions: [String]?) {
            
            self.sessions = sessions
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            sessions = try? container.decode([String].self, forKey: .sessions)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(sessions, forKey: .sessions)
            
        }
        
    }
    
    /*
        Model: VerifyMobileOTPSuccess
    */

    struct VerifyMobileOTPSuccess: Codable {
        
        
        public var user: UserSchema?
        
        public var verifyMobileLink: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
            case verifyMobileLink = "verify_mobile_link"
            
        }

        public init(user: UserSchema?, verifyMobileLink: Bool?) {
            
            self.user = user
            
            self.verifyMobileLink = verifyMobileLink
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            user = try? container.decode(UserSchema.self, forKey: .user)
            
            verifyMobileLink = try? container.decode(Bool.self, forKey: .verifyMobileLink)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            try? container.encodeIfPresent(verifyMobileLink, forKey: .verifyMobileLink)
            
        }
        
    }
    
    /*
        Model: VerifyEmailOTPSuccess
    */

    struct VerifyEmailOTPSuccess: Codable {
        
        
        public var user: UserSchema?
        
        public var verifyEmailLink: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
            case verifyEmailLink = "verify_email_link"
            
        }

        public init(user: UserSchema?, verifyEmailLink: Bool?) {
            
            self.user = user
            
            self.verifyEmailLink = verifyEmailLink
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            user = try? container.decode(UserSchema.self, forKey: .user)
            
            verifyEmailLink = try? container.decode(Bool.self, forKey: .verifyEmailLink)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            try? container.encodeIfPresent(verifyEmailLink, forKey: .verifyEmailLink)
            
        }
        
    }
    
    /*
        Model: SendMobileVerifyLinkSuccess
    */

    struct SendMobileVerifyLinkSuccess: Codable {
        
        
        public var verifyMobileLink: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case verifyMobileLink = "verify_mobile_link"
            
        }

        public init(verifyMobileLink: Bool?) {
            
            self.verifyMobileLink = verifyMobileLink
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            verifyMobileLink = try? container.decode(Bool.self, forKey: .verifyMobileLink)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(verifyMobileLink, forKey: .verifyMobileLink)
            
        }
        
    }
    
    /*
        Model: SendEmailVerifyLinkSuccess
    */

    struct SendEmailVerifyLinkSuccess: Codable {
        
        
        public var verifyEmailLink: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case verifyEmailLink = "verify_email_link"
            
        }

        public init(verifyEmailLink: Bool?) {
            
            self.verifyEmailLink = verifyEmailLink
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            verifyEmailLink = try? container.decode(Bool.self, forKey: .verifyEmailLink)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(verifyEmailLink, forKey: .verifyEmailLink)
            
        }
        
    }
    
    /*
        Model: UserSearchResponseSchema
    */

    struct UserSearchResponseSchema: Codable {
        
    }
    
    /*
        Model: CustomerListResponseSchema
    */

    struct CustomerListResponseSchema: Codable {
        
        
        public var items: [UserSchema]?
        
        public var page: PaginationSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [UserSchema]?, page: PaginationSchema?) {
            
            self.items = items
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([UserSchema].self, forKey: .items)
            
            page = try? container.decode(PaginationSchema.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: PlatformSchema
    */

    struct PlatformSchema: Codable {
        
        
        public var display: String?
        
        public var lookAndFeel: [String: Any]?
        
        public var updatedAt: String?
        
        public var active: Bool?
        
        public var forgotPassword: Bool?
        
        public var login: [String: Any]?
        
        public var skipCaptcha: Bool?
        
        public var name: String?
        
        public var meta: [String: Any]?
        
        public var id: String?
        
        public var social: [String: Any]?
        
        public var requiredFields: [String: Any]?
        
        public var registerRequiredFields: [String: Any]?
        
        public var skipLogin: Bool?
        
        public var flashCard: [String: Any]?
        
        public var subtext: String?
        
        public var socialTokens: [String: Any]?
        
        public var createdAt: String?
        
        public var register: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case lookAndFeel = "look_and_feel"
            
            case updatedAt = "updated_at"
            
            case active = "active"
            
            case forgotPassword = "forgot_password"
            
            case login = "login"
            
            case skipCaptcha = "skip_captcha"
            
            case name = "name"
            
            case meta = "meta"
            
            case id = "_id"
            
            case social = "social"
            
            case requiredFields = "required_fields"
            
            case registerRequiredFields = "register_required_fields"
            
            case skipLogin = "skip_login"
            
            case flashCard = "flash_card"
            
            case subtext = "subtext"
            
            case socialTokens = "social_tokens"
            
            case createdAt = "created_at"
            
            case register = "register"
            
        }

        public init(display: String?, lookAndFeel: [String: Any]?, updatedAt: String?, active: Bool?, forgotPassword: Bool?, login: [String: Any]?, skipCaptcha: Bool?, name: String?, meta: [String: Any]?, id: String?, social: [String: Any]?, requiredFields: [String: Any]?, registerRequiredFields: [String: Any]?, skipLogin: Bool?, flashCard: [String: Any]?, subtext: String?, socialTokens: [String: Any]?, createdAt: String?, register: Bool?) {
            
            self.display = display
            
            self.lookAndFeel = lookAndFeel
            
            self.updatedAt = updatedAt
            
            self.active = active
            
            self.forgotPassword = forgotPassword
            
            self.login = login
            
            self.skipCaptcha = skipCaptcha
            
            self.name = name
            
            self.meta = meta
            
            self.id = id
            
            self.social = social
            
            self.requiredFields = requiredFields
            
            self.registerRequiredFields = registerRequiredFields
            
            self.skipLogin = skipLogin
            
            self.flashCard = flashCard
            
            self.subtext = subtext
            
            self.socialTokens = socialTokens
            
            self.createdAt = createdAt
            
            self.register = register
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            display = try? container.decode(String.self, forKey: .display)
            
            lookAndFeel = try? container.decode([String: Any].self, forKey: .lookAndFeel)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            forgotPassword = try? container.decode(Bool.self, forKey: .forgotPassword)
            
            login = try? container.decode([String: Any].self, forKey: .login)
            
            skipCaptcha = try? container.decode(Bool.self, forKey: .skipCaptcha)
            
            name = try? container.decode(String.self, forKey: .name)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            id = try? container.decode(String.self, forKey: .id)
            
            social = try? container.decode([String: Any].self, forKey: .social)
            
            requiredFields = try? container.decode([String: Any].self, forKey: .requiredFields)
            
            registerRequiredFields = try? container.decode([String: Any].self, forKey: .registerRequiredFields)
            
            skipLogin = try? container.decode(Bool.self, forKey: .skipLogin)
            
            flashCard = try? container.decode([String: Any].self, forKey: .flashCard)
            
            subtext = try? container.decode(String.self, forKey: .subtext)
            
            socialTokens = try? container.decode([String: Any].self, forKey: .socialTokens)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            register = try? container.decode(Bool.self, forKey: .register)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(lookAndFeel, forKey: .lookAndFeel)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(forgotPassword, forKey: .forgotPassword)
            
            try? container.encodeIfPresent(login, forKey: .login)
            
            try? container.encodeIfPresent(skipCaptcha, forKey: .skipCaptcha)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(social, forKey: .social)
            
            try? container.encodeIfPresent(requiredFields, forKey: .requiredFields)
            
            try? container.encodeIfPresent(registerRequiredFields, forKey: .registerRequiredFields)
            
            try? container.encodeIfPresent(skipLogin, forKey: .skipLogin)
            
            try? container.encodeIfPresent(flashCard, forKey: .flashCard)
            
            try? container.encodeIfPresent(subtext, forKey: .subtext)
            
            try? container.encodeIfPresent(socialTokens, forKey: .socialTokens)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(register, forKey: .register)
            
        }
        
    }
    
    /*
        Model: UserSchema
    */

    struct UserSchema: Codable {
        
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var phoneNumbers: [[String: Any]]?
        
        public var emails: [[String: Any]]?
        
        public var gender: String?
        
        public var active: Bool?
        
        public var profilePicUrl: String?
        
        public var username: String?
        
        public var accountType: String?
        
        public var uid: String?
        
        public var debug: [String: Any]?
        
        public var hasOldPasswordHash: Bool?
        
        public var id: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case phoneNumbers = "phone_numbers"
            
            case emails = "emails"
            
            case gender = "gender"
            
            case active = "active"
            
            case profilePicUrl = "profile_pic_url"
            
            case username = "username"
            
            case accountType = "account_type"
            
            case uid = "uid"
            
            case debug = "debug"
            
            case hasOldPasswordHash = "has_old_password_hash"
            
            case id = "_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
        }

        public init(firstName: String?, lastName: String?, phoneNumbers: [[String: Any]]?, emails: [[String: Any]]?, gender: String?, active: Bool?, profilePicUrl: String?, username: String?, accountType: String?, uid: String?, debug: [String: Any]?, hasOldPasswordHash: Bool?, id: String?, createdAt: String?, updatedAt: String?) {
            
            self.firstName = firstName
            
            self.lastName = lastName
            
            self.phoneNumbers = phoneNumbers
            
            self.emails = emails
            
            self.gender = gender
            
            self.active = active
            
            self.profilePicUrl = profilePicUrl
            
            self.username = username
            
            self.accountType = accountType
            
            self.uid = uid
            
            self.debug = debug
            
            self.hasOldPasswordHash = hasOldPasswordHash
            
            self.id = id
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            firstName = try? container.decode(String.self, forKey: .firstName)
            
            lastName = try? container.decode(String.self, forKey: .lastName)
            
            phoneNumbers = try? container.decode([[String: Any]].self, forKey: .phoneNumbers)
            
            emails = try? container.decode([[String: Any]].self, forKey: .emails)
            
            gender = try? container.decode(String.self, forKey: .gender)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            profilePicUrl = try? container.decode(String.self, forKey: .profilePicUrl)
            
            username = try? container.decode(String.self, forKey: .username)
            
            accountType = try? container.decode(String.self, forKey: .accountType)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            debug = try? container.decode([String: Any].self, forKey: .debug)
            
            hasOldPasswordHash = try? container.decode(Bool.self, forKey: .hasOldPasswordHash)
            
            id = try? container.decode(String.self, forKey: .id)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            try? container.encodeIfPresent(phoneNumbers, forKey: .phoneNumbers)
            
            try? container.encodeIfPresent(emails, forKey: .emails)
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(accountType, forKey: .accountType)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(debug, forKey: .debug)
            
            try? container.encodeIfPresent(hasOldPasswordHash, forKey: .hasOldPasswordHash)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
        }
        
    }
    
    
    
    /*
        Model: ApplicationLegal
    */

    struct ApplicationLegal: Codable {
        
        
        public var application: String?
        
        public var tnc: String?
        
        public var policy: String?
        
        public var faq: [[String: Any]]?
        
        public var id: String?
        
        public var updatedAt: String?
        
        public var createdAt: String?
        
        public var v: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case tnc = "tnc"
            
            case policy = "policy"
            
            case faq = "faq"
            
            case id = "_id"
            
            case updatedAt = "updatedAt"
            
            case createdAt = "createdAt"
            
            case v = "__v"
            
        }

        public init(application: String?, tnc: String?, policy: String?, faq: [[String: Any]]?, id: String?, updatedAt: String?, createdAt: String?, v: Double?) {
            
            self.application = application
            
            self.tnc = tnc
            
            self.policy = policy
            
            self.faq = faq
            
            self.id = id
            
            self.updatedAt = updatedAt
            
            self.createdAt = createdAt
            
            self.v = v
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            application = try? container.decode(String.self, forKey: .application)
            
            tnc = try? container.decode(String.self, forKey: .tnc)
            
            policy = try? container.decode(String.self, forKey: .policy)
            
            faq = try? container.decode([[String: Any]].self, forKey: .faq)
            
            id = try? container.decode(String.self, forKey: .id)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            v = try? container.decode(Double.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(tnc, forKey: .tnc)
            
            try? container.encodeIfPresent(policy, forKey: .policy)
            
            try? container.encodeIfPresent(faq, forKey: .faq)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: Seo
    */

    struct Seo: Codable {
        
        
        public var app: String
        
        public var robotsTxt: String?
        
        public var sitemapEnabled: Bool?
        
        public var customMetaTags: [[String: Any]]?
        
        public var details: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case app = "app"
            
            case robotsTxt = "robots_txt"
            
            case sitemapEnabled = "sitemap_enabled"
            
            case customMetaTags = "custom_meta_tags"
            
            case details = "details"
            
        }

        public init(app: String, robotsTxt: String?, sitemapEnabled: Bool?, customMetaTags: [[String: Any]]?, details: [String: Any]?) {
            
            self.app = app
            
            self.robotsTxt = robotsTxt
            
            self.sitemapEnabled = sitemapEnabled
            
            self.customMetaTags = customMetaTags
            
            self.details = details
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            app = try container.decode(String.self, forKey: .app)
            
            robotsTxt = try? container.decode(String.self, forKey: .robotsTxt)
            
            sitemapEnabled = try? container.decode(Bool.self, forKey: .sitemapEnabled)
            
            customMetaTags = try? container.decode([[String: Any]].self, forKey: .customMetaTags)
            
            details = try? container.decode([String: Any].self, forKey: .details)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(app, forKey: .app)
            
            try? container.encodeIfPresent(robotsTxt, forKey: .robotsTxt)
            
            try? container.encodeIfPresent(sitemapEnabled, forKey: .sitemapEnabled)
            
            try? container.encodeIfPresent(customMetaTags, forKey: .customMetaTags)
            
            try? container.encodeIfPresent(details, forKey: .details)
            
        }
        
    }
    
    /*
        Model: StorefrontAnnouncement
    */

    struct StorefrontAnnouncement: Codable {
        
        
        public var announcements: [String: Any]?
        
        public var refreshRate: Int?
        
        public var refreshPages: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case announcements = "announcements"
            
            case refreshRate = "refresh_rate"
            
            case refreshPages = "refresh_pages"
            
        }

        public init(announcements: [String: Any]?, refreshRate: Int?, refreshPages: [String]?) {
            
            self.announcements = announcements
            
            self.refreshRate = refreshRate
            
            self.refreshPages = refreshPages
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            announcements = try? container.decode([String: Any].self, forKey: .announcements)
            
            refreshRate = try? container.decode(Int.self, forKey: .refreshRate)
            
            refreshPages = try? container.decode([String].self, forKey: .refreshPages)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(announcements, forKey: .announcements)
            
            try? container.encodeIfPresent(refreshRate, forKey: .refreshRate)
            
            try? container.encodeIfPresent(refreshPages, forKey: .refreshPages)
            
        }
        
    }
    
    /*
        Model: AdminAnnouncementSchema
    */

    struct AdminAnnouncementSchema: Codable {
        
        
        public var id: String?
        
        public var platform: [String]?
        
        public var title: String?
        
        public var announcement: String?
        
        public var pages: [[String: Any]]?
        
        public var editorMeta: [String: Any]?
        
        public var author: [String: Any]?
        
        public var createdAt: String?
        
        public var app: String?
        
        public var modifiedAt: String?
        
        public var schedule: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case platform = "platform"
            
            case title = "title"
            
            case announcement = "announcement"
            
            case pages = "pages"
            
            case editorMeta = "editor_meta"
            
            case author = "author"
            
            case createdAt = "created_at"
            
            case app = "app"
            
            case modifiedAt = "modified_at"
            
            case schedule = "_schedule"
            
        }

        public init(id: String?, platform: [String]?, title: String?, announcement: String?, pages: [[String: Any]]?, editorMeta: [String: Any]?, author: [String: Any]?, createdAt: String?, app: String?, modifiedAt: String?, schedule: [String: Any]?) {
            
            self.id = id
            
            self.platform = platform
            
            self.title = title
            
            self.announcement = announcement
            
            self.pages = pages
            
            self.editorMeta = editorMeta
            
            self.author = author
            
            self.createdAt = createdAt
            
            self.app = app
            
            self.modifiedAt = modifiedAt
            
            self.schedule = schedule
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            platform = try? container.decode([String].self, forKey: .platform)
            
            title = try? container.decode(String.self, forKey: .title)
            
            announcement = try? container.decode(String.self, forKey: .announcement)
            
            pages = try? container.decode([[String: Any]].self, forKey: .pages)
            
            editorMeta = try? container.decode([String: Any].self, forKey: .editorMeta)
            
            author = try? container.decode([String: Any].self, forKey: .author)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            app = try? container.decode(String.self, forKey: .app)
            
            modifiedAt = try? container.decode(String.self, forKey: .modifiedAt)
            
            schedule = try? container.decode([String: Any].self, forKey: .schedule)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(announcement, forKey: .announcement)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(editorMeta, forKey: .editorMeta)
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(app, forKey: .app)
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
        }
        
    }
    
    /*
        Model: ScheduleSchema
    */

    struct ScheduleSchema: Codable {
        
        
        public var schedule: [String: Any]?
        
        public var published: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case schedule = "schedule"
            
            case published = "published"
            
        }

        public init(schedule: [String: Any]?, published: Bool?) {
            
            self.schedule = schedule
            
            self.published = published
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            schedule = try? container.decode([String: Any].self, forKey: .schedule)
            
            published = try? container.decode(Bool.self, forKey: .published)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            try? container.encodeIfPresent(published, forKey: .published)
            
        }
        
    }
    
    /*
        Model: Components
    */

    struct Components: Codable {
        
        
        public var id: String?
        
        public var application: String?
        
        public var keyValues: [[String: Any]]?
        
        public var identifier: [String: Any]?
        
        public var dateMeta: [String: Any]?
        
        public var archived: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case application = "application"
            
            case keyValues = "key_values"
            
            case identifier = "identifier"
            
            case dateMeta = "date_meta"
            
            case archived = "archived"
            
        }

        public init(id: String?, application: String?, keyValues: [[String: Any]]?, identifier: [String: Any]?, dateMeta: [String: Any]?, archived: Bool?) {
            
            self.id = id
            
            self.application = application
            
            self.keyValues = keyValues
            
            self.identifier = identifier
            
            self.dateMeta = dateMeta
            
            self.archived = archived
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            application = try? container.decode(String.self, forKey: .application)
            
            keyValues = try? container.decode([[String: Any]].self, forKey: .keyValues)
            
            identifier = try? container.decode([String: Any].self, forKey: .identifier)
            
            dateMeta = try? container.decode([String: Any].self, forKey: .dateMeta)
            
            archived = try? container.decode(Bool.self, forKey: .archived)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(keyValues, forKey: .keyValues)
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            try? container.encodeIfPresent(archived, forKey: .archived)
            
        }
        
    }
    
    /*
        Model: KeyValueRequestBody
    */

    struct KeyValueRequestBody: Codable {
        
        
        public var keyValues: [[String: Any]]?
        
        public var identifier: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case keyValues = "key_values"
            
            case identifier = "identifier"
            
        }

        public init(keyValues: [[String: Any]]?, identifier: [String: Any]?) {
            
            self.keyValues = keyValues
            
            self.identifier = identifier
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            keyValues = try? container.decode([[String: Any]].self, forKey: .keyValues)
            
            identifier = try? container.decode([String: Any].self, forKey: .identifier)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(keyValues, forKey: .keyValues)
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
        }
        
    }
    
    /*
        Model: GetAnnouncementListSchema
    */

    struct GetAnnouncementListSchema: Codable {
        
        
        public var items: [AdminAnnouncementSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(items: [AdminAnnouncementSchema]?) {
            
            self.items = items
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([AdminAnnouncementSchema].self, forKey: .items)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
        }
        
    }
    
    /*
        Model: CreateAnnouncementSchema
    */

    struct CreateAnnouncementSchema: Codable {
        
        
        public var message: String?
        
        public var data: AdminAnnouncementSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case data = "data"
            
        }

        public init(message: String?, data: AdminAnnouncementSchema?) {
            
            self.message = message
            
            self.data = data
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            data = try? container.decode(AdminAnnouncementSchema.self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: FaqSchema
    */

    struct FaqSchema: Codable {
        
        
        public var slug: String?
        
        public var application: String?
        
        public var v: Int?
        
        public var id: String?
        
        public var question: String?
        
        public var answer: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case application = "application"
            
            case v = "__v"
            
            case id = "_id"
            
            case question = "question"
            
            case answer = "answer"
            
        }

        public init(slug: String?, application: String?, v: Int?, id: String?, question: String?, answer: String?) {
            
            self.slug = slug
            
            self.application = application
            
            self.v = v
            
            self.id = id
            
            self.question = question
            
            self.answer = answer
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            application = try? container.decode(String.self, forKey: .application)
            
            v = try? container.decode(Int.self, forKey: .v)
            
            id = try? container.decode(String.self, forKey: .id)
            
            question = try? container.decode(String.self, forKey: .question)
            
            answer = try? container.decode(String.self, forKey: .answer)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(question, forKey: .question)
            
            try? container.encodeIfPresent(answer, forKey: .answer)
            
        }
        
    }
    
    /*
        Model: CreateFaqResponseSchema
    */

    struct CreateFaqResponseSchema: Codable {
        
        
        public var faq: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case faq = "faq"
            
        }

        public init(faq: [String: Any]?) {
            
            self.faq = faq
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            faq = try? container.decode([String: Any].self, forKey: .faq)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(faq, forKey: .faq)
            
        }
        
    }
    
    /*
        Model: CreateFaqSchema
    */

    struct CreateFaqSchema: Codable {
        
        
        public var faq: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case faq = "faq"
            
        }

        public init(faq: [String: Any]?) {
            
            self.faq = faq
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            faq = try? container.decode([String: Any].self, forKey: .faq)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(faq, forKey: .faq)
            
        }
        
    }
    
    /*
        Model: GetFaqSchema
    */

    struct GetFaqSchema: Codable {
        
        
        public var faqs: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case faqs = "faqs"
            
        }

        public init(faqs: [[String: Any]]?) {
            
            self.faqs = faqs
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            faqs = try? container.decode([[String: Any]].self, forKey: .faqs)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(faqs, forKey: .faqs)
            
        }
        
    }
    
    /*
        Model: UpdateFaqCategoryRequestSchema
    */

    struct UpdateFaqCategoryRequestSchema: Codable {
        
        
        public var category: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
        }

        public init(category: [String: Any]?) {
            
            self.category = category
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            category = try? container.decode([String: Any].self, forKey: .category)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
        }
        
    }
    
    /*
        Model: CreateFaqCategoryRequestSchema
    */

    struct CreateFaqCategoryRequestSchema: Codable {
        
        
        public var category: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
        }

        public init(category: [String: Any]?) {
            
            self.category = category
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            category = try? container.decode([String: Any].self, forKey: .category)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
        }
        
    }
    
    /*
        Model: CreateFaqCategorySchema
    */

    struct CreateFaqCategorySchema: Codable {
        
        
        public var category: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
        }

        public init(category: [String: Any]?) {
            
            self.category = category
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            category = try? container.decode([String: Any].self, forKey: .category)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
        }
        
    }
    
    /*
        Model: GetFaqCategoriesSchema
    */

    struct GetFaqCategoriesSchema: Codable {
        
        
        public var categories: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case categories = "categories"
            
        }

        public init(categories: [[String: Any]]?) {
            
            self.categories = categories
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            categories = try? container.decode([[String: Any]].self, forKey: .categories)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
        }
        
    }
    
    /*
        Model: GetFaqCategoryByIdOrSlugSchema
    */

    struct GetFaqCategoryByIdOrSlugSchema: Codable {
        
        
        public var category: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
        }

        public init(category: [String: Any]?) {
            
            self.category = category
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            category = try? container.decode([String: Any].self, forKey: .category)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
        }
        
    }
    
    /*
        Model: Navigation
    */

    struct Navigation: Codable {
        
        
        public var name: String?
        
        public var slug: String?
        
        public var orientation: String?
        
        public var createdBy: [String: Any]?
        
        public var dateMeta: [String: Any]?
        
        public var id: String?
        
        public var position: String?
        
        public var application: String?
        
        public var platform: String?
        
        public var navigation: NavigationRef?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case orientation = "orientation"
            
            case createdBy = "created_by"
            
            case dateMeta = "date_meta"
            
            case id = "_id"
            
            case position = "position"
            
            case application = "application"
            
            case platform = "platform"
            
            case navigation = "navigation"
            
        }

        public init(name: String?, slug: String?, orientation: String?, createdBy: [String: Any]?, dateMeta: [String: Any]?, id: String?, position: String?, application: String?, platform: String?, navigation: NavigationRef?) {
            
            self.name = name
            
            self.slug = slug
            
            self.orientation = orientation
            
            self.createdBy = createdBy
            
            self.dateMeta = dateMeta
            
            self.id = id
            
            self.position = position
            
            self.application = application
            
            self.platform = platform
            
            self.navigation = navigation
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            orientation = try? container.decode(String.self, forKey: .orientation)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            dateMeta = try? container.decode([String: Any].self, forKey: .dateMeta)
            
            id = try? container.decode(String.self, forKey: .id)
            
            position = try? container.decode(String.self, forKey: .position)
            
            application = try? container.decode(String.self, forKey: .application)
            
            platform = try? container.decode(String.self, forKey: .platform)
            
            navigation = try? container.decode(NavigationRef.self, forKey: .navigation)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(orientation, forKey: .orientation)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            try? container.encodeIfPresent(navigation, forKey: .navigation)
            
        }
        
    }
    
    /*
        Model: NavigationRef
    */

    struct NavigationRef: Codable {
        
        
        public var acl: [[String: Any]]?
        
        public var localeLanguage: [String: Any]?
        
        public var image: String?
        
        public var type: String?
        
        public var action: [String: Any]?
        
        public var active: Bool?
        
        public var display: String?
        
        public var sortOrder: Int?
        
        public var subNavigation: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case acl = "acl"
            
            case localeLanguage = "_locale_language"
            
            case image = "image"
            
            case type = "type"
            
            case action = "action"
            
            case active = "active"
            
            case display = "display"
            
            case sortOrder = "sort_order"
            
            case subNavigation = "sub_navigation"
            
        }

        public init(acl: [[String: Any]]?, localeLanguage: [String: Any]?, image: String?, type: String?, action: [String: Any]?, active: Bool?, display: String?, sortOrder: Int?, subNavigation: [String: Any]?) {
            
            self.acl = acl
            
            self.localeLanguage = localeLanguage
            
            self.image = image
            
            self.type = type
            
            self.action = action
            
            self.active = active
            
            self.display = display
            
            self.sortOrder = sortOrder
            
            self.subNavigation = subNavigation
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            acl = try? container.decode([[String: Any]].self, forKey: .acl)
            
            localeLanguage = try? container.decode([String: Any].self, forKey: .localeLanguage)
            
            image = try? container.decode(String.self, forKey: .image)
            
            type = try? container.decode(String.self, forKey: .type)
            
            action = try? container.decode([String: Any].self, forKey: .action)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            display = try? container.decode(String.self, forKey: .display)
            
            sortOrder = try? container.decode(Int.self, forKey: .sortOrder)
            
            subNavigation = try? container.decode([String: Any].self, forKey: .subNavigation)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(acl, forKey: .acl)
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(sortOrder, forKey: .sortOrder)
            
            try? container.encodeIfPresent(subNavigation, forKey: .subNavigation)
            
        }
        
    }
    
    /*
        Model: LandingPage
    */

    struct LandingPage: Codable {
        
        
        public var slug: String?
        
        public var action: [String: Any]?
        
        public var platform: [[String: Any]]?
        
        public var createdBy: [String: Any]?
        
        public var dateMeta: [String: Any]?
        
        public var id: String?
        
        public var application: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case action = "action"
            
            case platform = "platform"
            
            case createdBy = "created_by"
            
            case dateMeta = "date_meta"
            
            case id = "_id"
            
            case application = "application"
            
        }

        public init(slug: String?, action: [String: Any]?, platform: [[String: Any]]?, createdBy: [String: Any]?, dateMeta: [String: Any]?, id: String?, application: String?) {
            
            self.slug = slug
            
            self.action = action
            
            self.platform = platform
            
            self.createdBy = createdBy
            
            self.dateMeta = dateMeta
            
            self.id = id
            
            self.application = application
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            action = try? container.decode([String: Any].self, forKey: .action)
            
            platform = try? container.decode([[String: Any]].self, forKey: .platform)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            dateMeta = try? container.decode([String: Any].self, forKey: .dateMeta)
            
            id = try? container.decode(String.self, forKey: .id)
            
            application = try? container.decode(String.self, forKey: .application)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
        }
        
    }
    
    /*
        Model: Slideshow
    */

    struct Slideshow: Codable {
        
        
        public var id: String?
        
        public var slug: String?
        
        public var dateMeta: [String: Any]?
        
        public var application: String?
        
        public var name: String?
        
        public var platform: String?
        
        public var configuration: [String: Any]?
        
        public var media: [[String: Any]]?
        
        public var active: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case slug = "slug"
            
            case dateMeta = "date_meta"
            
            case application = "application"
            
            case name = "name"
            
            case platform = "platform"
            
            case configuration = "configuration"
            
            case media = "media"
            
            case active = "active"
            
        }

        public init(id: String?, slug: String?, dateMeta: [String: Any]?, application: String?, name: String?, platform: String?, configuration: [String: Any]?, media: [[String: Any]]?, active: Bool?) {
            
            self.id = id
            
            self.slug = slug
            
            self.dateMeta = dateMeta
            
            self.application = application
            
            self.name = name
            
            self.platform = platform
            
            self.configuration = configuration
            
            self.media = media
            
            self.active = active
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            dateMeta = try? container.decode([String: Any].self, forKey: .dateMeta)
            
            application = try? container.decode(String.self, forKey: .application)
            
            name = try? container.decode(String.self, forKey: .name)
            
            platform = try? container.decode(String.self, forKey: .platform)
            
            configuration = try? container.decode([String: Any].self, forKey: .configuration)
            
            media = try? container.decode([[String: Any]].self, forKey: .media)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            try? container.encodeIfPresent(configuration, forKey: .configuration)
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
        }
        
    }
    
    /*
        Model: AnnouncementsResponseSchema
    */

    struct AnnouncementsResponseSchema: Codable {
        
        
        public var announcements: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case announcements = "announcements"
            
        }

        public init(announcements: [[String: Any]]?) {
            
            self.announcements = announcements
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            announcements = try? container.decode([[String: Any]].self, forKey: .announcements)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(announcements, forKey: .announcements)
            
        }
        
    }
    
    /*
        Model: FaqResponseSchema
    */

    struct FaqResponseSchema: Codable {
        
        
        public var faqs: [Faq]?
        

        public enum CodingKeys: String, CodingKey {
            
            case faqs = "faqs"
            
        }

        public init(faqs: [Faq]?) {
            
            self.faqs = faqs
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            faqs = try? container.decode([Faq].self, forKey: .faqs)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(faqs, forKey: .faqs)
            
        }
        
    }
    
    /*
        Model: UpdateHandpickedSchema
    */

    struct UpdateHandpickedSchema: Codable {
        
        
        public var tag: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case tag = "tag"
            
        }

        public init(tag: [String: Any]?) {
            
            self.tag = tag
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            tag = try? container.decode([String: Any].self, forKey: .tag)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(tag, forKey: .tag)
            
        }
        
    }
    
    /*
        Model: RemoveHandpickedSchema
    */

    struct RemoveHandpickedSchema: Codable {
        
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case tags = "tags"
            
        }

        public init(tags: [String]?) {
            
            self.tags = tags
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: TagsSchema
    */

    struct TagsSchema: Codable {
        
        
        public var id: String?
        
        public var tags: [[String: Any]]?
        
        public var application: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case tags = "tags"
            
            case application = "application"
            
            case v = "__v"
            
        }

        public init(id: String?, tags: [[String: Any]]?, application: String?, v: Int?) {
            
            self.id = id
            
            self.tags = tags
            
            self.application = application
            
            self.v = v
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            tags = try? container.decode([[String: Any]].self, forKey: .tags)
            
            application = try? container.decode(String.self, forKey: .application)
            
            v = try? container.decode(Int.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: CreateTagRequestSchema
    */

    struct CreateTagRequestSchema: Codable {
        
        
        public var tags: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case tags = "tags"
            
        }

        public init(tags: [[String: Any]]?) {
            
            self.tags = tags
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            tags = try? container.decode([[String: Any]].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: Faq
    */

    struct Faq: Codable {
        
        
        public var id: String?
        
        public var question: String?
        
        public var answer: String?
        
        public var slug: String?
        
        public var application: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case question = "question"
            
            case answer = "answer"
            
            case slug = "slug"
            
            case application = "application"
            
            case v = "__v"
            
        }

        public init(id: String?, question: String?, answer: String?, slug: String?, application: String?, v: Int?) {
            
            self.id = id
            
            self.question = question
            
            self.answer = answer
            
            self.slug = slug
            
            self.application = application
            
            self.v = v
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            question = try? container.decode(String.self, forKey: .question)
            
            answer = try? container.decode(String.self, forKey: .answer)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            application = try? container.decode(String.self, forKey: .application)
            
            v = try? container.decode(Int.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(question, forKey: .question)
            
            try? container.encodeIfPresent(answer, forKey: .answer)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: KeyValue
    */

    struct KeyValue: Codable {
        
        
        public var id: String?
        
        public var application: String?
        
        public var keyValues: [[String: Any]]?
        
        public var identifier: [String: Any]?
        
        public var dateMeta: [String: Any]?
        
        public var archived: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case application = "application"
            
            case keyValues = "key_values"
            
            case identifier = "identifier"
            
            case dateMeta = "date_meta"
            
            case archived = "archived"
            
        }

        public init(id: String?, application: String?, keyValues: [[String: Any]]?, identifier: [String: Any]?, dateMeta: [String: Any]?, archived: Bool?) {
            
            self.id = id
            
            self.application = application
            
            self.keyValues = keyValues
            
            self.identifier = identifier
            
            self.dateMeta = dateMeta
            
            self.archived = archived
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            application = try? container.decode(String.self, forKey: .application)
            
            keyValues = try? container.decode([[String: Any]].self, forKey: .keyValues)
            
            identifier = try? container.decode([String: Any].self, forKey: .identifier)
            
            dateMeta = try? container.decode([String: Any].self, forKey: .dateMeta)
            
            archived = try? container.decode(Bool.self, forKey: .archived)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(keyValues, forKey: .keyValues)
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            try? container.encodeIfPresent(archived, forKey: .archived)
            
        }
        
    }
    
    /*
        Model: CustomPage
    */

    struct CustomPage: Codable {
        
        
        public var data: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: [String: Any]?) {
            
            self.data = data
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            data = try? container.decode([String: Any].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: CustomBlog
    */

    struct CustomBlog: Codable {
        
        
        public var data: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: [String: Any]?) {
            
            self.data = data
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            data = try? container.decode([String: Any].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: Support
    */

    struct Support: Codable {
        
        
        public var created: Bool?
        
        public var id: String?
        
        public var configType: String?
        
        public var application: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var contact: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case created = "created"
            
            case id = "_id"
            
            case configType = "config_type"
            
            case application = "application"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case contact = "contact"
            
        }

        public init(created: Bool?, id: String?, configType: String?, application: String?, createdAt: String?, updatedAt: String?, contact: [String: Any]?) {
            
            self.created = created
            
            self.id = id
            
            self.configType = configType
            
            self.application = application
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.contact = contact
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            created = try? container.decode(Bool.self, forKey: .created)
            
            id = try? container.decode(String.self, forKey: .id)
            
            configType = try? container.decode(String.self, forKey: .configType)
            
            application = try? container.decode(String.self, forKey: .application)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            contact = try? container.decode([String: Any].self, forKey: .contact)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
        }
        
    }
    
    
    
    /*
        Model: GetStats
    */

    struct GetStats: Codable {
        
    }
    
    /*
        Model: CampaignReq
    */

    struct CampaignReq: Codable {
        
        
        public var description: String?
        
        public var tags: [String]?
        
        public var headers: [String]?
        
        public var isActive: Bool?
        
        public var name: String?
        
        public var fileUrl: String?
        
        public var type: String?
        
        public var recordsCount: Int?
        
        public var application: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case tags = "tags"
            
            case headers = "headers"
            
            case isActive = "is_active"
            
            case name = "name"
            
            case fileUrl = "file_url"
            
            case type = "type"
            
            case recordsCount = "records_count"
            
            case application = "application"
            
        }

        public init(description: String?, tags: [String]?, headers: [String]?, isActive: Bool?, name: String?, fileUrl: String?, type: String?, recordsCount: Int?, application: String?) {
            
            self.description = description
            
            self.tags = tags
            
            self.headers = headers
            
            self.isActive = isActive
            
            self.name = name
            
            self.fileUrl = fileUrl
            
            self.type = type
            
            self.recordsCount = recordsCount
            
            self.application = application
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try? container.decode(String.self, forKey: .description)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            headers = try? container.decode([String].self, forKey: .headers)
            
            isActive = try? container.decode(Bool.self, forKey: .isActive)
            
            name = try? container.decode(String.self, forKey: .name)
            
            fileUrl = try? container.decode(String.self, forKey: .fileUrl)
            
            type = try? container.decode(String.self, forKey: .type)
            
            recordsCount = try? container.decode(Int.self, forKey: .recordsCount)
            
            application = try? container.decode(String.self, forKey: .application)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(recordsCount, forKey: .recordsCount)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
        }
        
    }
    
    /*
        Model: Campaign
    */

    struct Campaign: Codable {
        
        
        public var recipientHeaders: [String: Any]?
        
        public var email: [String: Any]?
        
        public var description: String?
        
        public var tags: [[String: Any]]?
        
        public var isActive: Bool?
        
        public var id: String?
        
        public var datasource: String?
        
        public var type: String?
        
        public var name: String?
        
        public var application: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var slug: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case recipientHeaders = "recipientHeaders"
            
            case email = "email"
            
            case description = "description"
            
            case tags = "tags"
            
            case isActive = "is_active"
            
            case id = "_id"
            
            case datasource = "datasource"
            
            case type = "type"
            
            case name = "name"
            
            case application = "application"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case slug = "slug"
            
            case v = "__v"
            
        }

        public init(recipientHeaders: [String: Any]?, email: [String: Any]?, description: String?, tags: [[String: Any]]?, isActive: Bool?, id: String?, datasource: String?, type: String?, name: String?, application: String?, createdAt: String?, updatedAt: String?, slug: String?, v: Int?) {
            
            self.recipientHeaders = recipientHeaders
            
            self.email = email
            
            self.description = description
            
            self.tags = tags
            
            self.isActive = isActive
            
            self.id = id
            
            self.datasource = datasource
            
            self.type = type
            
            self.name = name
            
            self.application = application
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.slug = slug
            
            self.v = v
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            recipientHeaders = try? container.decode([String: Any].self, forKey: .recipientHeaders)
            
            email = try? container.decode([String: Any].self, forKey: .email)
            
            description = try? container.decode(String.self, forKey: .description)
            
            tags = try? container.decode([[String: Any]].self, forKey: .tags)
            
            isActive = try? container.decode(Bool.self, forKey: .isActive)
            
            id = try? container.decode(String.self, forKey: .id)
            
            datasource = try? container.decode(String.self, forKey: .datasource)
            
            type = try? container.decode(String.self, forKey: .type)
            
            name = try? container.decode(String.self, forKey: .name)
            
            application = try? container.decode(String.self, forKey: .application)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            v = try? container.decode(Int.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(recipientHeaders, forKey: .recipientHeaders)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(datasource, forKey: .datasource)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: Campaigns
    */

    struct Campaigns: Codable {
        
        
        public var docs: [Campaign]?
        
        public var total: Int?
        
        public var limit: Int?
        
        public var offset: Int?
        
        public var page: Int?
        
        public var pages: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case total = "total"
            
            case limit = "limit"
            
            case offset = "offset"
            
            case page = "page"
            
            case pages = "pages"
            
        }

        public init(docs: [Campaign]?, total: Int?, limit: Int?, offset: Int?, page: Int?, pages: Int?) {
            
            self.docs = docs
            
            self.total = total
            
            self.limit = limit
            
            self.offset = offset
            
            self.page = page
            
            self.pages = pages
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([Campaign].self, forKey: .docs)
            
            total = try? container.decode(Int.self, forKey: .total)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            offset = try? container.decode(Int.self, forKey: .offset)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(offset, forKey: .offset)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
        }
        
    }
    
    /*
        Model: BigqueryHeadersReq
    */

    struct BigqueryHeadersReq: Codable {
        
        
        public var query: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case type = "type"
            
        }

        public init(query: String?, type: String?) {
            
            self.query = query
            
            self.type = type
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            query = try? container.decode(String.self, forKey: .query)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: BigqueryHeadersRes
    */

    struct BigqueryHeadersRes: Codable {
        
        
        public var headers: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case headers = "headers"
            
        }

        public init(headers: [[String: Any]]?) {
            
            self.headers = headers
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            headers = try? container.decode([[String: Any]].self, forKey: .headers)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
        }
        
    }
    
    /*
        Model: GetNRecordsCsvReq
    */

    struct GetNRecordsCsvReq: Codable {
        
        
        public var url: String?
        
        public var header: Bool?
        
        public var count: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case header = "header"
            
            case count = "count"
            
        }

        public init(url: String?, header: Bool?, count: Int?) {
            
            self.url = url
            
            self.header = header
            
            self.count = count
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            url = try? container.decode(String.self, forKey: .url)
            
            header = try? container.decode(Bool.self, forKey: .header)
            
            count = try? container.decode(Int.self, forKey: .count)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            try? container.encodeIfPresent(header, forKey: .header)
            
            try? container.encodeIfPresent(count, forKey: .count)
            
        }
        
    }
    
    /*
        Model: GetNRecordsCsvRes
    */

    struct GetNRecordsCsvRes: Codable {
        
    }
    
    /*
        Model: AudienceReq
    */

    struct AudienceReq: Codable {
        
        
        public var description: String?
        
        public var tags: [String]?
        
        public var headers: [String]?
        
        public var isActive: Bool?
        
        public var name: String?
        
        public var fileUrl: String?
        
        public var type: String?
        
        public var recordsCount: Int?
        
        public var application: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case tags = "tags"
            
            case headers = "headers"
            
            case isActive = "is_active"
            
            case name = "name"
            
            case fileUrl = "file_url"
            
            case type = "type"
            
            case recordsCount = "records_count"
            
            case application = "application"
            
        }

        public init(description: String?, tags: [String]?, headers: [String]?, isActive: Bool?, name: String?, fileUrl: String?, type: String?, recordsCount: Int?, application: String?) {
            
            self.description = description
            
            self.tags = tags
            
            self.headers = headers
            
            self.isActive = isActive
            
            self.name = name
            
            self.fileUrl = fileUrl
            
            self.type = type
            
            self.recordsCount = recordsCount
            
            self.application = application
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try? container.decode(String.self, forKey: .description)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            headers = try? container.decode([String].self, forKey: .headers)
            
            isActive = try? container.decode(Bool.self, forKey: .isActive)
            
            name = try? container.decode(String.self, forKey: .name)
            
            fileUrl = try? container.decode(String.self, forKey: .fileUrl)
            
            type = try? container.decode(String.self, forKey: .type)
            
            recordsCount = try? container.decode(Int.self, forKey: .recordsCount)
            
            application = try? container.decode(String.self, forKey: .application)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(recordsCount, forKey: .recordsCount)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
        }
        
    }
    
    /*
        Model: Audience
    */

    struct Audience: Codable {
        
        
        public var description: String?
        
        public var tags: [String]?
        
        public var headers: [String]?
        
        public var isActive: Bool?
        
        public var id: String?
        
        public var name: String?
        
        public var fileUrl: String?
        
        public var type: String?
        
        public var recordsCount: Int?
        
        public var application: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var slug: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case tags = "tags"
            
            case headers = "headers"
            
            case isActive = "is_active"
            
            case id = "_id"
            
            case name = "name"
            
            case fileUrl = "file_url"
            
            case type = "type"
            
            case recordsCount = "records_count"
            
            case application = "application"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case slug = "slug"
            
            case v = "__v"
            
        }

        public init(description: String?, tags: [String]?, headers: [String]?, isActive: Bool?, id: String?, name: String?, fileUrl: String?, type: String?, recordsCount: Int?, application: String?, createdAt: String?, updatedAt: String?, slug: String?, v: Int?) {
            
            self.description = description
            
            self.tags = tags
            
            self.headers = headers
            
            self.isActive = isActive
            
            self.id = id
            
            self.name = name
            
            self.fileUrl = fileUrl
            
            self.type = type
            
            self.recordsCount = recordsCount
            
            self.application = application
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.slug = slug
            
            self.v = v
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try? container.decode(String.self, forKey: .description)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            headers = try? container.decode([String].self, forKey: .headers)
            
            isActive = try? container.decode(Bool.self, forKey: .isActive)
            
            id = try? container.decode(String.self, forKey: .id)
            
            name = try? container.decode(String.self, forKey: .name)
            
            fileUrl = try? container.decode(String.self, forKey: .fileUrl)
            
            type = try? container.decode(String.self, forKey: .type)
            
            recordsCount = try? container.decode(Int.self, forKey: .recordsCount)
            
            application = try? container.decode(String.self, forKey: .application)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            v = try? container.decode(Int.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(recordsCount, forKey: .recordsCount)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: Audiences
    */

    struct Audiences: Codable {
        
        
        public var docs: [Audience]?
        
        public var total: Int?
        
        public var limit: Int?
        
        public var offset: Int?
        
        public var page: Int?
        
        public var pages: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case total = "total"
            
            case limit = "limit"
            
            case offset = "offset"
            
            case page = "page"
            
            case pages = "pages"
            
        }

        public init(docs: [Audience]?, total: Int?, limit: Int?, offset: Int?, page: Int?, pages: Int?) {
            
            self.docs = docs
            
            self.total = total
            
            self.limit = limit
            
            self.offset = offset
            
            self.page = page
            
            self.pages = pages
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([Audience].self, forKey: .docs)
            
            total = try? container.decode(Int.self, forKey: .total)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            offset = try? container.decode(Int.self, forKey: .offset)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(offset, forKey: .offset)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
        }
        
    }
    
    /*
        Model: EmailProviderReq
    */

    struct EmailProviderReq: Codable {
        
        
        public var name: String?
        
        public var description: String?
        
        public var apiKey: String?
        
        public var type: String?
        
        public var provider: String?
        
        public var from: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case description = "description"
            
            case apiKey = "apiKey"
            
            case type = "type"
            
            case provider = "provider"
            
            case from = "from"
            
        }

        public init(name: String?, description: String?, apiKey: String?, type: String?, provider: String?, from: [[String: Any]]?) {
            
            self.name = name
            
            self.description = description
            
            self.apiKey = apiKey
            
            self.type = type
            
            self.provider = provider
            
            self.from = from
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            description = try? container.decode(String.self, forKey: .description)
            
            apiKey = try? container.decode(String.self, forKey: .apiKey)
            
            type = try? container.decode(String.self, forKey: .type)
            
            provider = try? container.decode(String.self, forKey: .provider)
            
            from = try? container.decode([[String: Any]].self, forKey: .from)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(apiKey, forKey: .apiKey)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            try? container.encodeIfPresent(from, forKey: .from)
            
        }
        
    }
    
    /*
        Model: EmailProvider
    */

    struct EmailProvider: Codable {
        
        
        public var type: String?
        
        public var provider: String?
        
        public var from: [[String: Any]]?
        
        public var id: String?
        
        public var name: String?
        
        public var description: String?
        
        public var apiKey: String?
        
        public var application: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var slug: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case provider = "provider"
            
            case from = "from"
            
            case id = "_id"
            
            case name = "name"
            
            case description = "description"
            
            case apiKey = "apiKey"
            
            case application = "application"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case slug = "slug"
            
            case v = "__v"
            
        }

        public init(type: String?, provider: String?, from: [[String: Any]]?, id: String?, name: String?, description: String?, apiKey: String?, application: String?, createdAt: String?, updatedAt: String?, slug: String?, v: Int?) {
            
            self.type = type
            
            self.provider = provider
            
            self.from = from
            
            self.id = id
            
            self.name = name
            
            self.description = description
            
            self.apiKey = apiKey
            
            self.application = application
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.slug = slug
            
            self.v = v
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            type = try? container.decode(String.self, forKey: .type)
            
            provider = try? container.decode(String.self, forKey: .provider)
            
            from = try? container.decode([[String: Any]].self, forKey: .from)
            
            id = try? container.decode(String.self, forKey: .id)
            
            name = try? container.decode(String.self, forKey: .name)
            
            description = try? container.decode(String.self, forKey: .description)
            
            apiKey = try? container.decode(String.self, forKey: .apiKey)
            
            application = try? container.decode(String.self, forKey: .application)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            v = try? container.decode(Int.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            try? container.encodeIfPresent(from, forKey: .from)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(apiKey, forKey: .apiKey)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: EmailProviders
    */

    struct EmailProviders: Codable {
        
        
        public var docs: [EmailProvider]?
        
        public var total: Int?
        
        public var limit: Int?
        
        public var offset: Int?
        
        public var page: Int?
        
        public var pages: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case total = "total"
            
            case limit = "limit"
            
            case offset = "offset"
            
            case page = "page"
            
            case pages = "pages"
            
        }

        public init(docs: [EmailProvider]?, total: Int?, limit: Int?, offset: Int?, page: Int?, pages: Int?) {
            
            self.docs = docs
            
            self.total = total
            
            self.limit = limit
            
            self.offset = offset
            
            self.page = page
            
            self.pages = pages
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([EmailProvider].self, forKey: .docs)
            
            total = try? container.decode(Int.self, forKey: .total)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            offset = try? container.decode(Int.self, forKey: .offset)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(offset, forKey: .offset)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
        }
        
    }
    
    /*
        Model: EmailTemplateDeleteSuccessRes
    */

    struct EmailTemplateDeleteSuccessRes: Codable {
        
        
        public var success: Bool?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(success: Bool?, message: String?) {
            
            self.success = success
            
            self.message = message
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: EmailTemplateDeleteFailureRes
    */

    struct EmailTemplateDeleteFailureRes: Codable {
        
        
        public var success: Bool?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(success: Bool?, message: String?) {
            
            self.success = success
            
            self.message = message
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: EmailTemplateReq
    */

    struct EmailTemplateReq: Codable {
        
        
        public var name: String?
        
        public var description: String?
        
        public var keys: [String: Any]?
        
        public var from: String?
        
        public var staticTo: [String]?
        
        public var staticCc: [String]?
        
        public var staticBcc: [String]?
        
        public var replyTo: String?
        
        public var headers: [[String: Any]]?
        
        public var subject: [String: Any]?
        
        public var html: [String: Any]?
        
        public var text: [String: Any]?
        
        public var attachments: [[String: Any]]?
        
        public var priority: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case description = "description"
            
            case keys = "keys"
            
            case from = "from"
            
            case staticTo = "staticTo"
            
            case staticCc = "staticCc"
            
            case staticBcc = "staticBcc"
            
            case replyTo = "replyTo"
            
            case headers = "headers"
            
            case subject = "subject"
            
            case html = "html"
            
            case text = "text"
            
            case attachments = "attachments"
            
            case priority = "priority"
            
        }

        public init(name: String?, description: String?, keys: [String: Any]?, from: String?, staticTo: [String]?, staticCc: [String]?, staticBcc: [String]?, replyTo: String?, headers: [[String: Any]]?, subject: [String: Any]?, html: [String: Any]?, text: [String: Any]?, attachments: [[String: Any]]?, priority: String?) {
            
            self.name = name
            
            self.description = description
            
            self.keys = keys
            
            self.from = from
            
            self.staticTo = staticTo
            
            self.staticCc = staticCc
            
            self.staticBcc = staticBcc
            
            self.replyTo = replyTo
            
            self.headers = headers
            
            self.subject = subject
            
            self.html = html
            
            self.text = text
            
            self.attachments = attachments
            
            self.priority = priority
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            description = try? container.decode(String.self, forKey: .description)
            
            keys = try? container.decode([String: Any].self, forKey: .keys)
            
            from = try? container.decode(String.self, forKey: .from)
            
            staticTo = try? container.decode([String].self, forKey: .staticTo)
            
            staticCc = try? container.decode([String].self, forKey: .staticCc)
            
            staticBcc = try? container.decode([String].self, forKey: .staticBcc)
            
            replyTo = try? container.decode(String.self, forKey: .replyTo)
            
            headers = try? container.decode([[String: Any]].self, forKey: .headers)
            
            subject = try? container.decode([String: Any].self, forKey: .subject)
            
            html = try? container.decode([String: Any].self, forKey: .html)
            
            text = try? container.decode([String: Any].self, forKey: .text)
            
            attachments = try? container.decode([[String: Any]].self, forKey: .attachments)
            
            priority = try? container.decode(String.self, forKey: .priority)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(keys, forKey: .keys)
            
            try? container.encodeIfPresent(from, forKey: .from)
            
            try? container.encodeIfPresent(staticTo, forKey: .staticTo)
            
            try? container.encodeIfPresent(staticCc, forKey: .staticCc)
            
            try? container.encodeIfPresent(staticBcc, forKey: .staticBcc)
            
            try? container.encodeIfPresent(replyTo, forKey: .replyTo)
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            try? container.encodeIfPresent(subject, forKey: .subject)
            
            try? container.encodeIfPresent(html, forKey: .html)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(attachments, forKey: .attachments)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
        }
        
    }
    
    /*
        Model: EmailTemplateRes
    */

    struct EmailTemplateRes: Codable {
        
        
        public var isSystem: Bool?
        
        public var isInternal: Bool?
        
        public var description: String?
        
        public var staticTo: [String]?
        
        public var staticCc: [String]?
        
        public var staticBcc: [String]?
        
        public var tags: [[String: Any]]?
        
        public var priority: String?
        
        public var published: Bool?
        
        public var id: String?
        
        public var name: String?
        
        public var keys: [String: Any]?
        
        public var from: String?
        
        public var replyTo: String?
        
        public var headers: [[String: Any]]?
        
        public var subject: [String: Any]?
        
        public var html: [String: Any]?
        
        public var text: [String: Any]?
        
        public var attachments: [[String: Any]]?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var slug: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case isSystem = "is_system"
            
            case isInternal = "is_internal"
            
            case description = "description"
            
            case staticTo = "staticTo"
            
            case staticCc = "staticCc"
            
            case staticBcc = "staticBcc"
            
            case tags = "tags"
            
            case priority = "priority"
            
            case published = "published"
            
            case id = "_id"
            
            case name = "name"
            
            case keys = "keys"
            
            case from = "from"
            
            case replyTo = "replyTo"
            
            case headers = "headers"
            
            case subject = "subject"
            
            case html = "html"
            
            case text = "text"
            
            case attachments = "attachments"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case slug = "slug"
            
            case v = "__v"
            
        }

        public init(isSystem: Bool?, isInternal: Bool?, description: String?, staticTo: [String]?, staticCc: [String]?, staticBcc: [String]?, tags: [[String: Any]]?, priority: String?, published: Bool?, id: String?, name: String?, keys: [String: Any]?, from: String?, replyTo: String?, headers: [[String: Any]]?, subject: [String: Any]?, html: [String: Any]?, text: [String: Any]?, attachments: [[String: Any]]?, createdAt: String?, updatedAt: String?, slug: String?, v: Int?) {
            
            self.isSystem = isSystem
            
            self.isInternal = isInternal
            
            self.description = description
            
            self.staticTo = staticTo
            
            self.staticCc = staticCc
            
            self.staticBcc = staticBcc
            
            self.tags = tags
            
            self.priority = priority
            
            self.published = published
            
            self.id = id
            
            self.name = name
            
            self.keys = keys
            
            self.from = from
            
            self.replyTo = replyTo
            
            self.headers = headers
            
            self.subject = subject
            
            self.html = html
            
            self.text = text
            
            self.attachments = attachments
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.slug = slug
            
            self.v = v
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isSystem = try? container.decode(Bool.self, forKey: .isSystem)
            
            isInternal = try? container.decode(Bool.self, forKey: .isInternal)
            
            description = try? container.decode(String.self, forKey: .description)
            
            staticTo = try? container.decode([String].self, forKey: .staticTo)
            
            staticCc = try? container.decode([String].self, forKey: .staticCc)
            
            staticBcc = try? container.decode([String].self, forKey: .staticBcc)
            
            tags = try? container.decode([[String: Any]].self, forKey: .tags)
            
            priority = try? container.decode(String.self, forKey: .priority)
            
            published = try? container.decode(Bool.self, forKey: .published)
            
            id = try? container.decode(String.self, forKey: .id)
            
            name = try? container.decode(String.self, forKey: .name)
            
            keys = try? container.decode([String: Any].self, forKey: .keys)
            
            from = try? container.decode(String.self, forKey: .from)
            
            replyTo = try? container.decode(String.self, forKey: .replyTo)
            
            headers = try? container.decode([[String: Any]].self, forKey: .headers)
            
            subject = try? container.decode([String: Any].self, forKey: .subject)
            
            html = try? container.decode([String: Any].self, forKey: .html)
            
            text = try? container.decode([String: Any].self, forKey: .text)
            
            attachments = try? container.decode([[String: Any]].self, forKey: .attachments)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            v = try? container.decode(Int.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isSystem, forKey: .isSystem)
            
            try? container.encodeIfPresent(isInternal, forKey: .isInternal)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(staticTo, forKey: .staticTo)
            
            try? container.encodeIfPresent(staticCc, forKey: .staticCc)
            
            try? container.encodeIfPresent(staticBcc, forKey: .staticBcc)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(keys, forKey: .keys)
            
            try? container.encodeIfPresent(from, forKey: .from)
            
            try? container.encodeIfPresent(replyTo, forKey: .replyTo)
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            try? container.encodeIfPresent(subject, forKey: .subject)
            
            try? container.encodeIfPresent(html, forKey: .html)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(attachments, forKey: .attachments)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: EmailTemplate
    */

    struct EmailTemplate: Codable {
        
        
        public var isSystem: Bool?
        
        public var isInternal: Bool?
        
        public var description: String?
        
        public var staticTo: [[String: Any]]?
        
        public var staticCc: [[String: Any]]?
        
        public var staticBcc: [[String: Any]]?
        
        public var tags: [[String: Any]]?
        
        public var priority: String?
        
        public var published: Bool?
        
        public var id: String?
        
        public var slug: String?
        
        public var name: String?
        
        public var from: String?
        
        public var fromName: String?
        
        public var subject: [String: Any]?
        
        public var html: [String: Any]?
        
        public var text: [String: Any]?
        
        public var headers: [[String: Any]]?
        
        public var attachments: [[String: Any]]?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case isSystem = "is_system"
            
            case isInternal = "is_internal"
            
            case description = "description"
            
            case staticTo = "staticTo"
            
            case staticCc = "staticCc"
            
            case staticBcc = "staticBcc"
            
            case tags = "tags"
            
            case priority = "priority"
            
            case published = "published"
            
            case id = "_id"
            
            case slug = "slug"
            
            case name = "name"
            
            case from = "from"
            
            case fromName = "fromName"
            
            case subject = "subject"
            
            case html = "html"
            
            case text = "text"
            
            case headers = "headers"
            
            case attachments = "attachments"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case v = "__v"
            
        }

        public init(isSystem: Bool?, isInternal: Bool?, description: String?, staticTo: [[String: Any]]?, staticCc: [[String: Any]]?, staticBcc: [[String: Any]]?, tags: [[String: Any]]?, priority: String?, published: Bool?, id: String?, slug: String?, name: String?, from: String?, fromName: String?, subject: [String: Any]?, html: [String: Any]?, text: [String: Any]?, headers: [[String: Any]]?, attachments: [[String: Any]]?, createdAt: String?, updatedAt: String?, v: Int?) {
            
            self.isSystem = isSystem
            
            self.isInternal = isInternal
            
            self.description = description
            
            self.staticTo = staticTo
            
            self.staticCc = staticCc
            
            self.staticBcc = staticBcc
            
            self.tags = tags
            
            self.priority = priority
            
            self.published = published
            
            self.id = id
            
            self.slug = slug
            
            self.name = name
            
            self.from = from
            
            self.fromName = fromName
            
            self.subject = subject
            
            self.html = html
            
            self.text = text
            
            self.headers = headers
            
            self.attachments = attachments
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.v = v
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isSystem = try? container.decode(Bool.self, forKey: .isSystem)
            
            isInternal = try? container.decode(Bool.self, forKey: .isInternal)
            
            description = try? container.decode(String.self, forKey: .description)
            
            staticTo = try? container.decode([[String: Any]].self, forKey: .staticTo)
            
            staticCc = try? container.decode([[String: Any]].self, forKey: .staticCc)
            
            staticBcc = try? container.decode([[String: Any]].self, forKey: .staticBcc)
            
            tags = try? container.decode([[String: Any]].self, forKey: .tags)
            
            priority = try? container.decode(String.self, forKey: .priority)
            
            published = try? container.decode(Bool.self, forKey: .published)
            
            id = try? container.decode(String.self, forKey: .id)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            name = try? container.decode(String.self, forKey: .name)
            
            from = try? container.decode(String.self, forKey: .from)
            
            fromName = try? container.decode(String.self, forKey: .fromName)
            
            subject = try? container.decode([String: Any].self, forKey: .subject)
            
            html = try? container.decode([String: Any].self, forKey: .html)
            
            text = try? container.decode([String: Any].self, forKey: .text)
            
            headers = try? container.decode([[String: Any]].self, forKey: .headers)
            
            attachments = try? container.decode([[String: Any]].self, forKey: .attachments)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            v = try? container.decode(Int.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isSystem, forKey: .isSystem)
            
            try? container.encodeIfPresent(isInternal, forKey: .isInternal)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(staticTo, forKey: .staticTo)
            
            try? container.encodeIfPresent(staticCc, forKey: .staticCc)
            
            try? container.encodeIfPresent(staticBcc, forKey: .staticBcc)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(from, forKey: .from)
            
            try? container.encodeIfPresent(fromName, forKey: .fromName)
            
            try? container.encodeIfPresent(subject, forKey: .subject)
            
            try? container.encodeIfPresent(html, forKey: .html)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            try? container.encodeIfPresent(attachments, forKey: .attachments)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: SystemEmailTemplate
    */

    struct SystemEmailTemplate: Codable {
        
        
        public var isSystem: Bool?
        
        public var isInternal: Bool?
        
        public var description: String?
        
        public var staticTo: [[String: Any]]?
        
        public var staticCc: [[String: Any]]?
        
        public var staticBcc: [[String: Any]]?
        
        public var tags: [[String: Any]]?
        
        public var priority: String?
        
        public var published: Bool?
        
        public var id: String?
        
        public var slug: String?
        
        public var name: String?
        
        public var from: String?
        
        public var fromName: String?
        
        public var subject: [String: Any]?
        
        public var html: [String: Any]?
        
        public var text: [String: Any]?
        
        public var headers: [[String: Any]]?
        
        public var attachments: [[String: Any]]?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case isSystem = "is_system"
            
            case isInternal = "is_internal"
            
            case description = "description"
            
            case staticTo = "staticTo"
            
            case staticCc = "staticCc"
            
            case staticBcc = "staticBcc"
            
            case tags = "tags"
            
            case priority = "priority"
            
            case published = "published"
            
            case id = "_id"
            
            case slug = "slug"
            
            case name = "name"
            
            case from = "from"
            
            case fromName = "fromName"
            
            case subject = "subject"
            
            case html = "html"
            
            case text = "text"
            
            case headers = "headers"
            
            case attachments = "attachments"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case v = "__v"
            
        }

        public init(isSystem: Bool?, isInternal: Bool?, description: String?, staticTo: [[String: Any]]?, staticCc: [[String: Any]]?, staticBcc: [[String: Any]]?, tags: [[String: Any]]?, priority: String?, published: Bool?, id: String?, slug: String?, name: String?, from: String?, fromName: String?, subject: [String: Any]?, html: [String: Any]?, text: [String: Any]?, headers: [[String: Any]]?, attachments: [[String: Any]]?, createdAt: String?, updatedAt: String?, v: Int?) {
            
            self.isSystem = isSystem
            
            self.isInternal = isInternal
            
            self.description = description
            
            self.staticTo = staticTo
            
            self.staticCc = staticCc
            
            self.staticBcc = staticBcc
            
            self.tags = tags
            
            self.priority = priority
            
            self.published = published
            
            self.id = id
            
            self.slug = slug
            
            self.name = name
            
            self.from = from
            
            self.fromName = fromName
            
            self.subject = subject
            
            self.html = html
            
            self.text = text
            
            self.headers = headers
            
            self.attachments = attachments
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.v = v
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isSystem = try? container.decode(Bool.self, forKey: .isSystem)
            
            isInternal = try? container.decode(Bool.self, forKey: .isInternal)
            
            description = try? container.decode(String.self, forKey: .description)
            
            staticTo = try? container.decode([[String: Any]].self, forKey: .staticTo)
            
            staticCc = try? container.decode([[String: Any]].self, forKey: .staticCc)
            
            staticBcc = try? container.decode([[String: Any]].self, forKey: .staticBcc)
            
            tags = try? container.decode([[String: Any]].self, forKey: .tags)
            
            priority = try? container.decode(String.self, forKey: .priority)
            
            published = try? container.decode(Bool.self, forKey: .published)
            
            id = try? container.decode(String.self, forKey: .id)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            name = try? container.decode(String.self, forKey: .name)
            
            from = try? container.decode(String.self, forKey: .from)
            
            fromName = try? container.decode(String.self, forKey: .fromName)
            
            subject = try? container.decode([String: Any].self, forKey: .subject)
            
            html = try? container.decode([String: Any].self, forKey: .html)
            
            text = try? container.decode([String: Any].self, forKey: .text)
            
            headers = try? container.decode([[String: Any]].self, forKey: .headers)
            
            attachments = try? container.decode([[String: Any]].self, forKey: .attachments)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            v = try? container.decode(Int.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isSystem, forKey: .isSystem)
            
            try? container.encodeIfPresent(isInternal, forKey: .isInternal)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(staticTo, forKey: .staticTo)
            
            try? container.encodeIfPresent(staticCc, forKey: .staticCc)
            
            try? container.encodeIfPresent(staticBcc, forKey: .staticBcc)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(from, forKey: .from)
            
            try? container.encodeIfPresent(fromName, forKey: .fromName)
            
            try? container.encodeIfPresent(subject, forKey: .subject)
            
            try? container.encodeIfPresent(html, forKey: .html)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            try? container.encodeIfPresent(attachments, forKey: .attachments)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: EmailTemplates
    */

    struct EmailTemplates: Codable {
        
        
        public var docs: [EmailTemplate]?
        
        public var total: Int?
        
        public var limit: Int?
        
        public var offset: Int?
        
        public var page: Int?
        
        public var pages: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case total = "total"
            
            case limit = "limit"
            
            case offset = "offset"
            
            case page = "page"
            
            case pages = "pages"
            
        }

        public init(docs: [EmailTemplate]?, total: Int?, limit: Int?, offset: Int?, page: Int?, pages: Int?) {
            
            self.docs = docs
            
            self.total = total
            
            self.limit = limit
            
            self.offset = offset
            
            self.page = page
            
            self.pages = pages
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([EmailTemplate].self, forKey: .docs)
            
            total = try? container.decode(Int.self, forKey: .total)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            offset = try? container.decode(Int.self, forKey: .offset)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(offset, forKey: .offset)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
        }
        
    }
    
    /*
        Model: SystemEmailTemplates
    */

    struct SystemEmailTemplates: Codable {
        
        
        public var docs: [SystemEmailTemplate]?
        
        public var total: Int?
        
        public var limit: Int?
        
        public var offset: Int?
        
        public var page: Int?
        
        public var pages: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case total = "total"
            
            case limit = "limit"
            
            case offset = "offset"
            
            case page = "page"
            
            case pages = "pages"
            
        }

        public init(docs: [SystemEmailTemplate]?, total: Int?, limit: Int?, offset: Int?, page: Int?, pages: Int?) {
            
            self.docs = docs
            
            self.total = total
            
            self.limit = limit
            
            self.offset = offset
            
            self.page = page
            
            self.pages = pages
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([SystemEmailTemplate].self, forKey: .docs)
            
            total = try? container.decode(Int.self, forKey: .total)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            offset = try? container.decode(Int.self, forKey: .offset)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(offset, forKey: .offset)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
        }
        
    }
    
    /*
        Model: EventSubscriptions
    */

    struct EventSubscriptions: Codable {
        
    }
    
    /*
        Model: page
    */

    struct page: Codable {
        
        
        public var type: String?
        
        public var current: Int?
        
        public var size: Int?
        
        public var itemTotal: Int?
        
        public var hasNext: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case current = "current"
            
            case size = "size"
            
            case itemTotal = "item_total"
            
            case hasNext = "has_next"
            
        }

        public init(type: String?, current: Int?, size: Int?, itemTotal: Int?, hasNext: Bool?) {
            
            self.type = type
            
            self.current = current
            
            self.size = size
            
            self.itemTotal = itemTotal
            
            self.hasNext = hasNext
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            type = try? container.decode(String.self, forKey: .type)
            
            current = try? container.decode(Int.self, forKey: .current)
            
            size = try? container.decode(Int.self, forKey: .size)
            
            itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
        }
        
    }
    
    /*
        Model: TriggerJobResponse
    */

    struct TriggerJobResponse: Codable {
        
    }
    
    /*
        Model: TriggerJobRequest
    */

    struct TriggerJobRequest: Codable {
        
    }
    
    /*
        Model: Jobs
    */

    struct Jobs: Codable {
        
    }
    
    /*
        Model: JobLogs
    */

    struct JobLogs: Codable {
        
    }
    
    /*
        Model: Log
    */

    struct Log: Codable {
        
        
        public var email: [String: Any]?
        
        public var pushnotification: [String: Any]?
        
        public var meta: [String: Any]?
        
        public var id: String?
        
        public var application: String?
        
        public var service: String?
        
        public var step: String?
        
        public var status: String?
        
        public var data: [String: Any]?
        
        public var expireAt: String?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case pushnotification = "pushnotification"
            
            case meta = "meta"
            
            case id = "_id"
            
            case application = "application"
            
            case service = "service"
            
            case step = "step"
            
            case status = "status"
            
            case data = "data"
            
            case expireAt = "expire_at"
            
            case createdAt = "created_at"
            
        }

        public init(email: [String: Any]?, pushnotification: [String: Any]?, meta: [String: Any]?, id: String?, application: String?, service: String?, step: String?, status: String?, data: [String: Any]?, expireAt: String?, createdAt: String?) {
            
            self.email = email
            
            self.pushnotification = pushnotification
            
            self.meta = meta
            
            self.id = id
            
            self.application = application
            
            self.service = service
            
            self.step = step
            
            self.status = status
            
            self.data = data
            
            self.expireAt = expireAt
            
            self.createdAt = createdAt
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            email = try? container.decode([String: Any].self, forKey: .email)
            
            pushnotification = try? container.decode([String: Any].self, forKey: .pushnotification)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            id = try? container.decode(String.self, forKey: .id)
            
            application = try? container.decode(String.self, forKey: .application)
            
            service = try? container.decode(String.self, forKey: .service)
            
            step = try? container.decode(String.self, forKey: .step)
            
            status = try? container.decode(String.self, forKey: .status)
            
            data = try? container.decode([String: Any].self, forKey: .data)
            
            expireAt = try? container.decode(String.self, forKey: .expireAt)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(pushnotification, forKey: .pushnotification)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(service, forKey: .service)
            
            try? container.encodeIfPresent(step, forKey: .step)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            try? container.encodeIfPresent(expireAt, forKey: .expireAt)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
        }
        
    }
    
    /*
        Model: Logs
    */

    struct Logs: Codable {
        
        
        public var docs: [Log]?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
        }

        public init(docs: [Log]?) {
            
            self.docs = docs
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([Log].self, forKey: .docs)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
        }
        
    }
    
    /*
        Model: SmsProviderReq
    */

    struct SmsProviderReq: Codable {
        
        
        public var name: String?
        
        public var description: String?
        
        public var sender: String?
        
        public var username: String?
        
        public var authkey: String?
        
        public var type: String?
        
        public var provider: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case description = "description"
            
            case sender = "sender"
            
            case username = "username"
            
            case authkey = "authkey"
            
            case type = "type"
            
            case provider = "provider"
            
        }

        public init(name: String?, description: String?, sender: String?, username: String?, authkey: String?, type: String?, provider: String?) {
            
            self.name = name
            
            self.description = description
            
            self.sender = sender
            
            self.username = username
            
            self.authkey = authkey
            
            self.type = type
            
            self.provider = provider
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            description = try? container.decode(String.self, forKey: .description)
            
            sender = try? container.decode(String.self, forKey: .sender)
            
            username = try? container.decode(String.self, forKey: .username)
            
            authkey = try? container.decode(String.self, forKey: .authkey)
            
            type = try? container.decode(String.self, forKey: .type)
            
            provider = try? container.decode(String.self, forKey: .provider)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(sender, forKey: .sender)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(authkey, forKey: .authkey)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
        }
        
    }
    
    /*
        Model: SmsProvider
    */

    struct SmsProvider: Codable {
        
        
        public var rpt: Int?
        
        public var type: String?
        
        public var provider: String?
        
        public var id: String?
        
        public var name: String?
        
        public var description: String?
        
        public var sender: String?
        
        public var username: String?
        
        public var authkey: String?
        
        public var application: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var slug: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case rpt = "rpt"
            
            case type = "type"
            
            case provider = "provider"
            
            case id = "_id"
            
            case name = "name"
            
            case description = "description"
            
            case sender = "sender"
            
            case username = "username"
            
            case authkey = "authkey"
            
            case application = "application"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case slug = "slug"
            
            case v = "__v"
            
        }

        public init(rpt: Int?, type: String?, provider: String?, id: String?, name: String?, description: String?, sender: String?, username: String?, authkey: String?, application: String?, createdAt: String?, updatedAt: String?, slug: String?, v: Int?) {
            
            self.rpt = rpt
            
            self.type = type
            
            self.provider = provider
            
            self.id = id
            
            self.name = name
            
            self.description = description
            
            self.sender = sender
            
            self.username = username
            
            self.authkey = authkey
            
            self.application = application
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.slug = slug
            
            self.v = v
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            rpt = try? container.decode(Int.self, forKey: .rpt)
            
            type = try? container.decode(String.self, forKey: .type)
            
            provider = try? container.decode(String.self, forKey: .provider)
            
            id = try? container.decode(String.self, forKey: .id)
            
            name = try? container.decode(String.self, forKey: .name)
            
            description = try? container.decode(String.self, forKey: .description)
            
            sender = try? container.decode(String.self, forKey: .sender)
            
            username = try? container.decode(String.self, forKey: .username)
            
            authkey = try? container.decode(String.self, forKey: .authkey)
            
            application = try? container.decode(String.self, forKey: .application)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            v = try? container.decode(Int.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(rpt, forKey: .rpt)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(sender, forKey: .sender)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(authkey, forKey: .authkey)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: SmsProviders
    */

    struct SmsProviders: Codable {
        
        
        public var docs: [SmsProvider]?
        
        public var total: Int?
        
        public var limit: Int?
        
        public var offset: Int?
        
        public var page: Int?
        
        public var pages: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case total = "total"
            
            case limit = "limit"
            
            case offset = "offset"
            
            case page = "page"
            
            case pages = "pages"
            
        }

        public init(docs: [SmsProvider]?, total: Int?, limit: Int?, offset: Int?, page: Int?, pages: Int?) {
            
            self.docs = docs
            
            self.total = total
            
            self.limit = limit
            
            self.offset = offset
            
            self.page = page
            
            self.pages = pages
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([SmsProvider].self, forKey: .docs)
            
            total = try? container.decode(Int.self, forKey: .total)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            offset = try? container.decode(Int.self, forKey: .offset)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(offset, forKey: .offset)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
        }
        
    }
    
    /*
        Model: SmsTemplateDeleteSuccessRes
    */

    struct SmsTemplateDeleteSuccessRes: Codable {
        
        
        public var success: Bool?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(success: Bool?, message: String?) {
            
            self.success = success
            
            self.message = message
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: SmsTemplateDeleteFailureRes
    */

    struct SmsTemplateDeleteFailureRes: Codable {
        
        
        public var success: Bool?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(success: Bool?, message: String?) {
            
            self.success = success
            
            self.message = message
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: SmsTemplateReq
    */

    struct SmsTemplateReq: Codable {
        
        
        public var name: String?
        
        public var description: String?
        
        public var message: [String: Any]?
        
        public var templateVariables: [String: Any]?
        
        public var attachments: [[String: Any]]?
        
        public var priority: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case description = "description"
            
            case message = "message"
            
            case templateVariables = "templateVariables"
            
            case attachments = "attachments"
            
            case priority = "priority"
            
        }

        public init(name: String?, description: String?, message: [String: Any]?, templateVariables: [String: Any]?, attachments: [[String: Any]]?, priority: String?) {
            
            self.name = name
            
            self.description = description
            
            self.message = message
            
            self.templateVariables = templateVariables
            
            self.attachments = attachments
            
            self.priority = priority
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            description = try? container.decode(String.self, forKey: .description)
            
            message = try? container.decode([String: Any].self, forKey: .message)
            
            templateVariables = try? container.decode([String: Any].self, forKey: .templateVariables)
            
            attachments = try? container.decode([[String: Any]].self, forKey: .attachments)
            
            priority = try? container.decode(String.self, forKey: .priority)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(templateVariables, forKey: .templateVariables)
            
            try? container.encodeIfPresent(attachments, forKey: .attachments)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
        }
        
    }
    
    /*
        Model: SmsTemplateRes
    */

    struct SmsTemplateRes: Codable {
        
        
        public var isSystem: Bool?
        
        public var isInternal: Bool?
        
        public var description: String?
        
        public var tags: [[String: Any]]?
        
        public var priority: String?
        
        public var published: Bool?
        
        public var id: String?
        
        public var name: String?
        
        public var message: [String: Any]?
        
        public var templateVariables: [String: Any]?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var slug: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case isSystem = "is_system"
            
            case isInternal = "is_internal"
            
            case description = "description"
            
            case tags = "tags"
            
            case priority = "priority"
            
            case published = "published"
            
            case id = "_id"
            
            case name = "name"
            
            case message = "message"
            
            case templateVariables = "templateVariables"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case slug = "slug"
            
            case v = "__v"
            
        }

        public init(isSystem: Bool?, isInternal: Bool?, description: String?, tags: [[String: Any]]?, priority: String?, published: Bool?, id: String?, name: String?, message: [String: Any]?, templateVariables: [String: Any]?, createdAt: String?, updatedAt: String?, slug: String?, v: Int?) {
            
            self.isSystem = isSystem
            
            self.isInternal = isInternal
            
            self.description = description
            
            self.tags = tags
            
            self.priority = priority
            
            self.published = published
            
            self.id = id
            
            self.name = name
            
            self.message = message
            
            self.templateVariables = templateVariables
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.slug = slug
            
            self.v = v
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isSystem = try? container.decode(Bool.self, forKey: .isSystem)
            
            isInternal = try? container.decode(Bool.self, forKey: .isInternal)
            
            description = try? container.decode(String.self, forKey: .description)
            
            tags = try? container.decode([[String: Any]].self, forKey: .tags)
            
            priority = try? container.decode(String.self, forKey: .priority)
            
            published = try? container.decode(Bool.self, forKey: .published)
            
            id = try? container.decode(String.self, forKey: .id)
            
            name = try? container.decode(String.self, forKey: .name)
            
            message = try? container.decode([String: Any].self, forKey: .message)
            
            templateVariables = try? container.decode([String: Any].self, forKey: .templateVariables)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            v = try? container.decode(Int.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isSystem, forKey: .isSystem)
            
            try? container.encodeIfPresent(isInternal, forKey: .isInternal)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(templateVariables, forKey: .templateVariables)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: SmsTemplate
    */

    struct SmsTemplate: Codable {
        
        
        public var isSystem: Bool?
        
        public var isInternal: Bool?
        
        public var description: String?
        
        public var priority: String?
        
        public var tags: [[String: Any]]?
        
        public var published: Bool?
        
        public var id: String?
        
        public var slug: String?
        
        public var name: String?
        
        public var message: [String: Any]?
        
        public var templateVariables: [String: Any]?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case isSystem = "is_system"
            
            case isInternal = "is_internal"
            
            case description = "description"
            
            case priority = "priority"
            
            case tags = "tags"
            
            case published = "published"
            
            case id = "_id"
            
            case slug = "slug"
            
            case name = "name"
            
            case message = "message"
            
            case templateVariables = "templateVariables"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case v = "__v"
            
        }

        public init(isSystem: Bool?, isInternal: Bool?, description: String?, priority: String?, tags: [[String: Any]]?, published: Bool?, id: String?, slug: String?, name: String?, message: [String: Any]?, templateVariables: [String: Any]?, createdAt: String?, updatedAt: String?, v: Int?) {
            
            self.isSystem = isSystem
            
            self.isInternal = isInternal
            
            self.description = description
            
            self.priority = priority
            
            self.tags = tags
            
            self.published = published
            
            self.id = id
            
            self.slug = slug
            
            self.name = name
            
            self.message = message
            
            self.templateVariables = templateVariables
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.v = v
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isSystem = try? container.decode(Bool.self, forKey: .isSystem)
            
            isInternal = try? container.decode(Bool.self, forKey: .isInternal)
            
            description = try? container.decode(String.self, forKey: .description)
            
            priority = try? container.decode(String.self, forKey: .priority)
            
            tags = try? container.decode([[String: Any]].self, forKey: .tags)
            
            published = try? container.decode(Bool.self, forKey: .published)
            
            id = try? container.decode(String.self, forKey: .id)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            name = try? container.decode(String.self, forKey: .name)
            
            message = try? container.decode([String: Any].self, forKey: .message)
            
            templateVariables = try? container.decode([String: Any].self, forKey: .templateVariables)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            v = try? container.decode(Int.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isSystem, forKey: .isSystem)
            
            try? container.encodeIfPresent(isInternal, forKey: .isInternal)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(templateVariables, forKey: .templateVariables)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: SystemSmsTemplate
    */

    struct SystemSmsTemplate: Codable {
        
        
        public var isSystem: Bool?
        
        public var isInternal: Bool?
        
        public var description: String?
        
        public var tags: [[String: Any]]?
        
        public var priority: String?
        
        public var published: Bool?
        
        public var id: String?
        
        public var slug: String?
        
        public var name: String?
        
        public var message: [String: Any]?
        
        public var templateVariables: [String: Any]?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case isSystem = "is_system"
            
            case isInternal = "is_internal"
            
            case description = "description"
            
            case tags = "tags"
            
            case priority = "priority"
            
            case published = "published"
            
            case id = "_id"
            
            case slug = "slug"
            
            case name = "name"
            
            case message = "message"
            
            case templateVariables = "templateVariables"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case v = "__v"
            
        }

        public init(isSystem: Bool?, isInternal: Bool?, description: String?, tags: [[String: Any]]?, priority: String?, published: Bool?, id: String?, slug: String?, name: String?, message: [String: Any]?, templateVariables: [String: Any]?, createdAt: String?, updatedAt: String?, v: Int?) {
            
            self.isSystem = isSystem
            
            self.isInternal = isInternal
            
            self.description = description
            
            self.tags = tags
            
            self.priority = priority
            
            self.published = published
            
            self.id = id
            
            self.slug = slug
            
            self.name = name
            
            self.message = message
            
            self.templateVariables = templateVariables
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.v = v
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isSystem = try? container.decode(Bool.self, forKey: .isSystem)
            
            isInternal = try? container.decode(Bool.self, forKey: .isInternal)
            
            description = try? container.decode(String.self, forKey: .description)
            
            tags = try? container.decode([[String: Any]].self, forKey: .tags)
            
            priority = try? container.decode(String.self, forKey: .priority)
            
            published = try? container.decode(Bool.self, forKey: .published)
            
            id = try? container.decode(String.self, forKey: .id)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            name = try? container.decode(String.self, forKey: .name)
            
            message = try? container.decode([String: Any].self, forKey: .message)
            
            templateVariables = try? container.decode([String: Any].self, forKey: .templateVariables)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            v = try? container.decode(Int.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isSystem, forKey: .isSystem)
            
            try? container.encodeIfPresent(isInternal, forKey: .isInternal)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(templateVariables, forKey: .templateVariables)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: SmsTemplates
    */

    struct SmsTemplates: Codable {
        
        
        public var docs: [SmsTemplate]?
        
        public var total: Int?
        
        public var limit: Int?
        
        public var offset: Int?
        
        public var page: Int?
        
        public var pages: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case total = "total"
            
            case limit = "limit"
            
            case offset = "offset"
            
            case page = "page"
            
            case pages = "pages"
            
        }

        public init(docs: [SmsTemplate]?, total: Int?, limit: Int?, offset: Int?, page: Int?, pages: Int?) {
            
            self.docs = docs
            
            self.total = total
            
            self.limit = limit
            
            self.offset = offset
            
            self.page = page
            
            self.pages = pages
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([SmsTemplate].self, forKey: .docs)
            
            total = try? container.decode(Int.self, forKey: .total)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            offset = try? container.decode(Int.self, forKey: .offset)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(offset, forKey: .offset)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
        }
        
    }
    
    /*
        Model: SystemSmsTemplates
    */

    struct SystemSmsTemplates: Codable {
        
        
        public var docs: [SystemSmsTemplate]?
        
        public var total: Int?
        
        public var limit: Int?
        
        public var offset: Int?
        
        public var page: Int?
        
        public var pages: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case total = "total"
            
            case limit = "limit"
            
            case offset = "offset"
            
            case page = "page"
            
            case pages = "pages"
            
        }

        public init(docs: [SystemSmsTemplate]?, total: Int?, limit: Int?, offset: Int?, page: Int?, pages: Int?) {
            
            self.docs = docs
            
            self.total = total
            
            self.limit = limit
            
            self.offset = offset
            
            self.page = page
            
            self.pages = pages
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([SystemSmsTemplate].self, forKey: .docs)
            
            total = try? container.decode(Int.self, forKey: .total)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            offset = try? container.decode(Int.self, forKey: .offset)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(offset, forKey: .offset)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
        }
        
    }
    
    
    
    /*
        Model: UserSerializer
    */

    struct UserSerializer: Codable {
        
        
        public var username: String?
        
        public var userId: String?
        
        public var contact: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case username = "username"
            
            case userId = "user_id"
            
            case contact = "contact"
            
        }

        public init(username: String?, userId: String?, contact: String?) {
            
            self.username = username
            
            self.userId = userId
            
            self.contact = contact
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            username = try? container.decode(String.self, forKey: .username)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
            contact = try? container.decode(String.self, forKey: .contact)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
        }
        
    }
    
    /*
        Model: Website
    */

    struct Website: Codable {
        
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
        }

        public init(url: String?) {
            
            self.url = url
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            url = try? container.decode(String.self, forKey: .url)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
        }
        
    }
    
    /*
        Model: BusinessDetails
    */

    struct BusinessDetails: Codable {
        
        
        public var website: Website?
        

        public enum CodingKeys: String, CodingKey {
            
            case website = "website"
            
        }

        public init(website: Website?) {
            
            self.website = website
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            website = try? container.decode(Website.self, forKey: .website)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(website, forKey: .website)
            
        }
        
    }
    
    /*
        Model: GetAddressSerializer
    */

    struct GetAddressSerializer: Codable {
        
        
        public var address2: String?
        
        public var country: String?
        
        public var latitude: Double?
        
        public var city: String?
        
        public var longitude: Double?
        
        public var countryCode: String?
        
        public var pincode: Int?
        
        public var landmark: String?
        
        public var address1: String?
        
        public var addressType: String?
        
        public var state: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case address2 = "address2"
            
            case country = "country"
            
            case latitude = "latitude"
            
            case city = "city"
            
            case longitude = "longitude"
            
            case countryCode = "country_code"
            
            case pincode = "pincode"
            
            case landmark = "landmark"
            
            case address1 = "address1"
            
            case addressType = "address_type"
            
            case state = "state"
            
        }

        public init(address2: String?, country: String?, latitude: Double?, city: String?, longitude: Double?, countryCode: String?, pincode: Int?, landmark: String?, address1: String?, addressType: String?, state: String?) {
            
            self.address2 = address2
            
            self.country = country
            
            self.latitude = latitude
            
            self.city = city
            
            self.longitude = longitude
            
            self.countryCode = countryCode
            
            self.pincode = pincode
            
            self.landmark = landmark
            
            self.address1 = address1
            
            self.addressType = addressType
            
            self.state = state
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            address2 = try? container.decode(String.self, forKey: .address2)
            
            country = try? container.decode(String.self, forKey: .country)
            
            latitude = try? container.decode(Double.self, forKey: .latitude)
            
            city = try? container.decode(String.self, forKey: .city)
            
            longitude = try? container.decode(Double.self, forKey: .longitude)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            pincode = try? container.decode(Int.self, forKey: .pincode)
            
            landmark = try? container.decode(String.self, forKey: .landmark)
            
            address1 = try? container.decode(String.self, forKey: .address1)
            
            addressType = try? container.decode(String.self, forKey: .addressType)
            
            state = try? container.decode(String.self, forKey: .state)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(state, forKey: .state)
            
        }
        
    }
    
    /*
        Model: PhoneNumber
    */

    struct PhoneNumber: Codable {
        
        
        public var number: String
        
        public var countryCode: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case number = "number"
            
            case countryCode = "country_code"
            
        }

        public init(number: String, countryCode: Int) {
            
            self.number = number
            
            self.countryCode = countryCode
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            number = try container.decode(String.self, forKey: .number)
            
            countryCode = try container.decode(Int.self, forKey: .countryCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(number, forKey: .number)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
        }
        
    }
    
    /*
        Model: ContactDetails
    */

    struct ContactDetails: Codable {
        
        
        public var emails: [String]?
        
        public var phone: [PhoneNumber]?
        

        public enum CodingKeys: String, CodingKey {
            
            case emails = "emails"
            
            case phone = "phone"
            
        }

        public init(emails: [String]?, phone: [PhoneNumber]?) {
            
            self.emails = emails
            
            self.phone = phone
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            emails = try? container.decode([String].self, forKey: .emails)
            
            phone = try? container.decode([PhoneNumber].self, forKey: .phone)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(emails, forKey: .emails)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
        }
        
    }
    
    /*
        Model: BusinessCountryInfo
    */

    struct BusinessCountryInfo: Codable {
        
        
        public var countryCode: String?
        
        public var country: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case country = "country"
            
        }

        public init(countryCode: String?, country: String?) {
            
            self.countryCode = countryCode
            
            self.country = country
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            country = try? container.decode(String.self, forKey: .country)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
        }
        
    }
    
    /*
        Model: Document
    */

    struct Document: Codable {
        
        
        public var value: String
        
        public var legalName: String
        
        public var url: String?
        
        public var type: String
        
        public var verified: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case legalName = "legal_name"
            
            case url = "url"
            
            case type = "type"
            
            case verified = "verified"
            
        }

        public init(value: String, legalName: String, url: String?, type: String, verified: Bool?) {
            
            self.value = value
            
            self.legalName = legalName
            
            self.url = url
            
            self.type = type
            
            self.verified = verified
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            value = try container.decode(String.self, forKey: .value)
            
            legalName = try container.decode(String.self, forKey: .legalName)
            
            url = try? container.decode(String.self, forKey: .url)
            
            type = try container.decode(String.self, forKey: .type)
            
            verified = try? container.decode(Bool.self, forKey: .verified)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(legalName, forKey: .legalName)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
        }
        
    }
    
    /*
        Model: GetCompanyProfileSerializerResponse
    */

    struct GetCompanyProfileSerializerResponse: Codable {
        
        
        public var modifiedBy: UserSerializer?
        
        public var notificationEmails: [String]?
        
        public var businessInfo: String?
        
        public var businessType: String
        
        public var uid: Int
        
        public var businessDetails: BusinessDetails?
        
        public var createdOn: String?
        
        public var stage: String?
        
        public var addresses: [GetAddressSerializer]?
        
        public var verifiedOn: String?
        
        public var warnings: [String: Any]?
        
        public var verifiedBy: UserSerializer?
        
        public var franchiseEnabled: Bool?
        
        public var contactDetails: ContactDetails?
        
        public var companyType: String
        
        public var businessCountryInfo: BusinessCountryInfo?
        
        public var createdBy: UserSerializer?
        
        public var name: String?
        
        public var documents: [Document]?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case modifiedBy = "modified_by"
            
            case notificationEmails = "notification_emails"
            
            case businessInfo = "business_info"
            
            case businessType = "business_type"
            
            case uid = "uid"
            
            case businessDetails = "business_details"
            
            case createdOn = "created_on"
            
            case stage = "stage"
            
            case addresses = "addresses"
            
            case verifiedOn = "verified_on"
            
            case warnings = "warnings"
            
            case verifiedBy = "verified_by"
            
            case franchiseEnabled = "franchise_enabled"
            
            case contactDetails = "contact_details"
            
            case companyType = "company_type"
            
            case businessCountryInfo = "business_country_info"
            
            case createdBy = "created_by"
            
            case name = "name"
            
            case documents = "documents"
            
            case modifiedOn = "modified_on"
            
        }

        public init(modifiedBy: UserSerializer?, notificationEmails: [String]?, businessInfo: String?, businessType: String, uid: Int, businessDetails: BusinessDetails?, createdOn: String?, stage: String?, addresses: [GetAddressSerializer]?, verifiedOn: String?, warnings: [String: Any]?, verifiedBy: UserSerializer?, franchiseEnabled: Bool?, contactDetails: ContactDetails?, companyType: String, businessCountryInfo: BusinessCountryInfo?, createdBy: UserSerializer?, name: String?, documents: [Document]?, modifiedOn: String?) {
            
            self.modifiedBy = modifiedBy
            
            self.notificationEmails = notificationEmails
            
            self.businessInfo = businessInfo
            
            self.businessType = businessType
            
            self.uid = uid
            
            self.businessDetails = businessDetails
            
            self.createdOn = createdOn
            
            self.stage = stage
            
            self.addresses = addresses
            
            self.verifiedOn = verifiedOn
            
            self.warnings = warnings
            
            self.verifiedBy = verifiedBy
            
            self.franchiseEnabled = franchiseEnabled
            
            self.contactDetails = contactDetails
            
            self.companyType = companyType
            
            self.businessCountryInfo = businessCountryInfo
            
            self.createdBy = createdBy
            
            self.name = name
            
            self.documents = documents
            
            self.modifiedOn = modifiedOn
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            modifiedBy = try? container.decode(UserSerializer.self, forKey: .modifiedBy)
            
            notificationEmails = try? container.decode([String].self, forKey: .notificationEmails)
            
            businessInfo = try? container.decode(String.self, forKey: .businessInfo)
            
            businessType = try container.decode(String.self, forKey: .businessType)
            
            uid = try container.decode(Int.self, forKey: .uid)
            
            businessDetails = try? container.decode(BusinessDetails.self, forKey: .businessDetails)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            stage = try? container.decode(String.self, forKey: .stage)
            
            addresses = try? container.decode([GetAddressSerializer].self, forKey: .addresses)
            
            verifiedOn = try? container.decode(String.self, forKey: .verifiedOn)
            
            warnings = try? container.decode([String: Any].self, forKey: .warnings)
            
            verifiedBy = try? container.decode(UserSerializer.self, forKey: .verifiedBy)
            
            franchiseEnabled = try? container.decode(Bool.self, forKey: .franchiseEnabled)
            
            contactDetails = try? container.decode(ContactDetails.self, forKey: .contactDetails)
            
            companyType = try container.decode(String.self, forKey: .companyType)
            
            businessCountryInfo = try? container.decode(BusinessCountryInfo.self, forKey: .businessCountryInfo)
            
            createdBy = try? container.decode(UserSerializer.self, forKey: .createdBy)
            
            name = try? container.decode(String.self, forKey: .name)
            
            documents = try? container.decode([Document].self, forKey: .documents)
            
            modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(addresses, forKey: .addresses)
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
            
            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)
            
            try? container.encodeIfPresent(companyType, forKey: .companyType)
            
            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
        }
        
    }
    
    /*
        Model: ErrorResponse
    */

    struct ErrorResponse: Codable {
        
        
        public var message: String?
        
        public var errors: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case errors = "errors"
            
        }

        public init(message: String?, errors: [String: Any]?) {
            
            self.message = message
            
            self.errors = errors
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            errors = try? container.decode([String: Any].self, forKey: .errors)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
        }
        
    }
    
    /*
        Model: BusinessCountryInfo1
    */

    struct BusinessCountryInfo1: Codable {
        
        
        public var countryCode: String?
        
        public var country: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case country = "country"
            
        }

        public init(countryCode: String?, country: String?) {
            
            self.countryCode = countryCode
            
            self.country = country
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            country = try? container.decode(String.self, forKey: .country)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
        }
        
    }
    
    /*
        Model: ReferralInfo
    */

    struct ReferralInfo: Codable {
        
        
        public var referralCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case referralCode = "referral_code"
            
        }

        public init(referralCode: String?) {
            
            self.referralCode = referralCode
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            referralCode = try? container.decode(String.self, forKey: .referralCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(referralCode, forKey: .referralCode)
            
        }
        
    }
    
    /*
        Model: CompanyAddress
    */

    struct CompanyAddress: Codable {
        
        
        public var address2: String?
        
        public var country: String
        
        public var latitude: Double
        
        public var city: String
        
        public var longitude: Double
        
        public var countryCode: String?
        
        public var pincode: Int
        
        public var landmark: String?
        
        public var address1: String
        
        public var state: String
        

        public enum CodingKeys: String, CodingKey {
            
            case address2 = "address2"
            
            case country = "country"
            
            case latitude = "latitude"
            
            case city = "city"
            
            case longitude = "longitude"
            
            case countryCode = "country_code"
            
            case pincode = "pincode"
            
            case landmark = "landmark"
            
            case address1 = "address1"
            
            case state = "state"
            
        }

        public init(address2: String?, country: String, latitude: Double, city: String, longitude: Double, countryCode: String?, pincode: Int, landmark: String?, address1: String, state: String) {
            
            self.address2 = address2
            
            self.country = country
            
            self.latitude = latitude
            
            self.city = city
            
            self.longitude = longitude
            
            self.countryCode = countryCode
            
            self.pincode = pincode
            
            self.landmark = landmark
            
            self.address1 = address1
            
            self.state = state
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            address2 = try? container.decode(String.self, forKey: .address2)
            
            country = try container.decode(String.self, forKey: .country)
            
            latitude = try container.decode(Double.self, forKey: .latitude)
            
            city = try container.decode(String.self, forKey: .city)
            
            longitude = try container.decode(Double.self, forKey: .longitude)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            pincode = try container.decode(Int.self, forKey: .pincode)
            
            landmark = try? container.decode(String.self, forKey: .landmark)
            
            address1 = try container.decode(String.self, forKey: .address1)
            
            state = try container.decode(String.self, forKey: .state)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            try? container.encodeIfPresent(state, forKey: .state)
            
        }
        
    }
    
    /*
        Model: CompanyStoreSerializerRequest
    */

    struct CompanyStoreSerializerRequest: Codable {
        
        
        public var uid: Int?
        
        public var businessCountryInfo: BusinessCountryInfo1
        
        public var franchiseEnabled: Bool?
        
        public var brands: [Int]
        
        public var name: String
        
        public var document: Document
        
        public var businessInfo: String?
        
        public var referralInfo: ReferralInfo?
        
        public var notificationEmails: [String]?
        
        public var address: CompanyAddress
        
        public var businessType: String
        
        public var warnings: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case businessCountryInfo = "business_country_info"
            
            case franchiseEnabled = "franchise_enabled"
            
            case brands = "brands"
            
            case name = "name"
            
            case document = "document"
            
            case businessInfo = "business_info"
            
            case referralInfo = "referral_info"
            
            case notificationEmails = "notification_emails"
            
            case address = "address"
            
            case businessType = "business_type"
            
            case warnings = "warnings"
            
        }

        public init(uid: Int?, businessCountryInfo: BusinessCountryInfo1, franchiseEnabled: Bool?, brands: [Int], name: String, document: Document, businessInfo: String?, referralInfo: ReferralInfo?, notificationEmails: [String]?, address: CompanyAddress, businessType: String, warnings: [String: Any]?) {
            
            self.uid = uid
            
            self.businessCountryInfo = businessCountryInfo
            
            self.franchiseEnabled = franchiseEnabled
            
            self.brands = brands
            
            self.name = name
            
            self.document = document
            
            self.businessInfo = businessInfo
            
            self.referralInfo = referralInfo
            
            self.notificationEmails = notificationEmails
            
            self.address = address
            
            self.businessType = businessType
            
            self.warnings = warnings
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            businessCountryInfo = try container.decode(BusinessCountryInfo1.self, forKey: .businessCountryInfo)
            
            franchiseEnabled = try? container.decode(Bool.self, forKey: .franchiseEnabled)
            
            brands = try container.decode([Int].self, forKey: .brands)
            
            name = try container.decode(String.self, forKey: .name)
            
            document = try container.decode(Document.self, forKey: .document)
            
            businessInfo = try? container.decode(String.self, forKey: .businessInfo)
            
            referralInfo = try? container.decode(ReferralInfo.self, forKey: .referralInfo)
            
            notificationEmails = try? container.decode([String].self, forKey: .notificationEmails)
            
            address = try container.decode(CompanyAddress.self, forKey: .address)
            
            businessType = try container.decode(String.self, forKey: .businessType)
            
            warnings = try? container.decode([String: Any].self, forKey: .warnings)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)
            
            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(document, forKey: .document)
            
            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
            
            try? container.encodeIfPresent(referralInfo, forKey: .referralInfo)
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
        }
        
    }
    
    /*
        Model: SuccessResponse
    */

    struct SuccessResponse: Codable {
        
        
        public var uid: Int?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case success = "success"
            
        }

        public init(uid: Int?, success: Bool?) {
            
            self.uid = uid
            
            self.success = success
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: DocumentsObj
    */

    struct DocumentsObj: Codable {
        
        
        public var verified: Int?
        
        public var pending: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case verified = "verified"
            
            case pending = "pending"
            
        }

        public init(verified: Int?, pending: Int?) {
            
            self.verified = verified
            
            self.pending = pending
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            verified = try? container.decode(Int.self, forKey: .verified)
            
            pending = try? container.decode(Int.self, forKey: .pending)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            try? container.encodeIfPresent(pending, forKey: .pending)
            
        }
        
    }
    
    /*
        Model: MetricsSerializer
    */

    struct MetricsSerializer: Codable {
        
        
        public var uid: Int?
        
        public var stage: String?
        
        public var store: DocumentsObj?
        
        public var storeDocuments: DocumentsObj?
        
        public var product: DocumentsObj?
        
        public var brand: DocumentsObj?
        
        public var companyDocuments: DocumentsObj?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case stage = "stage"
            
            case store = "store"
            
            case storeDocuments = "store_documents"
            
            case product = "product"
            
            case brand = "brand"
            
            case companyDocuments = "company_documents"
            
        }

        public init(uid: Int?, stage: String?, store: DocumentsObj?, storeDocuments: DocumentsObj?, product: DocumentsObj?, brand: DocumentsObj?, companyDocuments: DocumentsObj?) {
            
            self.uid = uid
            
            self.stage = stage
            
            self.store = store
            
            self.storeDocuments = storeDocuments
            
            self.product = product
            
            self.brand = brand
            
            self.companyDocuments = companyDocuments
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            stage = try? container.decode(String.self, forKey: .stage)
            
            store = try? container.decode(DocumentsObj.self, forKey: .store)
            
            storeDocuments = try? container.decode(DocumentsObj.self, forKey: .storeDocuments)
            
            product = try? container.decode(DocumentsObj.self, forKey: .product)
            
            brand = try? container.decode(DocumentsObj.self, forKey: .brand)
            
            companyDocuments = try? container.decode(DocumentsObj.self, forKey: .companyDocuments)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            try? container.encodeIfPresent(storeDocuments, forKey: .storeDocuments)
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            try? container.encodeIfPresent(companyDocuments, forKey: .companyDocuments)
            
        }
        
    }
    
    /*
        Model: BrandBannerSerializer
    */

    struct BrandBannerSerializer: Codable {
        
        
        public var landscape: String?
        
        public var portrait: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case landscape = "landscape"
            
            case portrait = "portrait"
            
        }

        public init(landscape: String?, portrait: String?) {
            
            self.landscape = landscape
            
            self.portrait = portrait
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            landscape = try? container.decode(String.self, forKey: .landscape)
            
            portrait = try? container.decode(String.self, forKey: .portrait)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(landscape, forKey: .landscape)
            
            try? container.encodeIfPresent(portrait, forKey: .portrait)
            
        }
        
    }
    
    /*
        Model: CreateUpdateBrandRequestSerializer
    */

    struct CreateUpdateBrandRequestSerializer: Codable {
        
        
        public var uid: Int?
        
        public var localeLanguage: [String: Any]?
        
        public var banner: BrandBannerSerializer?
        
        public var logo: String
        
        public var companyId: Int?
        
        public var brandTier: String?
        
        public var name: String
        
        public var description: String?
        
        public var customJson: [String: Any]?
        
        public var synonyms: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case localeLanguage = "_locale_language"
            
            case banner = "banner"
            
            case logo = "logo"
            
            case companyId = "company_id"
            
            case brandTier = "brand_tier"
            
            case name = "name"
            
            case description = "description"
            
            case customJson = "_custom_json"
            
            case synonyms = "synonyms"
            
        }

        public init(uid: Int?, localeLanguage: [String: Any]?, banner: BrandBannerSerializer?, logo: String, companyId: Int?, brandTier: String?, name: String, description: String?, customJson: [String: Any]?, synonyms: [String]?) {
            
            self.uid = uid
            
            self.localeLanguage = localeLanguage
            
            self.banner = banner
            
            self.logo = logo
            
            self.companyId = companyId
            
            self.brandTier = brandTier
            
            self.name = name
            
            self.description = description
            
            self.customJson = customJson
            
            self.synonyms = synonyms
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            localeLanguage = try? container.decode([String: Any].self, forKey: .localeLanguage)
            
            banner = try? container.decode(BrandBannerSerializer.self, forKey: .banner)
            
            logo = try container.decode(String.self, forKey: .logo)
            
            companyId = try? container.decode(Int.self, forKey: .companyId)
            
            brandTier = try? container.decode(String.self, forKey: .brandTier)
            
            name = try container.decode(String.self, forKey: .name)
            
            description = try? container.decode(String.self, forKey: .description)
            
            customJson = try? container.decode([String: Any].self, forKey: .customJson)
            
            synonyms = try? container.decode([String].self, forKey: .synonyms)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            try? container.encodeIfPresent(banner, forKey: .banner)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            try? container.encodeIfPresent(brandTier, forKey: .brandTier)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
        }
        
    }
    
    /*
        Model: UserSerializer1
    */

    struct UserSerializer1: Codable {
        
        
        public var username: String?
        
        public var userId: String?
        
        public var contact: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case username = "username"
            
            case userId = "user_id"
            
            case contact = "contact"
            
        }

        public init(username: String?, userId: String?, contact: String?) {
            
            self.username = username
            
            self.userId = userId
            
            self.contact = contact
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            username = try? container.decode(String.self, forKey: .username)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
            contact = try? container.decode(String.self, forKey: .contact)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
        }
        
    }
    
    /*
        Model: GetBrandResponseSerializer
    */

    struct GetBrandResponseSerializer: Codable {
        
        
        public var uid: Int?
        
        public var localeLanguage: [String: Any]?
        
        public var verifiedBy: UserSerializer1?
        
        public var createdOn: String?
        
        public var banner: BrandBannerSerializer?
        
        public var logo: String?
        
        public var stage: String?
        
        public var createdBy: UserSerializer1?
        
        public var name: String
        
        public var rejectReason: String?
        
        public var modifiedBy: UserSerializer1?
        
        public var slugKey: String?
        
        public var description: String?
        
        public var modifiedOn: String?
        
        public var verifiedOn: String?
        
        public var warnings: [String: Any]?
        
        public var customJson: [String: Any]?
        
        public var synonyms: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case localeLanguage = "_locale_language"
            
            case verifiedBy = "verified_by"
            
            case createdOn = "created_on"
            
            case banner = "banner"
            
            case logo = "logo"
            
            case stage = "stage"
            
            case createdBy = "created_by"
            
            case name = "name"
            
            case rejectReason = "reject_reason"
            
            case modifiedBy = "modified_by"
            
            case slugKey = "slug_key"
            
            case description = "description"
            
            case modifiedOn = "modified_on"
            
            case verifiedOn = "verified_on"
            
            case warnings = "warnings"
            
            case customJson = "_custom_json"
            
            case synonyms = "synonyms"
            
        }

        public init(uid: Int?, localeLanguage: [String: Any]?, verifiedBy: UserSerializer1?, createdOn: String?, banner: BrandBannerSerializer?, logo: String?, stage: String?, createdBy: UserSerializer1?, name: String, rejectReason: String?, modifiedBy: UserSerializer1?, slugKey: String?, description: String?, modifiedOn: String?, verifiedOn: String?, warnings: [String: Any]?, customJson: [String: Any]?, synonyms: [String]?) {
            
            self.uid = uid
            
            self.localeLanguage = localeLanguage
            
            self.verifiedBy = verifiedBy
            
            self.createdOn = createdOn
            
            self.banner = banner
            
            self.logo = logo
            
            self.stage = stage
            
            self.createdBy = createdBy
            
            self.name = name
            
            self.rejectReason = rejectReason
            
            self.modifiedBy = modifiedBy
            
            self.slugKey = slugKey
            
            self.description = description
            
            self.modifiedOn = modifiedOn
            
            self.verifiedOn = verifiedOn
            
            self.warnings = warnings
            
            self.customJson = customJson
            
            self.synonyms = synonyms
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            localeLanguage = try? container.decode([String: Any].self, forKey: .localeLanguage)
            
            verifiedBy = try? container.decode(UserSerializer1.self, forKey: .verifiedBy)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            banner = try? container.decode(BrandBannerSerializer.self, forKey: .banner)
            
            logo = try? container.decode(String.self, forKey: .logo)
            
            stage = try? container.decode(String.self, forKey: .stage)
            
            createdBy = try? container.decode(UserSerializer1.self, forKey: .createdBy)
            
            name = try container.decode(String.self, forKey: .name)
            
            rejectReason = try? container.decode(String.self, forKey: .rejectReason)
            
            modifiedBy = try? container.decode(UserSerializer1.self, forKey: .modifiedBy)
            
            slugKey = try? container.decode(String.self, forKey: .slugKey)
            
            description = try? container.decode(String.self, forKey: .description)
            
            modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
            
            verifiedOn = try? container.decode(String.self, forKey: .verifiedOn)
            
            warnings = try? container.decode([String: Any].self, forKey: .warnings)
            
            customJson = try? container.decode([String: Any].self, forKey: .customJson)
            
            synonyms = try? container.decode([String].self, forKey: .synonyms)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(banner, forKey: .banner)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(slugKey, forKey: .slugKey)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
        }
        
    }
    
    /*
        Model: CompanyBrandListSerializer
    */

    struct CompanyBrandListSerializer: Codable {
        
        
        public var items: [[String: Any]]?
        
        public var page: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [[String: Any]]?, page: [String: Any]?) {
            
            self.items = items
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([[String: Any]].self, forKey: .items)
            
            page = try? container.decode([String: Any].self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: CompanyBrandPostRequestSerializer
    */

    struct CompanyBrandPostRequestSerializer: Codable {
        
        
        public var brands: [Int]
        
        public var uid: Int?
        
        public var company: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case brands = "brands"
            
            case uid = "uid"
            
            case company = "company"
            
        }

        public init(brands: [Int], uid: Int?, company: Int) {
            
            self.brands = brands
            
            self.uid = uid
            
            self.company = company
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            brands = try container.decode([Int].self, forKey: .brands)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            company = try container.decode(Int.self, forKey: .company)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(company, forKey: .company)
            
        }
        
    }
    
    /*
        Model: LocationListSerializer
    */

    struct LocationListSerializer: Codable {
        
        
        public var items: [[String: Any]]?
        
        public var page: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [[String: Any]]?, page: [String: Any]?) {
            
            self.items = items
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([[String: Any]].self, forKey: .items)
            
            page = try? container.decode([String: Any].self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: ProductReturnConfigSerializer
    */

    struct ProductReturnConfigSerializer: Codable {
        
        
        public var storeUid: Int?
        
        public var onSameStore: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeUid = "store_uid"
            
            case onSameStore = "on_same_store"
            
        }

        public init(storeUid: Int?, onSameStore: Bool?) {
            
            self.storeUid = storeUid
            
            self.onSameStore = onSameStore
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            storeUid = try? container.decode(Int.self, forKey: .storeUid)
            
            onSameStore = try? container.decode(Bool.self, forKey: .onSameStore)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(storeUid, forKey: .storeUid)
            
            try? container.encodeIfPresent(onSameStore, forKey: .onSameStore)
            
        }
        
    }
    
    /*
        Model: InvoiceCredSerializer
    */

    struct InvoiceCredSerializer: Codable {
        
        
        public var username: String?
        
        public var enabled: Bool?
        
        public var password: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case username = "username"
            
            case enabled = "enabled"
            
            case password = "password"
            
        }

        public init(username: String?, enabled: Bool?, password: String?) {
            
            self.username = username
            
            self.enabled = enabled
            
            self.password = password
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            username = try? container.decode(String.self, forKey: .username)
            
            enabled = try? container.decode(Bool.self, forKey: .enabled)
            
            password = try? container.decode(String.self, forKey: .password)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
        }
        
    }
    
    /*
        Model: InvoiceDetailsSerializer
    */

    struct InvoiceDetailsSerializer: Codable {
        
        
        public var eInvoice: InvoiceCredSerializer?
        
        public var eWaybill: InvoiceCredSerializer?
        

        public enum CodingKeys: String, CodingKey {
            
            case eInvoice = "e_invoice"
            
            case eWaybill = "e_waybill"
            
        }

        public init(eInvoice: InvoiceCredSerializer?, eWaybill: InvoiceCredSerializer?) {
            
            self.eInvoice = eInvoice
            
            self.eWaybill = eWaybill
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            eInvoice = try? container.decode(InvoiceCredSerializer.self, forKey: .eInvoice)
            
            eWaybill = try? container.decode(InvoiceCredSerializer.self, forKey: .eWaybill)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(eInvoice, forKey: .eInvoice)
            
            try? container.encodeIfPresent(eWaybill, forKey: .eWaybill)
            
        }
        
    }
    
    /*
        Model: GetAddressSerializer1
    */

    struct GetAddressSerializer1: Codable {
        
        
        public var address2: String?
        
        public var country: String?
        
        public var latitude: Double?
        
        public var city: String?
        
        public var longitude: Double?
        
        public var countryCode: String?
        
        public var pincode: Int?
        
        public var landmark: String?
        
        public var address1: String?
        
        public var addressType: String?
        
        public var state: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case address2 = "address2"
            
            case country = "country"
            
            case latitude = "latitude"
            
            case city = "city"
            
            case longitude = "longitude"
            
            case countryCode = "country_code"
            
            case pincode = "pincode"
            
            case landmark = "landmark"
            
            case address1 = "address1"
            
            case addressType = "address_type"
            
            case state = "state"
            
        }

        public init(address2: String?, country: String?, latitude: Double?, city: String?, longitude: Double?, countryCode: String?, pincode: Int?, landmark: String?, address1: String?, addressType: String?, state: String?) {
            
            self.address2 = address2
            
            self.country = country
            
            self.latitude = latitude
            
            self.city = city
            
            self.longitude = longitude
            
            self.countryCode = countryCode
            
            self.pincode = pincode
            
            self.landmark = landmark
            
            self.address1 = address1
            
            self.addressType = addressType
            
            self.state = state
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            address2 = try? container.decode(String.self, forKey: .address2)
            
            country = try? container.decode(String.self, forKey: .country)
            
            latitude = try? container.decode(Double.self, forKey: .latitude)
            
            city = try? container.decode(String.self, forKey: .city)
            
            longitude = try? container.decode(Double.self, forKey: .longitude)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            pincode = try? container.decode(Int.self, forKey: .pincode)
            
            landmark = try? container.decode(String.self, forKey: .landmark)
            
            address1 = try? container.decode(String.self, forKey: .address1)
            
            addressType = try? container.decode(String.self, forKey: .addressType)
            
            state = try? container.decode(String.self, forKey: .state)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(state, forKey: .state)
            
        }
        
    }
    
    /*
        Model: LocationTimingSerializer
    */

    struct LocationTimingSerializer: Codable {
        
        
        public var minute: Int?
        
        public var hour: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case minute = "minute"
            
            case hour = "hour"
            
        }

        public init(minute: Int?, hour: Int?) {
            
            self.minute = minute
            
            self.hour = hour
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            minute = try? container.decode(Int.self, forKey: .minute)
            
            hour = try? container.decode(Int.self, forKey: .hour)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(minute, forKey: .minute)
            
            try? container.encodeIfPresent(hour, forKey: .hour)
            
        }
        
    }
    
    /*
        Model: LocationDayWiseSerializer
    */

    struct LocationDayWiseSerializer: Codable {
        
        
        public var opening: LocationTimingSerializer?
        
        public var weekday: String
        
        public var open: Bool
        
        public var closing: LocationTimingSerializer?
        

        public enum CodingKeys: String, CodingKey {
            
            case opening = "opening"
            
            case weekday = "weekday"
            
            case open = "open"
            
            case closing = "closing"
            
        }

        public init(opening: LocationTimingSerializer?, weekday: String, open: Bool, closing: LocationTimingSerializer?) {
            
            self.opening = opening
            
            self.weekday = weekday
            
            self.open = open
            
            self.closing = closing
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            opening = try? container.decode(LocationTimingSerializer.self, forKey: .opening)
            
            weekday = try container.decode(String.self, forKey: .weekday)
            
            open = try container.decode(Bool.self, forKey: .open)
            
            closing = try? container.decode(LocationTimingSerializer.self, forKey: .closing)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(opening, forKey: .opening)
            
            try? container.encodeIfPresent(weekday, forKey: .weekday)
            
            try? container.encodeIfPresent(open, forKey: .open)
            
            try? container.encodeIfPresent(closing, forKey: .closing)
            
        }
        
    }
    
    /*
        Model: LocationManagerSerializer
    */

    struct LocationManagerSerializer: Codable {
        
        
        public var mobileNo: PhoneNumber
        
        public var name: String?
        
        public var email: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case mobileNo = "mobile_no"
            
            case name = "name"
            
            case email = "email"
            
        }

        public init(mobileNo: PhoneNumber, name: String?, email: String?) {
            
            self.mobileNo = mobileNo
            
            self.name = name
            
            self.email = email
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            mobileNo = try container.decode(PhoneNumber.self, forKey: .mobileNo)
            
            name = try? container.decode(String.self, forKey: .name)
            
            email = try? container.decode(String.self, forKey: .email)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
        }
        
    }
    
    /*
        Model: LocationSerializer
    */

    struct LocationSerializer: Codable {
        
        
        public var uid: Int?
        
        public var displayName: String
        
        public var storeType: String?
        
        public var code: String
        
        public var productReturnConfig: ProductReturnConfigSerializer?
        
        public var stage: String?
        
        public var company: Int
        
        public var contactNumbers: [PhoneNumber]?
        
        public var name: String
        
        public var customJson: [String: Any]?
        
        public var documents: [Document]?
        
        public var gstCredentials: InvoiceDetailsSerializer?
        
        public var notificationEmails: [String]?
        
        public var address: GetAddressSerializer1
        
        public var timing: [LocationDayWiseSerializer]?
        
        public var manager: LocationManagerSerializer?
        
        public var warnings: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case displayName = "display_name"
            
            case storeType = "store_type"
            
            case code = "code"
            
            case productReturnConfig = "product_return_config"
            
            case stage = "stage"
            
            case company = "company"
            
            case contactNumbers = "contact_numbers"
            
            case name = "name"
            
            case customJson = "_custom_json"
            
            case documents = "documents"
            
            case gstCredentials = "gst_credentials"
            
            case notificationEmails = "notification_emails"
            
            case address = "address"
            
            case timing = "timing"
            
            case manager = "manager"
            
            case warnings = "warnings"
            
        }

        public init(uid: Int?, displayName: String, storeType: String?, code: String, productReturnConfig: ProductReturnConfigSerializer?, stage: String?, company: Int, contactNumbers: [PhoneNumber]?, name: String, customJson: [String: Any]?, documents: [Document]?, gstCredentials: InvoiceDetailsSerializer?, notificationEmails: [String]?, address: GetAddressSerializer1, timing: [LocationDayWiseSerializer]?, manager: LocationManagerSerializer?, warnings: [String: Any]?) {
            
            self.uid = uid
            
            self.displayName = displayName
            
            self.storeType = storeType
            
            self.code = code
            
            self.productReturnConfig = productReturnConfig
            
            self.stage = stage
            
            self.company = company
            
            self.contactNumbers = contactNumbers
            
            self.name = name
            
            self.customJson = customJson
            
            self.documents = documents
            
            self.gstCredentials = gstCredentials
            
            self.notificationEmails = notificationEmails
            
            self.address = address
            
            self.timing = timing
            
            self.manager = manager
            
            self.warnings = warnings
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            storeType = try? container.decode(String.self, forKey: .storeType)
            
            code = try container.decode(String.self, forKey: .code)
            
            productReturnConfig = try? container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)
            
            stage = try? container.decode(String.self, forKey: .stage)
            
            company = try container.decode(Int.self, forKey: .company)
            
            contactNumbers = try? container.decode([PhoneNumber].self, forKey: .contactNumbers)
            
            name = try container.decode(String.self, forKey: .name)
            
            customJson = try? container.decode([String: Any].self, forKey: .customJson)
            
            documents = try? container.decode([Document].self, forKey: .documents)
            
            gstCredentials = try? container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)
            
            notificationEmails = try? container.decode([String].self, forKey: .notificationEmails)
            
            address = try container.decode(GetAddressSerializer1.self, forKey: .address)
            
            timing = try? container.decode([LocationDayWiseSerializer].self, forKey: .timing)
            
            manager = try? container.decode(LocationManagerSerializer.self, forKey: .manager)
            
            warnings = try? container.decode([String: Any].self, forKey: .warnings)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            try? container.encodeIfPresent(manager, forKey: .manager)
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
        }
        
    }
    
    /*
        Model: LocationIntegrationType
    */

    struct LocationIntegrationType: Codable {
        
        
        public var order: String?
        
        public var inventory: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case order = "order"
            
            case inventory = "inventory"
            
        }

        public init(order: String?, inventory: String?) {
            
            self.order = order
            
            self.inventory = inventory
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            order = try? container.decode(String.self, forKey: .order)
            
            inventory = try? container.decode(String.self, forKey: .inventory)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(order, forKey: .order)
            
            try? container.encodeIfPresent(inventory, forKey: .inventory)
            
        }
        
    }
    
    /*
        Model: GetCompanySerializer
    */

    struct GetCompanySerializer: Codable {
        
        
        public var uid: Int?
        
        public var companyType: String?
        
        public var verifiedBy: UserSerializer?
        
        public var createdOn: String?
        
        public var stage: String?
        
        public var addresses: [GetAddressSerializer]?
        
        public var createdBy: UserSerializer?
        
        public var name: String?
        
        public var rejectReason: String?
        
        public var modifiedBy: UserSerializer?
        
        public var modifiedOn: String?
        
        public var verifiedOn: String?
        
        public var businessType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case companyType = "company_type"
            
            case verifiedBy = "verified_by"
            
            case createdOn = "created_on"
            
            case stage = "stage"
            
            case addresses = "addresses"
            
            case createdBy = "created_by"
            
            case name = "name"
            
            case rejectReason = "reject_reason"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case verifiedOn = "verified_on"
            
            case businessType = "business_type"
            
        }

        public init(uid: Int?, companyType: String?, verifiedBy: UserSerializer?, createdOn: String?, stage: String?, addresses: [GetAddressSerializer]?, createdBy: UserSerializer?, name: String?, rejectReason: String?, modifiedBy: UserSerializer?, modifiedOn: String?, verifiedOn: String?, businessType: String?) {
            
            self.uid = uid
            
            self.companyType = companyType
            
            self.verifiedBy = verifiedBy
            
            self.createdOn = createdOn
            
            self.stage = stage
            
            self.addresses = addresses
            
            self.createdBy = createdBy
            
            self.name = name
            
            self.rejectReason = rejectReason
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.verifiedOn = verifiedOn
            
            self.businessType = businessType
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            companyType = try? container.decode(String.self, forKey: .companyType)
            
            verifiedBy = try? container.decode(UserSerializer.self, forKey: .verifiedBy)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            stage = try? container.decode(String.self, forKey: .stage)
            
            addresses = try? container.decode([GetAddressSerializer].self, forKey: .addresses)
            
            createdBy = try? container.decode(UserSerializer.self, forKey: .createdBy)
            
            name = try? container.decode(String.self, forKey: .name)
            
            rejectReason = try? container.decode(String.self, forKey: .rejectReason)
            
            modifiedBy = try? container.decode(UserSerializer.self, forKey: .modifiedBy)
            
            modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
            
            verifiedOn = try? container.decode(String.self, forKey: .verifiedOn)
            
            businessType = try? container.decode(String.self, forKey: .businessType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(companyType, forKey: .companyType)
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(addresses, forKey: .addresses)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
        }
        
    }
    
    /*
        Model: GetLocationSerializer
    */

    struct GetLocationSerializer: Codable {
        
        
        public var code: String
        
        public var contactNumbers: [PhoneNumber]?
        
        public var integrationType: LocationIntegrationType?
        
        public var modifiedBy: UserSerializer1?
        
        public var notificationEmails: [String]?
        
        public var uid: Int?
        
        public var displayName: String
        
        public var storeType: String?
        
        public var createdOn: String?
        
        public var stage: String?
        
        public var company: GetCompanySerializer?
        
        public var gstCredentials: InvoiceDetailsSerializer?
        
        public var verifiedOn: String?
        
        public var warnings: [String: Any]?
        
        public var verifiedBy: UserSerializer1?
        
        public var productReturnConfig: ProductReturnConfigSerializer?
        
        public var customJson: [String: Any]?
        
        public var timing: [LocationDayWiseSerializer]?
        
        public var phoneNumber: String
        
        public var createdBy: UserSerializer1?
        
        public var name: String
        
        public var documents: [Document]?
        
        public var modifiedOn: String?
        
        public var address: GetAddressSerializer
        
        public var manager: LocationManagerSerializer?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case contactNumbers = "contact_numbers"
            
            case integrationType = "integration_type"
            
            case modifiedBy = "modified_by"
            
            case notificationEmails = "notification_emails"
            
            case uid = "uid"
            
            case displayName = "display_name"
            
            case storeType = "store_type"
            
            case createdOn = "created_on"
            
            case stage = "stage"
            
            case company = "company"
            
            case gstCredentials = "gst_credentials"
            
            case verifiedOn = "verified_on"
            
            case warnings = "warnings"
            
            case verifiedBy = "verified_by"
            
            case productReturnConfig = "product_return_config"
            
            case customJson = "_custom_json"
            
            case timing = "timing"
            
            case phoneNumber = "phone_number"
            
            case createdBy = "created_by"
            
            case name = "name"
            
            case documents = "documents"
            
            case modifiedOn = "modified_on"
            
            case address = "address"
            
            case manager = "manager"
            
        }

        public init(code: String, contactNumbers: [PhoneNumber]?, integrationType: LocationIntegrationType?, modifiedBy: UserSerializer1?, notificationEmails: [String]?, uid: Int?, displayName: String, storeType: String?, createdOn: String?, stage: String?, company: GetCompanySerializer?, gstCredentials: InvoiceDetailsSerializer?, verifiedOn: String?, warnings: [String: Any]?, verifiedBy: UserSerializer1?, productReturnConfig: ProductReturnConfigSerializer?, customJson: [String: Any]?, timing: [LocationDayWiseSerializer]?, phoneNumber: String, createdBy: UserSerializer1?, name: String, documents: [Document]?, modifiedOn: String?, address: GetAddressSerializer, manager: LocationManagerSerializer?) {
            
            self.code = code
            
            self.contactNumbers = contactNumbers
            
            self.integrationType = integrationType
            
            self.modifiedBy = modifiedBy
            
            self.notificationEmails = notificationEmails
            
            self.uid = uid
            
            self.displayName = displayName
            
            self.storeType = storeType
            
            self.createdOn = createdOn
            
            self.stage = stage
            
            self.company = company
            
            self.gstCredentials = gstCredentials
            
            self.verifiedOn = verifiedOn
            
            self.warnings = warnings
            
            self.verifiedBy = verifiedBy
            
            self.productReturnConfig = productReturnConfig
            
            self.customJson = customJson
            
            self.timing = timing
            
            self.phoneNumber = phoneNumber
            
            self.createdBy = createdBy
            
            self.name = name
            
            self.documents = documents
            
            self.modifiedOn = modifiedOn
            
            self.address = address
            
            self.manager = manager
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try container.decode(String.self, forKey: .code)
            
            contactNumbers = try? container.decode([PhoneNumber].self, forKey: .contactNumbers)
            
            integrationType = try? container.decode(LocationIntegrationType.self, forKey: .integrationType)
            
            modifiedBy = try? container.decode(UserSerializer1.self, forKey: .modifiedBy)
            
            notificationEmails = try? container.decode([String].self, forKey: .notificationEmails)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            storeType = try? container.decode(String.self, forKey: .storeType)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            stage = try? container.decode(String.self, forKey: .stage)
            
            company = try? container.decode(GetCompanySerializer.self, forKey: .company)
            
            gstCredentials = try? container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)
            
            verifiedOn = try? container.decode(String.self, forKey: .verifiedOn)
            
            warnings = try? container.decode([String: Any].self, forKey: .warnings)
            
            verifiedBy = try? container.decode(UserSerializer1.self, forKey: .verifiedBy)
            
            productReturnConfig = try? container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)
            
            customJson = try? container.decode([String: Any].self, forKey: .customJson)
            
            timing = try? container.decode([LocationDayWiseSerializer].self, forKey: .timing)
            
            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
            
            createdBy = try? container.decode(UserSerializer1.self, forKey: .createdBy)
            
            name = try container.decode(String.self, forKey: .name)
            
            documents = try? container.decode([Document].self, forKey: .documents)
            
            modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
            
            address = try container.decode(GetAddressSerializer.self, forKey: .address)
            
            manager = try? container.decode(LocationManagerSerializer.self, forKey: .manager)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(manager, forKey: .manager)
            
        }
        
    }
    
    
    
    /*
        Model: DataTresholdDTO
    */

    struct DataTresholdDTO: Codable {
        
        
        public var minPrice: Double?
        
        public var safeStock: Int?
        
        public var periodThreshold: Int?
        
        public var periodThresholdType: String?
        
        public var periodTypeList: [GenericDTO]?
        

        public enum CodingKeys: String, CodingKey {
            
            case minPrice = "min_price"
            
            case safeStock = "safe_stock"
            
            case periodThreshold = "period_threshold"
            
            case periodThresholdType = "period_threshold_type"
            
            case periodTypeList = "period_type_list"
            
        }

        public init(minPrice: Double?, safeStock: Int?, periodThreshold: Int?, periodThresholdType: String?, periodTypeList: [GenericDTO]?) {
            
            self.minPrice = minPrice
            
            self.safeStock = safeStock
            
            self.periodThreshold = periodThreshold
            
            self.periodThresholdType = periodThresholdType
            
            self.periodTypeList = periodTypeList
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            minPrice = try? container.decode(Double.self, forKey: .minPrice)
            
            safeStock = try? container.decode(Int.self, forKey: .safeStock)
            
            periodThreshold = try? container.decode(Int.self, forKey: .periodThreshold)
            
            periodThresholdType = try? container.decode(String.self, forKey: .periodThresholdType)
            
            periodTypeList = try? container.decode([GenericDTO].self, forKey: .periodTypeList)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(minPrice, forKey: .minPrice)
            
            try? container.encodeIfPresent(safeStock, forKey: .safeStock)
            
            try? container.encodeIfPresent(periodThreshold, forKey: .periodThreshold)
            
            try? container.encodeIfPresent(periodThresholdType, forKey: .periodThresholdType)
            
            try? container.encodeIfPresent(periodTypeList, forKey: .periodTypeList)
            
        }
        
    }
    
    /*
        Model: GenericDTO
    */

    struct GenericDTO: Codable {
        
        
        public var text: String?
        
        public var value: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case value = "value"
            
        }

        public init(text: String?, value: [String: Any]?) {
            
            self.text = text
            
            self.value = value
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            text = try? container.decode(String.self, forKey: .text)
            
            value = try? container.decode([String: Any].self, forKey: .value)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
        }
        
    }
    
    /*
        Model: JobConfigDTO
    */

    struct JobConfigDTO: Codable {
        
        
        public var companyName: String?
        
        public var integration: String
        
        public var companyId: Int
        
        public var integrationData: [String: Any]?
        
        public var taskDetails: TaskDTO?
        
        public var thresholdDetails: DataTresholdDTO?
        
        public var jobCode: String?
        
        public var alias: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyName = "companyName"
            
            case integration = "integration"
            
            case companyId = "companyId"
            
            case integrationData = "integration_data"
            
            case taskDetails = "task_details"
            
            case thresholdDetails = "threshold_details"
            
            case jobCode = "job_code"
            
            case alias = "alias"
            
        }

        public init(companyName: String?, integration: String, companyId: Int, integrationData: [String: Any]?, taskDetails: TaskDTO?, thresholdDetails: DataTresholdDTO?, jobCode: String?, alias: String?) {
            
            self.companyName = companyName
            
            self.integration = integration
            
            self.companyId = companyId
            
            self.integrationData = integrationData
            
            self.taskDetails = taskDetails
            
            self.thresholdDetails = thresholdDetails
            
            self.jobCode = jobCode
            
            self.alias = alias
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            companyName = try? container.decode(String.self, forKey: .companyName)
            
            integration = try container.decode(String.self, forKey: .integration)
            
            companyId = try container.decode(Int.self, forKey: .companyId)
            
            integrationData = try? container.decode([String: Any].self, forKey: .integrationData)
            
            taskDetails = try? container.decode(TaskDTO.self, forKey: .taskDetails)
            
            thresholdDetails = try? container.decode(DataTresholdDTO.self, forKey: .thresholdDetails)
            
            jobCode = try? container.decode(String.self, forKey: .jobCode)
            
            alias = try? container.decode(String.self, forKey: .alias)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(companyName, forKey: .companyName)
            
            try? container.encodeIfPresent(integration, forKey: .integration)
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            try? container.encodeIfPresent(integrationData, forKey: .integrationData)
            
            try? container.encodeIfPresent(taskDetails, forKey: .taskDetails)
            
            try? container.encodeIfPresent(thresholdDetails, forKey: .thresholdDetails)
            
            try? container.encodeIfPresent(jobCode, forKey: .jobCode)
            
            try? container.encodeIfPresent(alias, forKey: .alias)
            
        }
        
    }
    
    /*
        Model: TaskDTO
    */

    struct TaskDTO: Codable {
        
        
        public var type: Int?
        
        public var groupList: [GenericDTO]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case groupList = "group_list"
            
        }

        public init(type: Int?, groupList: [GenericDTO]?) {
            
            self.type = type
            
            self.groupList = groupList
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            type = try? container.decode(Int.self, forKey: .type)
            
            groupList = try? container.decode([GenericDTO].self, forKey: .groupList)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(groupList, forKey: .groupList)
            
        }
        
    }
    
    /*
        Model: Page
    */

    struct Page: Codable {
        
        
        public var type: String?
        
        public var size: Int?
        
        public var current: Int?
        
        public var hasNext: Bool?
        
        public var itemTotal: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case size = "size"
            
            case current = "current"
            
            case hasNext = "has_next"
            
            case itemTotal = "item_total"
            
        }

        public init(type: String?, size: Int?, current: Int?, hasNext: Bool?, itemTotal: Int?) {
            
            self.type = type
            
            self.size = size
            
            self.current = current
            
            self.hasNext = hasNext
            
            self.itemTotal = itemTotal
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            type = try? container.decode(String.self, forKey: .type)
            
            size = try? container.decode(Int.self, forKey: .size)
            
            current = try? container.decode(Int.self, forKey: .current)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
            itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
        }
        
    }
    
    /*
        Model: ResponseEnvelopeString
    */

    struct ResponseEnvelopeString: Codable {
        
        
        public var timestamp: String?
        
        public var status: Int?
        
        public var error: String?
        
        public var exception: String?
        
        public var message: String?
        
        public var totalTimeTakenInMillis: Int?
        
        public var httpStatus: String?
        
        public var items: String?
        
        public var payload: String?
        
        public var traceId: String?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case timestamp = "timestamp"
            
            case status = "status"
            
            case error = "error"
            
            case exception = "exception"
            
            case message = "message"
            
            case totalTimeTakenInMillis = "total_time_taken_in_millis"
            
            case httpStatus = "http_status"
            
            case items = "items"
            
            case payload = "payload"
            
            case traceId = "trace_id"
            
            case page = "page"
            
        }

        public init(timestamp: String?, status: Int?, error: String?, exception: String?, message: String?, totalTimeTakenInMillis: Int?, httpStatus: String?, items: String?, payload: String?, traceId: String?, page: Page?) {
            
            self.timestamp = timestamp
            
            self.status = status
            
            self.error = error
            
            self.exception = exception
            
            self.message = message
            
            self.totalTimeTakenInMillis = totalTimeTakenInMillis
            
            self.httpStatus = httpStatus
            
            self.items = items
            
            self.payload = payload
            
            self.traceId = traceId
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            timestamp = try? container.decode(String.self, forKey: .timestamp)
            
            status = try? container.decode(Int.self, forKey: .status)
            
            error = try? container.decode(String.self, forKey: .error)
            
            exception = try? container.decode(String.self, forKey: .exception)
            
            message = try? container.decode(String.self, forKey: .message)
            
            totalTimeTakenInMillis = try? container.decode(Int.self, forKey: .totalTimeTakenInMillis)
            
            httpStatus = try? container.decode(String.self, forKey: .httpStatus)
            
            items = try? container.decode(String.self, forKey: .items)
            
            payload = try? container.decode(String.self, forKey: .payload)
            
            traceId = try? container.decode(String.self, forKey: .traceId)
            
            page = try? container.decode(Page.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(totalTimeTakenInMillis, forKey: .totalTimeTakenInMillis)
            
            try? container.encodeIfPresent(httpStatus, forKey: .httpStatus)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: AWSS3config
    */

    struct AWSS3config: Codable {
        
        
        public var bucket: String?
        
        public var region: String?
        
        public var dir: String?
        
        public var accessKey: String?
        
        public var secretKey: String?
        
        public var localFilePath: String?
        
        public var archivePath: String?
        
        public var archive: Bool?
        
        public var delete: Bool?
        
        public var unzip: Bool?
        
        public var zipFormat: String?
        
        public var fileRegex: String?
        
        public var archiveConfig: ArchiveConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case bucket = "bucket"
            
            case region = "region"
            
            case dir = "dir"
            
            case accessKey = "access_key"
            
            case secretKey = "secret_key"
            
            case localFilePath = "local_file_path"
            
            case archivePath = "archive_path"
            
            case archive = "archive"
            
            case delete = "delete"
            
            case unzip = "unzip"
            
            case zipFormat = "zip_format"
            
            case fileRegex = "file_regex"
            
            case archiveConfig = "archive_config"
            
        }

        public init(bucket: String?, region: String?, dir: String?, accessKey: String?, secretKey: String?, localFilePath: String?, archivePath: String?, archive: Bool?, delete: Bool?, unzip: Bool?, zipFormat: String?, fileRegex: String?, archiveConfig: ArchiveConfig?) {
            
            self.bucket = bucket
            
            self.region = region
            
            self.dir = dir
            
            self.accessKey = accessKey
            
            self.secretKey = secretKey
            
            self.localFilePath = localFilePath
            
            self.archivePath = archivePath
            
            self.archive = archive
            
            self.delete = delete
            
            self.unzip = unzip
            
            self.zipFormat = zipFormat
            
            self.fileRegex = fileRegex
            
            self.archiveConfig = archiveConfig
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            bucket = try? container.decode(String.self, forKey: .bucket)
            
            region = try? container.decode(String.self, forKey: .region)
            
            dir = try? container.decode(String.self, forKey: .dir)
            
            accessKey = try? container.decode(String.self, forKey: .accessKey)
            
            secretKey = try? container.decode(String.self, forKey: .secretKey)
            
            localFilePath = try? container.decode(String.self, forKey: .localFilePath)
            
            archivePath = try? container.decode(String.self, forKey: .archivePath)
            
            archive = try? container.decode(Bool.self, forKey: .archive)
            
            delete = try? container.decode(Bool.self, forKey: .delete)
            
            unzip = try? container.decode(Bool.self, forKey: .unzip)
            
            zipFormat = try? container.decode(String.self, forKey: .zipFormat)
            
            fileRegex = try? container.decode(String.self, forKey: .fileRegex)
            
            archiveConfig = try? container.decode(ArchiveConfig.self, forKey: .archiveConfig)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(bucket, forKey: .bucket)
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            try? container.encodeIfPresent(dir, forKey: .dir)
            
            try? container.encodeIfPresent(accessKey, forKey: .accessKey)
            
            try? container.encodeIfPresent(secretKey, forKey: .secretKey)
            
            try? container.encodeIfPresent(localFilePath, forKey: .localFilePath)
            
            try? container.encodeIfPresent(archivePath, forKey: .archivePath)
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            try? container.encodeIfPresent(delete, forKey: .delete)
            
            try? container.encodeIfPresent(unzip, forKey: .unzip)
            
            try? container.encodeIfPresent(zipFormat, forKey: .zipFormat)
            
            try? container.encodeIfPresent(fileRegex, forKey: .fileRegex)
            
            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
            
        }
        
    }
    
    /*
        Model: ArchiveConfig
    */

    struct ArchiveConfig: Codable {
        
        
        public var delete: Bool?
        
        public var archive: Bool?
        
        public var archiveDir: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case delete = "delete"
            
            case archive = "archive"
            
            case archiveDir = "archive_dir"
            
        }

        public init(delete: Bool?, archive: Bool?, archiveDir: String?) {
            
            self.delete = delete
            
            self.archive = archive
            
            self.archiveDir = archiveDir
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            delete = try? container.decode(Bool.self, forKey: .delete)
            
            archive = try? container.decode(Bool.self, forKey: .archive)
            
            archiveDir = try? container.decode(String.self, forKey: .archiveDir)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(delete, forKey: .delete)
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            try? container.encodeIfPresent(archiveDir, forKey: .archiveDir)
            
        }
        
    }
    
    /*
        Model: Audit
    */

    struct Audit: Codable {
        
        
        public var createdBy: String?
        
        public var modifiedBy: String?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(createdBy: String?, modifiedBy: String?, createdOn: String?, modifiedOn: String?) {
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            createdBy = try? container.decode(String.self, forKey: .createdBy)
            
            modifiedBy = try? container.decode(String.self, forKey: .modifiedBy)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
        }
        
    }
    
    /*
        Model: CatalogMasterConfig
    */

    struct CatalogMasterConfig: Codable {
        
        
        public var sourceSlug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case sourceSlug = "source_slug"
            
        }

        public init(sourceSlug: String?) {
            
            self.sourceSlug = sourceSlug
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            sourceSlug = try? container.decode(String.self, forKey: .sourceSlug)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(sourceSlug, forKey: .sourceSlug)
            
        }
        
    }
    
    /*
        Model: CompanyConfig
    */

    struct CompanyConfig: Codable {
        
        
        public var companyId: Int?
        
        public var excludeSteps: [Int]?
        
        public var hiddenClosetKeys: [String]?
        
        public var openTags: [String: Any]?
        
        public var taxIdentifiers: [String]?
        
        public var deleteQuantityThreshold: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case excludeSteps = "exclude_steps"
            
            case hiddenClosetKeys = "hidden_closet_keys"
            
            case openTags = "open_tags"
            
            case taxIdentifiers = "tax_identifiers"
            
            case deleteQuantityThreshold = "delete_quantity_threshold"
            
        }

        public init(companyId: Int?, excludeSteps: [Int]?, hiddenClosetKeys: [String]?, openTags: [String: Any]?, taxIdentifiers: [String]?, deleteQuantityThreshold: Int?) {
            
            self.companyId = companyId
            
            self.excludeSteps = excludeSteps
            
            self.hiddenClosetKeys = hiddenClosetKeys
            
            self.openTags = openTags
            
            self.taxIdentifiers = taxIdentifiers
            
            self.deleteQuantityThreshold = deleteQuantityThreshold
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            companyId = try? container.decode(Int.self, forKey: .companyId)
            
            excludeSteps = try? container.decode([Int].self, forKey: .excludeSteps)
            
            hiddenClosetKeys = try? container.decode([String].self, forKey: .hiddenClosetKeys)
            
            openTags = try? container.decode([String: Any].self, forKey: .openTags)
            
            taxIdentifiers = try? container.decode([String].self, forKey: .taxIdentifiers)
            
            deleteQuantityThreshold = try? container.decode(Int.self, forKey: .deleteQuantityThreshold)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            try? container.encodeIfPresent(excludeSteps, forKey: .excludeSteps)
            
            try? container.encodeIfPresent(hiddenClosetKeys, forKey: .hiddenClosetKeys)
            
            try? container.encodeIfPresent(openTags, forKey: .openTags)
            
            try? container.encodeIfPresent(taxIdentifiers, forKey: .taxIdentifiers)
            
            try? container.encodeIfPresent(deleteQuantityThreshold, forKey: .deleteQuantityThreshold)
            
        }
        
    }
    
    /*
        Model: ContentDisposition
    */

    struct ContentDisposition: Codable {
        
        
        public var type: String?
        
        public var name: String?
        
        public var filename: String?
        
        public var charset: [String: Any]?
        
        public var size: Int?
        
        public var creationDate: String?
        
        public var modificationDate: String?
        
        public var readDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case name = "name"
            
            case filename = "filename"
            
            case charset = "charset"
            
            case size = "size"
            
            case creationDate = "creationDate"
            
            case modificationDate = "modificationDate"
            
            case readDate = "readDate"
            
        }

        public init(type: String?, name: String?, filename: String?, charset: [String: Any]?, size: Int?, creationDate: String?, modificationDate: String?, readDate: String?) {
            
            self.type = type
            
            self.name = name
            
            self.filename = filename
            
            self.charset = charset
            
            self.size = size
            
            self.creationDate = creationDate
            
            self.modificationDate = modificationDate
            
            self.readDate = readDate
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            type = try? container.decode(String.self, forKey: .type)
            
            name = try? container.decode(String.self, forKey: .name)
            
            filename = try? container.decode(String.self, forKey: .filename)
            
            charset = try? container.decode([String: Any].self, forKey: .charset)
            
            size = try? container.decode(Int.self, forKey: .size)
            
            creationDate = try? container.decode(String.self, forKey: .creationDate)
            
            modificationDate = try? container.decode(String.self, forKey: .modificationDate)
            
            readDate = try? container.decode(String.self, forKey: .readDate)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(filename, forKey: .filename)
            
            try? container.encodeIfPresent(charset, forKey: .charset)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(creationDate, forKey: .creationDate)
            
            try? container.encodeIfPresent(modificationDate, forKey: .modificationDate)
            
            try? container.encodeIfPresent(readDate, forKey: .readDate)
            
        }
        
    }
    
    /*
        Model: DBConfig
    */

    struct DBConfig: Codable {
        
        
        public var vendor: String?
        
        public var host: String?
        
        public var port: Int?
        
        public var username: String?
        
        public var password: String?
        
        public var dbname: String?
        
        public var query: String?
        
        public var procedure: Bool?
        
        public var driverClass: String?
        
        public var jdbcUrl: String?
        
        public var optionalProperties: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case vendor = "vendor"
            
            case host = "host"
            
            case port = "port"
            
            case username = "username"
            
            case password = "password"
            
            case dbname = "dbname"
            
            case query = "query"
            
            case procedure = "procedure"
            
            case driverClass = "driver_class"
            
            case jdbcUrl = "jdbc_url"
            
            case optionalProperties = "optional_properties"
            
        }

        public init(vendor: String?, host: String?, port: Int?, username: String?, password: String?, dbname: String?, query: String?, procedure: Bool?, driverClass: String?, jdbcUrl: String?, optionalProperties: [String: Any]?) {
            
            self.vendor = vendor
            
            self.host = host
            
            self.port = port
            
            self.username = username
            
            self.password = password
            
            self.dbname = dbname
            
            self.query = query
            
            self.procedure = procedure
            
            self.driverClass = driverClass
            
            self.jdbcUrl = jdbcUrl
            
            self.optionalProperties = optionalProperties
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            vendor = try? container.decode(String.self, forKey: .vendor)
            
            host = try? container.decode(String.self, forKey: .host)
            
            port = try? container.decode(Int.self, forKey: .port)
            
            username = try? container.decode(String.self, forKey: .username)
            
            password = try? container.decode(String.self, forKey: .password)
            
            dbname = try? container.decode(String.self, forKey: .dbname)
            
            query = try? container.decode(String.self, forKey: .query)
            
            procedure = try? container.decode(Bool.self, forKey: .procedure)
            
            driverClass = try? container.decode(String.self, forKey: .driverClass)
            
            jdbcUrl = try? container.decode(String.self, forKey: .jdbcUrl)
            
            optionalProperties = try? container.decode([String: Any].self, forKey: .optionalProperties)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(vendor, forKey: .vendor)
            
            try? container.encodeIfPresent(host, forKey: .host)
            
            try? container.encodeIfPresent(port, forKey: .port)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(dbname, forKey: .dbname)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            try? container.encodeIfPresent(procedure, forKey: .procedure)
            
            try? container.encodeIfPresent(driverClass, forKey: .driverClass)
            
            try? container.encodeIfPresent(jdbcUrl, forKey: .jdbcUrl)
            
            try? container.encodeIfPresent(optionalProperties, forKey: .optionalProperties)
            
        }
        
    }
    
    /*
        Model: DBConnectionProfile
    */

    struct DBConnectionProfile: Codable {
        
        
        public var inventory: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case inventory = "inventory"
            
        }

        public init(inventory: String?) {
            
            self.inventory = inventory
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            inventory = try? container.decode(String.self, forKey: .inventory)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(inventory, forKey: .inventory)
            
        }
        
    }
    
    /*
        Model: DBParamConfig
    */

    struct DBParamConfig: Codable {
        
        
        public var params: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case params = "params"
            
        }

        public init(params: [String: Any]?) {
            
            self.params = params
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            params = try? container.decode([String: Any].self, forKey: .params)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(params, forKey: .params)
            
        }
        
    }
    
    /*
        Model: DefaultHeadersDTO
    */

    struct DefaultHeadersDTO: Codable {
        
        
        public var store: PropBeanDTO?
        
        public var intfArticleId: PropBeanDTO?
        
        public var priceEffective: PropBeanDTO?
        
        public var quantity: PropBeanDTO?
        

        public enum CodingKeys: String, CodingKey {
            
            case store = "store"
            
            case intfArticleId = "intf_article_id"
            
            case priceEffective = "price_effective"
            
            case quantity = "quantity"
            
        }

        public init(store: PropBeanDTO?, intfArticleId: PropBeanDTO?, priceEffective: PropBeanDTO?, quantity: PropBeanDTO?) {
            
            self.store = store
            
            self.intfArticleId = intfArticleId
            
            self.priceEffective = priceEffective
            
            self.quantity = quantity
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            store = try? container.decode(PropBeanDTO.self, forKey: .store)
            
            intfArticleId = try? container.decode(PropBeanDTO.self, forKey: .intfArticleId)
            
            priceEffective = try? container.decode(PropBeanDTO.self, forKey: .priceEffective)
            
            quantity = try? container.decode(PropBeanDTO.self, forKey: .quantity)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            try? container.encodeIfPresent(intfArticleId, forKey: .intfArticleId)
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
        }
        
    }
    
    /*
        Model: DocMappingConfig
    */

    struct DocMappingConfig: Codable {
        
        
        public var properties: [String: Any]?
        
        public var junkDataThresholdCount: Int?
        
        public var propBeanConfigs: [PropBeanConfig]?
        
        public var unwindField: String?
        
        public var defaultHeaders: DefaultHeadersDTO?
        

        public enum CodingKeys: String, CodingKey {
            
            case properties = "properties"
            
            case junkDataThresholdCount = "junk_data_threshold_count"
            
            case propBeanConfigs = "prop_bean_configs"
            
            case unwindField = "unwind_field"
            
            case defaultHeaders = "default_headers"
            
        }

        public init(properties: [String: Any]?, junkDataThresholdCount: Int?, propBeanConfigs: [PropBeanConfig]?, unwindField: String?, defaultHeaders: DefaultHeadersDTO?) {
            
            self.properties = properties
            
            self.junkDataThresholdCount = junkDataThresholdCount
            
            self.propBeanConfigs = propBeanConfigs
            
            self.unwindField = unwindField
            
            self.defaultHeaders = defaultHeaders
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            properties = try? container.decode([String: Any].self, forKey: .properties)
            
            junkDataThresholdCount = try? container.decode(Int.self, forKey: .junkDataThresholdCount)
            
            propBeanConfigs = try? container.decode([PropBeanConfig].self, forKey: .propBeanConfigs)
            
            unwindField = try? container.decode(String.self, forKey: .unwindField)
            
            defaultHeaders = try? container.decode(DefaultHeadersDTO.self, forKey: .defaultHeaders)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(properties, forKey: .properties)
            
            try? container.encodeIfPresent(junkDataThresholdCount, forKey: .junkDataThresholdCount)
            
            try? container.encodeIfPresent(propBeanConfigs, forKey: .propBeanConfigs)
            
            try? container.encodeIfPresent(unwindField, forKey: .unwindField)
            
            try? container.encodeIfPresent(defaultHeaders, forKey: .defaultHeaders)
            
        }
        
    }
    
    /*
        Model: EmailConfig
    */

    struct EmailConfig: Codable {
        
        
        public var recepient: String?
        
        public var host: String?
        
        public var username: String?
        
        public var password: String?
        
        public var unzip: Bool?
        
        public var readFromContent: Bool?
        
        public var filterBasedOnRecepients: Bool?
        
        public var pcol: String?
        
        public var subjectLineRegex: String?
        
        public var senderAddress: String?
        
        public var localDir: String?
        
        public var folderNameHierarchies: [String]?
        
        public var attachmentRegex: String?
        
        public var bodyContentRegex: String?
        
        public var passwordProtected: Bool?
        
        public var zipFormat: String?
        
        public var attachmentMandate: Bool?
        
        public var filterFilesAfterExtraction: Bool?
        
        public var archiveConfig: ArchiveConfig?
        
        public var readAllUnreadMails: Bool?
        
        public var contentType: String?
        
        public var downloadableLink: Bool?
        
        public var properties: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case recepient = "recepient"
            
            case host = "host"
            
            case username = "username"
            
            case password = "password"
            
            case unzip = "unzip"
            
            case readFromContent = "read_from_content"
            
            case filterBasedOnRecepients = "filter_based_on_recepients"
            
            case pcol = "pcol"
            
            case subjectLineRegex = "subject_line_regex"
            
            case senderAddress = "sender_address"
            
            case localDir = "local_dir"
            
            case folderNameHierarchies = "folder_name_hierarchies"
            
            case attachmentRegex = "attachment_regex"
            
            case bodyContentRegex = "body_content_regex"
            
            case passwordProtected = "password_protected"
            
            case zipFormat = "zip_format"
            
            case attachmentMandate = "attachment_mandate"
            
            case filterFilesAfterExtraction = "filterFiles_after_extraction"
            
            case archiveConfig = "archive_config"
            
            case readAllUnreadMails = "read_all_unread_mails"
            
            case contentType = "content_type"
            
            case downloadableLink = "downloadable_link"
            
            case properties = "properties"
            
        }

        public init(recepient: String?, host: String?, username: String?, password: String?, unzip: Bool?, readFromContent: Bool?, filterBasedOnRecepients: Bool?, pcol: String?, subjectLineRegex: String?, senderAddress: String?, localDir: String?, folderNameHierarchies: [String]?, attachmentRegex: String?, bodyContentRegex: String?, passwordProtected: Bool?, zipFormat: String?, attachmentMandate: Bool?, filterFilesAfterExtraction: Bool?, archiveConfig: ArchiveConfig?, readAllUnreadMails: Bool?, contentType: String?, downloadableLink: Bool?, properties: [String: Any]?) {
            
            self.recepient = recepient
            
            self.host = host
            
            self.username = username
            
            self.password = password
            
            self.unzip = unzip
            
            self.readFromContent = readFromContent
            
            self.filterBasedOnRecepients = filterBasedOnRecepients
            
            self.pcol = pcol
            
            self.subjectLineRegex = subjectLineRegex
            
            self.senderAddress = senderAddress
            
            self.localDir = localDir
            
            self.folderNameHierarchies = folderNameHierarchies
            
            self.attachmentRegex = attachmentRegex
            
            self.bodyContentRegex = bodyContentRegex
            
            self.passwordProtected = passwordProtected
            
            self.zipFormat = zipFormat
            
            self.attachmentMandate = attachmentMandate
            
            self.filterFilesAfterExtraction = filterFilesAfterExtraction
            
            self.archiveConfig = archiveConfig
            
            self.readAllUnreadMails = readAllUnreadMails
            
            self.contentType = contentType
            
            self.downloadableLink = downloadableLink
            
            self.properties = properties
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            recepient = try? container.decode(String.self, forKey: .recepient)
            
            host = try? container.decode(String.self, forKey: .host)
            
            username = try? container.decode(String.self, forKey: .username)
            
            password = try? container.decode(String.self, forKey: .password)
            
            unzip = try? container.decode(Bool.self, forKey: .unzip)
            
            readFromContent = try? container.decode(Bool.self, forKey: .readFromContent)
            
            filterBasedOnRecepients = try? container.decode(Bool.self, forKey: .filterBasedOnRecepients)
            
            pcol = try? container.decode(String.self, forKey: .pcol)
            
            subjectLineRegex = try? container.decode(String.self, forKey: .subjectLineRegex)
            
            senderAddress = try? container.decode(String.self, forKey: .senderAddress)
            
            localDir = try? container.decode(String.self, forKey: .localDir)
            
            folderNameHierarchies = try? container.decode([String].self, forKey: .folderNameHierarchies)
            
            attachmentRegex = try? container.decode(String.self, forKey: .attachmentRegex)
            
            bodyContentRegex = try? container.decode(String.self, forKey: .bodyContentRegex)
            
            passwordProtected = try? container.decode(Bool.self, forKey: .passwordProtected)
            
            zipFormat = try? container.decode(String.self, forKey: .zipFormat)
            
            attachmentMandate = try? container.decode(Bool.self, forKey: .attachmentMandate)
            
            filterFilesAfterExtraction = try? container.decode(Bool.self, forKey: .filterFilesAfterExtraction)
            
            archiveConfig = try? container.decode(ArchiveConfig.self, forKey: .archiveConfig)
            
            readAllUnreadMails = try? container.decode(Bool.self, forKey: .readAllUnreadMails)
            
            contentType = try? container.decode(String.self, forKey: .contentType)
            
            downloadableLink = try? container.decode(Bool.self, forKey: .downloadableLink)
            
            properties = try? container.decode([String: Any].self, forKey: .properties)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(recepient, forKey: .recepient)
            
            try? container.encodeIfPresent(host, forKey: .host)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(unzip, forKey: .unzip)
            
            try? container.encodeIfPresent(readFromContent, forKey: .readFromContent)
            
            try? container.encodeIfPresent(filterBasedOnRecepients, forKey: .filterBasedOnRecepients)
            
            try? container.encodeIfPresent(pcol, forKey: .pcol)
            
            try? container.encodeIfPresent(subjectLineRegex, forKey: .subjectLineRegex)
            
            try? container.encodeIfPresent(senderAddress, forKey: .senderAddress)
            
            try? container.encodeIfPresent(localDir, forKey: .localDir)
            
            try? container.encodeIfPresent(folderNameHierarchies, forKey: .folderNameHierarchies)
            
            try? container.encodeIfPresent(attachmentRegex, forKey: .attachmentRegex)
            
            try? container.encodeIfPresent(bodyContentRegex, forKey: .bodyContentRegex)
            
            try? container.encodeIfPresent(passwordProtected, forKey: .passwordProtected)
            
            try? container.encodeIfPresent(zipFormat, forKey: .zipFormat)
            
            try? container.encodeIfPresent(attachmentMandate, forKey: .attachmentMandate)
            
            try? container.encodeIfPresent(filterFilesAfterExtraction, forKey: .filterFilesAfterExtraction)
            
            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
            
            try? container.encodeIfPresent(readAllUnreadMails, forKey: .readAllUnreadMails)
            
            try? container.encodeIfPresent(contentType, forKey: .contentType)
            
            try? container.encodeIfPresent(downloadableLink, forKey: .downloadableLink)
            
            try? container.encodeIfPresent(properties, forKey: .properties)
            
        }
        
    }
    
    /*
        Model: FTPConfig
    */

    struct FTPConfig: Codable {
        
        
        public var host: String?
        
        public var port: Int?
        
        public var username: String?
        
        public var password: String?
        
        public var unzip: Bool?
        
        public var retries: Int?
        
        public var interval: Int?
        
        public var localDir: String?
        
        public var remoteDir: String?
        
        public var zipFileRegex: String?
        
        public var archiveConfig: ArchiveConfig?
        
        public var fileRegex: String?
        
        public var zipFormat: String?
        
        public var readAllFiles: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case host = "host"
            
            case port = "port"
            
            case username = "username"
            
            case password = "password"
            
            case unzip = "unzip"
            
            case retries = "retries"
            
            case interval = "interval"
            
            case localDir = "local_dir"
            
            case remoteDir = "remote_dir"
            
            case zipFileRegex = "zip_file_regex"
            
            case archiveConfig = "archive_config"
            
            case fileRegex = "file_regex"
            
            case zipFormat = "zip_format"
            
            case readAllFiles = "read_all_files"
            
        }

        public init(host: String?, port: Int?, username: String?, password: String?, unzip: Bool?, retries: Int?, interval: Int?, localDir: String?, remoteDir: String?, zipFileRegex: String?, archiveConfig: ArchiveConfig?, fileRegex: String?, zipFormat: String?, readAllFiles: Bool?) {
            
            self.host = host
            
            self.port = port
            
            self.username = username
            
            self.password = password
            
            self.unzip = unzip
            
            self.retries = retries
            
            self.interval = interval
            
            self.localDir = localDir
            
            self.remoteDir = remoteDir
            
            self.zipFileRegex = zipFileRegex
            
            self.archiveConfig = archiveConfig
            
            self.fileRegex = fileRegex
            
            self.zipFormat = zipFormat
            
            self.readAllFiles = readAllFiles
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            host = try? container.decode(String.self, forKey: .host)
            
            port = try? container.decode(Int.self, forKey: .port)
            
            username = try? container.decode(String.self, forKey: .username)
            
            password = try? container.decode(String.self, forKey: .password)
            
            unzip = try? container.decode(Bool.self, forKey: .unzip)
            
            retries = try? container.decode(Int.self, forKey: .retries)
            
            interval = try? container.decode(Int.self, forKey: .interval)
            
            localDir = try? container.decode(String.self, forKey: .localDir)
            
            remoteDir = try? container.decode(String.self, forKey: .remoteDir)
            
            zipFileRegex = try? container.decode(String.self, forKey: .zipFileRegex)
            
            archiveConfig = try? container.decode(ArchiveConfig.self, forKey: .archiveConfig)
            
            fileRegex = try? container.decode(String.self, forKey: .fileRegex)
            
            zipFormat = try? container.decode(String.self, forKey: .zipFormat)
            
            readAllFiles = try? container.decode(Bool.self, forKey: .readAllFiles)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(host, forKey: .host)
            
            try? container.encodeIfPresent(port, forKey: .port)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(unzip, forKey: .unzip)
            
            try? container.encodeIfPresent(retries, forKey: .retries)
            
            try? container.encodeIfPresent(interval, forKey: .interval)
            
            try? container.encodeIfPresent(localDir, forKey: .localDir)
            
            try? container.encodeIfPresent(remoteDir, forKey: .remoteDir)
            
            try? container.encodeIfPresent(zipFileRegex, forKey: .zipFileRegex)
            
            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
            
            try? container.encodeIfPresent(fileRegex, forKey: .fileRegex)
            
            try? container.encodeIfPresent(zipFormat, forKey: .zipFormat)
            
            try? container.encodeIfPresent(readAllFiles, forKey: .readAllFiles)
            
        }
        
    }
    
    /*
        Model: FieldValidation
    */

    struct FieldValidation: Codable {
        
        
        public var strict: Bool?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case strict = "strict"
            
            case name = "name"
            
        }

        public init(strict: Bool?, name: String?) {
            
            self.strict = strict
            
            self.name = name
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            strict = try? container.decode(Bool.self, forKey: .strict)
            
            name = try? container.decode(String.self, forKey: .name)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(strict, forKey: .strict)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
        }
        
    }
    
    /*
        Model: FileConfig
    */

    struct FileConfig: Codable {
        
        
        public var delimiter: String?
        
        public var charset: String?
        
        public var properties: [String: Any]?
        
        public var fileHasHeader: Bool?
        
        public var headerIndex: Int?
        
        public var headerArray: [String]?
        
        public var dataStartIndex: Int?
        
        public var propBeanConfigs: [PropBeanConfig]?
        
        public var junkDataThresholdCount: Int?
        
        public var fileType: String?
        
        public var lineValidityCheck: Bool?
        
        public var sheetNames: [String]?
        
        public var readAllSheets: Bool?
        
        public var quoteChar: String?
        
        public var escapeChar: String?
        
        public var defaultHeaders: DefaultHeadersDTO?
        

        public enum CodingKeys: String, CodingKey {
            
            case delimiter = "delimiter"
            
            case charset = "charset"
            
            case properties = "properties"
            
            case fileHasHeader = "file_has_header"
            
            case headerIndex = "header_index"
            
            case headerArray = "header_array"
            
            case dataStartIndex = "data_start_index"
            
            case propBeanConfigs = "prop_bean_configs"
            
            case junkDataThresholdCount = "junk_data_threshold_count"
            
            case fileType = "file_type"
            
            case lineValidityCheck = "line_validity_check"
            
            case sheetNames = "sheet_names"
            
            case readAllSheets = "read_all_sheets"
            
            case quoteChar = "quote_char"
            
            case escapeChar = "escape_char"
            
            case defaultHeaders = "default_headers"
            
        }

        public init(delimiter: String?, charset: String?, properties: [String: Any]?, fileHasHeader: Bool?, headerIndex: Int?, headerArray: [String]?, dataStartIndex: Int?, propBeanConfigs: [PropBeanConfig]?, junkDataThresholdCount: Int?, fileType: String?, lineValidityCheck: Bool?, sheetNames: [String]?, readAllSheets: Bool?, quoteChar: String?, escapeChar: String?, defaultHeaders: DefaultHeadersDTO?) {
            
            self.delimiter = delimiter
            
            self.charset = charset
            
            self.properties = properties
            
            self.fileHasHeader = fileHasHeader
            
            self.headerIndex = headerIndex
            
            self.headerArray = headerArray
            
            self.dataStartIndex = dataStartIndex
            
            self.propBeanConfigs = propBeanConfigs
            
            self.junkDataThresholdCount = junkDataThresholdCount
            
            self.fileType = fileType
            
            self.lineValidityCheck = lineValidityCheck
            
            self.sheetNames = sheetNames
            
            self.readAllSheets = readAllSheets
            
            self.quoteChar = quoteChar
            
            self.escapeChar = escapeChar
            
            self.defaultHeaders = defaultHeaders
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            delimiter = try? container.decode(String.self, forKey: .delimiter)
            
            charset = try? container.decode(String.self, forKey: .charset)
            
            properties = try? container.decode([String: Any].self, forKey: .properties)
            
            fileHasHeader = try? container.decode(Bool.self, forKey: .fileHasHeader)
            
            headerIndex = try? container.decode(Int.self, forKey: .headerIndex)
            
            headerArray = try? container.decode([String].self, forKey: .headerArray)
            
            dataStartIndex = try? container.decode(Int.self, forKey: .dataStartIndex)
            
            propBeanConfigs = try? container.decode([PropBeanConfig].self, forKey: .propBeanConfigs)
            
            junkDataThresholdCount = try? container.decode(Int.self, forKey: .junkDataThresholdCount)
            
            fileType = try? container.decode(String.self, forKey: .fileType)
            
            lineValidityCheck = try? container.decode(Bool.self, forKey: .lineValidityCheck)
            
            sheetNames = try? container.decode([String].self, forKey: .sheetNames)
            
            readAllSheets = try? container.decode(Bool.self, forKey: .readAllSheets)
            
            quoteChar = try? container.decode(String.self, forKey: .quoteChar)
            
            escapeChar = try? container.decode(String.self, forKey: .escapeChar)
            
            defaultHeaders = try? container.decode(DefaultHeadersDTO.self, forKey: .defaultHeaders)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(delimiter, forKey: .delimiter)
            
            try? container.encodeIfPresent(charset, forKey: .charset)
            
            try? container.encodeIfPresent(properties, forKey: .properties)
            
            try? container.encodeIfPresent(fileHasHeader, forKey: .fileHasHeader)
            
            try? container.encodeIfPresent(headerIndex, forKey: .headerIndex)
            
            try? container.encodeIfPresent(headerArray, forKey: .headerArray)
            
            try? container.encodeIfPresent(dataStartIndex, forKey: .dataStartIndex)
            
            try? container.encodeIfPresent(propBeanConfigs, forKey: .propBeanConfigs)
            
            try? container.encodeIfPresent(junkDataThresholdCount, forKey: .junkDataThresholdCount)
            
            try? container.encodeIfPresent(fileType, forKey: .fileType)
            
            try? container.encodeIfPresent(lineValidityCheck, forKey: .lineValidityCheck)
            
            try? container.encodeIfPresent(sheetNames, forKey: .sheetNames)
            
            try? container.encodeIfPresent(readAllSheets, forKey: .readAllSheets)
            
            try? container.encodeIfPresent(quoteChar, forKey: .quoteChar)
            
            try? container.encodeIfPresent(escapeChar, forKey: .escapeChar)
            
            try? container.encodeIfPresent(defaultHeaders, forKey: .defaultHeaders)
            
        }
        
    }
    
    /*
        Model: GoogleSpreadSheetConfig
    */

    struct GoogleSpreadSheetConfig: Codable {
        
        
        public var sheetId: String?
        
        public var range: String?
        
        public var clientSecretLocation: String?
        
        public var credStorageDirectory: String?
        
        public var localDir: String?
        
        public var archiveConfig: ArchiveConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case sheetId = "sheetId"
            
            case range = "range"
            
            case clientSecretLocation = "client_secret_location"
            
            case credStorageDirectory = "cred_storage_directory"
            
            case localDir = "local_dir"
            
            case archiveConfig = "archive_config"
            
        }

        public init(sheetId: String?, range: String?, clientSecretLocation: String?, credStorageDirectory: String?, localDir: String?, archiveConfig: ArchiveConfig?) {
            
            self.sheetId = sheetId
            
            self.range = range
            
            self.clientSecretLocation = clientSecretLocation
            
            self.credStorageDirectory = credStorageDirectory
            
            self.localDir = localDir
            
            self.archiveConfig = archiveConfig
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            sheetId = try? container.decode(String.self, forKey: .sheetId)
            
            range = try? container.decode(String.self, forKey: .range)
            
            clientSecretLocation = try? container.decode(String.self, forKey: .clientSecretLocation)
            
            credStorageDirectory = try? container.decode(String.self, forKey: .credStorageDirectory)
            
            localDir = try? container.decode(String.self, forKey: .localDir)
            
            archiveConfig = try? container.decode(ArchiveConfig.self, forKey: .archiveConfig)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(sheetId, forKey: .sheetId)
            
            try? container.encodeIfPresent(range, forKey: .range)
            
            try? container.encodeIfPresent(clientSecretLocation, forKey: .clientSecretLocation)
            
            try? container.encodeIfPresent(credStorageDirectory, forKey: .credStorageDirectory)
            
            try? container.encodeIfPresent(localDir, forKey: .localDir)
            
            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
            
        }
        
    }
    
    /*
        Model: HttpConfig
    */

    struct HttpConfig: Codable {
        
        
        public var hosturl: String?
        
        public var headers: [String: Any]?
        
        public var username: String?
        
        public var password: String?
        
        public var requestParams: [String: Any]?
        
        public var httpMethod: String?
        
        public var requestPayload: String?
        
        public var localPath: String?
        
        public var archiveConfig: ArchiveConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case hosturl = "hosturl"
            
            case headers = "headers"
            
            case username = "username"
            
            case password = "password"
            
            case requestParams = "request_params"
            
            case httpMethod = "http_method"
            
            case requestPayload = "request_payload"
            
            case localPath = "local_path"
            
            case archiveConfig = "archive_config"
            
        }

        public init(hosturl: String?, headers: [String: Any]?, username: String?, password: String?, requestParams: [String: Any]?, httpMethod: String?, requestPayload: String?, localPath: String?, archiveConfig: ArchiveConfig?) {
            
            self.hosturl = hosturl
            
            self.headers = headers
            
            self.username = username
            
            self.password = password
            
            self.requestParams = requestParams
            
            self.httpMethod = httpMethod
            
            self.requestPayload = requestPayload
            
            self.localPath = localPath
            
            self.archiveConfig = archiveConfig
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            hosturl = try? container.decode(String.self, forKey: .hosturl)
            
            headers = try? container.decode([String: Any].self, forKey: .headers)
            
            username = try? container.decode(String.self, forKey: .username)
            
            password = try? container.decode(String.self, forKey: .password)
            
            requestParams = try? container.decode([String: Any].self, forKey: .requestParams)
            
            httpMethod = try? container.decode(String.self, forKey: .httpMethod)
            
            requestPayload = try? container.decode(String.self, forKey: .requestPayload)
            
            localPath = try? container.decode(String.self, forKey: .localPath)
            
            archiveConfig = try? container.decode(ArchiveConfig.self, forKey: .archiveConfig)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(hosturl, forKey: .hosturl)
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(requestParams, forKey: .requestParams)
            
            try? container.encodeIfPresent(httpMethod, forKey: .httpMethod)
            
            try? container.encodeIfPresent(requestPayload, forKey: .requestPayload)
            
            try? container.encodeIfPresent(localPath, forKey: .localPath)
            
            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
            
        }
        
    }
    
    /*
        Model: HttpRange
    */

    struct HttpRange: Codable {
        
    }
    
    /*
        Model: JobConfig
    */

    struct JobConfig: Codable {
        
        
        public var syncInterval: Int?
        
        public var brandRemoteNames: [String]?
        
        public var companyNames: [String]?
        
        public var id: Int?
        
        public var jobCode: String?
        
        public var taskType: String?
        
        public var syncDelay: Int?
        
        public var cronExpression: String?
        
        public var storeFilter: StoreFilter?
        
        public var processConfig: ProcessConfig?
        
        public var storeConfig: [StoreConfig]?
        
        public var properties: [String: Any]?
        
        public var immediateFirstRun: Bool?
        
        public var disable: Bool?
        
        public var dependentJobCodes: [String]?
        
        public var companyConfig: [CompanyConfig]?
        
        public var companyIds: [Int]?
        
        public var taxIdentifiers: [String]?
        
        public var priority: String?
        
        public var periodThreshold: Int?
        
        public var periodThresholdType: String?
        
        public var dbConnectionProfile: DBConnectionProfile?
        
        public var params: [String: Any]?
        
        public var openTags: [String: Any]?
        
        public var deleteQuantityThreshold: Int?
        
        public var catalogMasterConfig: CatalogMasterConfig?
        
        public var aggregatorTypes: [String]?
        
        public var integrationType: String?
        
        public var minPrice: Double?
        
        public var audit: Audit?
        
        public var version: Int?
        
        public var alias: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case syncInterval = "syncInterval"
            
            case brandRemoteNames = "brandRemoteNames"
            
            case companyNames = "companyNames"
            
            case id = "_id"
            
            case jobCode = "job_code"
            
            case taskType = "task_type"
            
            case syncDelay = "sync_delay"
            
            case cronExpression = "cron_expression"
            
            case storeFilter = "store_filter"
            
            case processConfig = "process_config"
            
            case storeConfig = "store_config"
            
            case properties = "properties"
            
            case immediateFirstRun = "immediate_first_run"
            
            case disable = "disable"
            
            case dependentJobCodes = "dependent_job_codes"
            
            case companyConfig = "company_config"
            
            case companyIds = "company_ids"
            
            case taxIdentifiers = "tax_identifiers"
            
            case priority = "priority"
            
            case periodThreshold = "period_threshold"
            
            case periodThresholdType = "period_threshold_type"
            
            case dbConnectionProfile = "db_connection_profile"
            
            case params = "params"
            
            case openTags = "open_tags"
            
            case deleteQuantityThreshold = "delete_quantity_threshold"
            
            case catalogMasterConfig = "catalog_master_config"
            
            case aggregatorTypes = "aggregator_types"
            
            case integrationType = "integration_type"
            
            case minPrice = "min_price"
            
            case audit = "audit"
            
            case version = "version"
            
            case alias = "alias"
            
        }

        public init(syncInterval: Int?, brandRemoteNames: [String]?, companyNames: [String]?, id: Int?, jobCode: String?, taskType: String?, syncDelay: Int?, cronExpression: String?, storeFilter: StoreFilter?, processConfig: ProcessConfig?, storeConfig: [StoreConfig]?, properties: [String: Any]?, immediateFirstRun: Bool?, disable: Bool?, dependentJobCodes: [String]?, companyConfig: [CompanyConfig]?, companyIds: [Int]?, taxIdentifiers: [String]?, priority: String?, periodThreshold: Int?, periodThresholdType: String?, dbConnectionProfile: DBConnectionProfile?, params: [String: Any]?, openTags: [String: Any]?, deleteQuantityThreshold: Int?, catalogMasterConfig: CatalogMasterConfig?, aggregatorTypes: [String]?, integrationType: String?, minPrice: Double?, audit: Audit?, version: Int?, alias: String?) {
            
            self.syncInterval = syncInterval
            
            self.brandRemoteNames = brandRemoteNames
            
            self.companyNames = companyNames
            
            self.id = id
            
            self.jobCode = jobCode
            
            self.taskType = taskType
            
            self.syncDelay = syncDelay
            
            self.cronExpression = cronExpression
            
            self.storeFilter = storeFilter
            
            self.processConfig = processConfig
            
            self.storeConfig = storeConfig
            
            self.properties = properties
            
            self.immediateFirstRun = immediateFirstRun
            
            self.disable = disable
            
            self.dependentJobCodes = dependentJobCodes
            
            self.companyConfig = companyConfig
            
            self.companyIds = companyIds
            
            self.taxIdentifiers = taxIdentifiers
            
            self.priority = priority
            
            self.periodThreshold = periodThreshold
            
            self.periodThresholdType = periodThresholdType
            
            self.dbConnectionProfile = dbConnectionProfile
            
            self.params = params
            
            self.openTags = openTags
            
            self.deleteQuantityThreshold = deleteQuantityThreshold
            
            self.catalogMasterConfig = catalogMasterConfig
            
            self.aggregatorTypes = aggregatorTypes
            
            self.integrationType = integrationType
            
            self.minPrice = minPrice
            
            self.audit = audit
            
            self.version = version
            
            self.alias = alias
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            syncInterval = try? container.decode(Int.self, forKey: .syncInterval)
            
            brandRemoteNames = try? container.decode([String].self, forKey: .brandRemoteNames)
            
            companyNames = try? container.decode([String].self, forKey: .companyNames)
            
            id = try? container.decode(Int.self, forKey: .id)
            
            jobCode = try? container.decode(String.self, forKey: .jobCode)
            
            taskType = try? container.decode(String.self, forKey: .taskType)
            
            syncDelay = try? container.decode(Int.self, forKey: .syncDelay)
            
            cronExpression = try? container.decode(String.self, forKey: .cronExpression)
            
            storeFilter = try? container.decode(StoreFilter.self, forKey: .storeFilter)
            
            processConfig = try? container.decode(ProcessConfig.self, forKey: .processConfig)
            
            storeConfig = try? container.decode([StoreConfig].self, forKey: .storeConfig)
            
            properties = try? container.decode([String: Any].self, forKey: .properties)
            
            immediateFirstRun = try? container.decode(Bool.self, forKey: .immediateFirstRun)
            
            disable = try? container.decode(Bool.self, forKey: .disable)
            
            dependentJobCodes = try? container.decode([String].self, forKey: .dependentJobCodes)
            
            companyConfig = try? container.decode([CompanyConfig].self, forKey: .companyConfig)
            
            companyIds = try? container.decode([Int].self, forKey: .companyIds)
            
            taxIdentifiers = try? container.decode([String].self, forKey: .taxIdentifiers)
            
            priority = try? container.decode(String.self, forKey: .priority)
            
            periodThreshold = try? container.decode(Int.self, forKey: .periodThreshold)
            
            periodThresholdType = try? container.decode(String.self, forKey: .periodThresholdType)
            
            dbConnectionProfile = try? container.decode(DBConnectionProfile.self, forKey: .dbConnectionProfile)
            
            params = try? container.decode([String: Any].self, forKey: .params)
            
            openTags = try? container.decode([String: Any].self, forKey: .openTags)
            
            deleteQuantityThreshold = try? container.decode(Int.self, forKey: .deleteQuantityThreshold)
            
            catalogMasterConfig = try? container.decode(CatalogMasterConfig.self, forKey: .catalogMasterConfig)
            
            aggregatorTypes = try? container.decode([String].self, forKey: .aggregatorTypes)
            
            integrationType = try? container.decode(String.self, forKey: .integrationType)
            
            minPrice = try? container.decode(Double.self, forKey: .minPrice)
            
            audit = try? container.decode(Audit.self, forKey: .audit)
            
            version = try? container.decode(Int.self, forKey: .version)
            
            alias = try? container.decode(String.self, forKey: .alias)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(syncInterval, forKey: .syncInterval)
            
            try? container.encodeIfPresent(brandRemoteNames, forKey: .brandRemoteNames)
            
            try? container.encodeIfPresent(companyNames, forKey: .companyNames)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(jobCode, forKey: .jobCode)
            
            try? container.encodeIfPresent(taskType, forKey: .taskType)
            
            try? container.encodeIfPresent(syncDelay, forKey: .syncDelay)
            
            try? container.encodeIfPresent(cronExpression, forKey: .cronExpression)
            
            try? container.encodeIfPresent(storeFilter, forKey: .storeFilter)
            
            try? container.encodeIfPresent(processConfig, forKey: .processConfig)
            
            try? container.encodeIfPresent(storeConfig, forKey: .storeConfig)
            
            try? container.encodeIfPresent(properties, forKey: .properties)
            
            try? container.encodeIfPresent(immediateFirstRun, forKey: .immediateFirstRun)
            
            try? container.encodeIfPresent(disable, forKey: .disable)
            
            try? container.encodeIfPresent(dependentJobCodes, forKey: .dependentJobCodes)
            
            try? container.encodeIfPresent(companyConfig, forKey: .companyConfig)
            
            try? container.encodeIfPresent(companyIds, forKey: .companyIds)
            
            try? container.encodeIfPresent(taxIdentifiers, forKey: .taxIdentifiers)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(periodThreshold, forKey: .periodThreshold)
            
            try? container.encodeIfPresent(periodThresholdType, forKey: .periodThresholdType)
            
            try? container.encodeIfPresent(dbConnectionProfile, forKey: .dbConnectionProfile)
            
            try? container.encodeIfPresent(params, forKey: .params)
            
            try? container.encodeIfPresent(openTags, forKey: .openTags)
            
            try? container.encodeIfPresent(deleteQuantityThreshold, forKey: .deleteQuantityThreshold)
            
            try? container.encodeIfPresent(catalogMasterConfig, forKey: .catalogMasterConfig)
            
            try? container.encodeIfPresent(aggregatorTypes, forKey: .aggregatorTypes)
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            try? container.encodeIfPresent(minPrice, forKey: .minPrice)
            
            try? container.encodeIfPresent(audit, forKey: .audit)
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            try? container.encodeIfPresent(alias, forKey: .alias)
            
        }
        
    }
    
    /*
        Model: JobConfigRawDTO
    */

    struct JobConfigRawDTO: Codable {
        
        
        public var companyName: String
        
        public var integration: String
        
        public var companyId: Int
        
        public var data: JobConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyName = "companyName"
            
            case integration = "integration"
            
            case companyId = "companyId"
            
            case data = "data"
            
        }

        public init(companyName: String, integration: String, companyId: Int, data: JobConfig?) {
            
            self.companyName = companyName
            
            self.integration = integration
            
            self.companyId = companyId
            
            self.data = data
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            companyName = try container.decode(String.self, forKey: .companyName)
            
            integration = try container.decode(String.self, forKey: .integration)
            
            companyId = try container.decode(Int.self, forKey: .companyId)
            
            data = try? container.decode(JobConfig.self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(companyName, forKey: .companyName)
            
            try? container.encodeIfPresent(integration, forKey: .integration)
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: JsonDocConfig
    */

    struct JsonDocConfig: Codable {
        
        
        public var propBeanConfigs: [PropBeanConfig]?
        

        public enum CodingKeys: String, CodingKey {
            
            case propBeanConfigs = "prop_bean_configs"
            
        }

        public init(propBeanConfigs: [PropBeanConfig]?) {
            
            self.propBeanConfigs = propBeanConfigs
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            propBeanConfigs = try? container.decode([PropBeanConfig].self, forKey: .propBeanConfigs)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(propBeanConfigs, forKey: .propBeanConfigs)
            
        }
        
    }
    
    /*
        Model: LocalFileConfig
    */

    struct LocalFileConfig: Codable {
        
        
        public var retries: Int?
        
        public var interval: Int?
        
        public var localDir: String?
        
        public var workingDir: String?
        
        public var unzip: Bool?
        
        public var zipFileRegex: String?
        
        public var fileRegex: String?
        
        public var zipFormat: String?
        
        public var archiveConfig: ArchiveConfig?
        
        public var readAllFiles: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case retries = "retries"
            
            case interval = "interval"
            
            case localDir = "local_dir"
            
            case workingDir = "working_dir"
            
            case unzip = "unzip"
            
            case zipFileRegex = "zip_file_regex"
            
            case fileRegex = "file_regex"
            
            case zipFormat = "zip_format"
            
            case archiveConfig = "archive_config"
            
            case readAllFiles = "read_all_files"
            
        }

        public init(retries: Int?, interval: Int?, localDir: String?, workingDir: String?, unzip: Bool?, zipFileRegex: String?, fileRegex: String?, zipFormat: String?, archiveConfig: ArchiveConfig?, readAllFiles: Bool?) {
            
            self.retries = retries
            
            self.interval = interval
            
            self.localDir = localDir
            
            self.workingDir = workingDir
            
            self.unzip = unzip
            
            self.zipFileRegex = zipFileRegex
            
            self.fileRegex = fileRegex
            
            self.zipFormat = zipFormat
            
            self.archiveConfig = archiveConfig
            
            self.readAllFiles = readAllFiles
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            retries = try? container.decode(Int.self, forKey: .retries)
            
            interval = try? container.decode(Int.self, forKey: .interval)
            
            localDir = try? container.decode(String.self, forKey: .localDir)
            
            workingDir = try? container.decode(String.self, forKey: .workingDir)
            
            unzip = try? container.decode(Bool.self, forKey: .unzip)
            
            zipFileRegex = try? container.decode(String.self, forKey: .zipFileRegex)
            
            fileRegex = try? container.decode(String.self, forKey: .fileRegex)
            
            zipFormat = try? container.decode(String.self, forKey: .zipFormat)
            
            archiveConfig = try? container.decode(ArchiveConfig.self, forKey: .archiveConfig)
            
            readAllFiles = try? container.decode(Bool.self, forKey: .readAllFiles)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(retries, forKey: .retries)
            
            try? container.encodeIfPresent(interval, forKey: .interval)
            
            try? container.encodeIfPresent(localDir, forKey: .localDir)
            
            try? container.encodeIfPresent(workingDir, forKey: .workingDir)
            
            try? container.encodeIfPresent(unzip, forKey: .unzip)
            
            try? container.encodeIfPresent(zipFileRegex, forKey: .zipFileRegex)
            
            try? container.encodeIfPresent(fileRegex, forKey: .fileRegex)
            
            try? container.encodeIfPresent(zipFormat, forKey: .zipFormat)
            
            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
            
            try? container.encodeIfPresent(readAllFiles, forKey: .readAllFiles)
            
        }
        
    }
    
    /*
        Model: MediaType
    */

    struct MediaType: Codable {
        
        
        public var type: String?
        
        public var subtype: String?
        
        public var parameters: [String: Any]?
        
        public var qualityValue: Double?
        
        public var charset: [String: Any]?
        
        public var wildcardType: Bool?
        
        public var wildcardSubtype: Bool?
        
        public var concrete: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case subtype = "subtype"
            
            case parameters = "parameters"
            
            case qualityValue = "qualityValue"
            
            case charset = "charset"
            
            case wildcardType = "wildcardType"
            
            case wildcardSubtype = "wildcardSubtype"
            
            case concrete = "concrete"
            
        }

        public init(type: String?, subtype: String?, parameters: [String: Any]?, qualityValue: Double?, charset: [String: Any]?, wildcardType: Bool?, wildcardSubtype: Bool?, concrete: Bool?) {
            
            self.type = type
            
            self.subtype = subtype
            
            self.parameters = parameters
            
            self.qualityValue = qualityValue
            
            self.charset = charset
            
            self.wildcardType = wildcardType
            
            self.wildcardSubtype = wildcardSubtype
            
            self.concrete = concrete
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            type = try? container.decode(String.self, forKey: .type)
            
            subtype = try? container.decode(String.self, forKey: .subtype)
            
            parameters = try? container.decode([String: Any].self, forKey: .parameters)
            
            qualityValue = try? container.decode(Double.self, forKey: .qualityValue)
            
            charset = try? container.decode([String: Any].self, forKey: .charset)
            
            wildcardType = try? container.decode(Bool.self, forKey: .wildcardType)
            
            wildcardSubtype = try? container.decode(Bool.self, forKey: .wildcardSubtype)
            
            concrete = try? container.decode(Bool.self, forKey: .concrete)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(subtype, forKey: .subtype)
            
            try? container.encodeIfPresent(parameters, forKey: .parameters)
            
            try? container.encodeIfPresent(qualityValue, forKey: .qualityValue)
            
            try? container.encodeIfPresent(charset, forKey: .charset)
            
            try? container.encodeIfPresent(wildcardType, forKey: .wildcardType)
            
            try? container.encodeIfPresent(wildcardSubtype, forKey: .wildcardSubtype)
            
            try? container.encodeIfPresent(concrete, forKey: .concrete)
            
        }
        
    }
    
    /*
        Model: MongoDocConfig
    */

    struct MongoDocConfig: Codable {
        
        
        public var collectionName: String?
        
        public var findQuery: Document?
        
        public var projectionQuery: Document?
        
        public var propBeanConfigs: [PropBeanConfig]?
        
        public var aggregatePipeLine: [Document]?
        
        public var skipSave: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case collectionName = "collection_name"
            
            case findQuery = "find_query"
            
            case projectionQuery = "projection_query"
            
            case propBeanConfigs = "prop_bean_configs"
            
            case aggregatePipeLine = "aggregate_pipeLine"
            
            case skipSave = "skip_save"
            
        }

        public init(collectionName: String?, findQuery: Document?, projectionQuery: Document?, propBeanConfigs: [PropBeanConfig]?, aggregatePipeLine: [Document]?, skipSave: Bool?) {
            
            self.collectionName = collectionName
            
            self.findQuery = findQuery
            
            self.projectionQuery = projectionQuery
            
            self.propBeanConfigs = propBeanConfigs
            
            self.aggregatePipeLine = aggregatePipeLine
            
            self.skipSave = skipSave
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            collectionName = try? container.decode(String.self, forKey: .collectionName)
            
            findQuery = try? container.decode(Document.self, forKey: .findQuery)
            
            projectionQuery = try? container.decode(Document.self, forKey: .projectionQuery)
            
            propBeanConfigs = try? container.decode([PropBeanConfig].self, forKey: .propBeanConfigs)
            
            aggregatePipeLine = try? container.decode([Document].self, forKey: .aggregatePipeLine)
            
            skipSave = try? container.decode(Bool.self, forKey: .skipSave)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(collectionName, forKey: .collectionName)
            
            try? container.encodeIfPresent(findQuery, forKey: .findQuery)
            
            try? container.encodeIfPresent(projectionQuery, forKey: .projectionQuery)
            
            try? container.encodeIfPresent(propBeanConfigs, forKey: .propBeanConfigs)
            
            try? container.encodeIfPresent(aggregatePipeLine, forKey: .aggregatePipeLine)
            
            try? container.encodeIfPresent(skipSave, forKey: .skipSave)
            
        }
        
    }
    
    /*
        Model: OAuthConfig
    */

    struct OAuthConfig: Codable {
        
        
        public var limit: Int?
        
        public var pages: Int?
        
        public var interval: Int?
        
        public var consumerKey: String?
        
        public var consumerSecret: String?
        
        public var token: String?
        
        public var tokenSecret: String?
        
        public var restUrl: String?
        
        public var restBaseUrl: String?
        
        public var functionName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case limit = "limit"
            
            case pages = "pages"
            
            case interval = "interval"
            
            case consumerKey = "consumer_key"
            
            case consumerSecret = "consumer_secret"
            
            case token = "token"
            
            case tokenSecret = "token_secret"
            
            case restUrl = "rest_url"
            
            case restBaseUrl = "rest_base_url"
            
            case functionName = "function_name"
            
        }

        public init(limit: Int?, pages: Int?, interval: Int?, consumerKey: String?, consumerSecret: String?, token: String?, tokenSecret: String?, restUrl: String?, restBaseUrl: String?, functionName: String?) {
            
            self.limit = limit
            
            self.pages = pages
            
            self.interval = interval
            
            self.consumerKey = consumerKey
            
            self.consumerSecret = consumerSecret
            
            self.token = token
            
            self.tokenSecret = tokenSecret
            
            self.restUrl = restUrl
            
            self.restBaseUrl = restBaseUrl
            
            self.functionName = functionName
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
            interval = try? container.decode(Int.self, forKey: .interval)
            
            consumerKey = try? container.decode(String.self, forKey: .consumerKey)
            
            consumerSecret = try? container.decode(String.self, forKey: .consumerSecret)
            
            token = try? container.decode(String.self, forKey: .token)
            
            tokenSecret = try? container.decode(String.self, forKey: .tokenSecret)
            
            restUrl = try? container.decode(String.self, forKey: .restUrl)
            
            restBaseUrl = try? container.decode(String.self, forKey: .restBaseUrl)
            
            functionName = try? container.decode(String.self, forKey: .functionName)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(interval, forKey: .interval)
            
            try? container.encodeIfPresent(consumerKey, forKey: .consumerKey)
            
            try? container.encodeIfPresent(consumerSecret, forKey: .consumerSecret)
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            try? container.encodeIfPresent(tokenSecret, forKey: .tokenSecret)
            
            try? container.encodeIfPresent(restUrl, forKey: .restUrl)
            
            try? container.encodeIfPresent(restBaseUrl, forKey: .restBaseUrl)
            
            try? container.encodeIfPresent(functionName, forKey: .functionName)
            
        }
        
    }
    
    /*
        Model: ProcessConfig
    */

    struct ProcessConfig: Codable {
        
        
        public var dbConfig: DBConfig?
        
        public var dbParamConfig: DBParamConfig?
        
        public var sftpConfig: SFTPConfig?
        
        public var awsS3Config: AWSS3config?
        
        public var mongoDocConfig: MongoDocConfig?
        
        public var ftpConfig: FTPConfig?
        
        public var emailConfig: EmailConfig?
        
        public var fileConfig: FileConfig?
        
        public var jsonDocConfig: JsonDocConfig?
        
        public var docMappingConfig: DocMappingConfig?
        
        public var taskStepConfig: TaskStepConfig?
        
        public var httpConfig: HttpConfig?
        
        public var localFileConfig: LocalFileConfig?
        
        public var oauthConfig: OAuthConfig?
        
        public var googleSpreadsheetConfig: GoogleSpreadSheetConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case dbConfig = "db_config"
            
            case dbParamConfig = "db_param_config"
            
            case sftpConfig = "sftp_config"
            
            case awsS3Config = "aws_s3_config"
            
            case mongoDocConfig = "mongo_doc_config"
            
            case ftpConfig = "ftp_config"
            
            case emailConfig = "email_config"
            
            case fileConfig = "file_config"
            
            case jsonDocConfig = "json_doc_config"
            
            case docMappingConfig = "doc_mapping_config"
            
            case taskStepConfig = "task_step_config"
            
            case httpConfig = "http_config"
            
            case localFileConfig = "local_file_config"
            
            case oauthConfig = "oauth_config"
            
            case googleSpreadsheetConfig = "google_spreadsheet_config"
            
        }

        public init(dbConfig: DBConfig?, dbParamConfig: DBParamConfig?, sftpConfig: SFTPConfig?, awsS3Config: AWSS3config?, mongoDocConfig: MongoDocConfig?, ftpConfig: FTPConfig?, emailConfig: EmailConfig?, fileConfig: FileConfig?, jsonDocConfig: JsonDocConfig?, docMappingConfig: DocMappingConfig?, taskStepConfig: TaskStepConfig?, httpConfig: HttpConfig?, localFileConfig: LocalFileConfig?, oauthConfig: OAuthConfig?, googleSpreadsheetConfig: GoogleSpreadSheetConfig?) {
            
            self.dbConfig = dbConfig
            
            self.dbParamConfig = dbParamConfig
            
            self.sftpConfig = sftpConfig
            
            self.awsS3Config = awsS3Config
            
            self.mongoDocConfig = mongoDocConfig
            
            self.ftpConfig = ftpConfig
            
            self.emailConfig = emailConfig
            
            self.fileConfig = fileConfig
            
            self.jsonDocConfig = jsonDocConfig
            
            self.docMappingConfig = docMappingConfig
            
            self.taskStepConfig = taskStepConfig
            
            self.httpConfig = httpConfig
            
            self.localFileConfig = localFileConfig
            
            self.oauthConfig = oauthConfig
            
            self.googleSpreadsheetConfig = googleSpreadsheetConfig
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            dbConfig = try? container.decode(DBConfig.self, forKey: .dbConfig)
            
            dbParamConfig = try? container.decode(DBParamConfig.self, forKey: .dbParamConfig)
            
            sftpConfig = try? container.decode(SFTPConfig.self, forKey: .sftpConfig)
            
            awsS3Config = try? container.decode(AWSS3config.self, forKey: .awsS3Config)
            
            mongoDocConfig = try? container.decode(MongoDocConfig.self, forKey: .mongoDocConfig)
            
            ftpConfig = try? container.decode(FTPConfig.self, forKey: .ftpConfig)
            
            emailConfig = try? container.decode(EmailConfig.self, forKey: .emailConfig)
            
            fileConfig = try? container.decode(FileConfig.self, forKey: .fileConfig)
            
            jsonDocConfig = try? container.decode(JsonDocConfig.self, forKey: .jsonDocConfig)
            
            docMappingConfig = try? container.decode(DocMappingConfig.self, forKey: .docMappingConfig)
            
            taskStepConfig = try? container.decode(TaskStepConfig.self, forKey: .taskStepConfig)
            
            httpConfig = try? container.decode(HttpConfig.self, forKey: .httpConfig)
            
            localFileConfig = try? container.decode(LocalFileConfig.self, forKey: .localFileConfig)
            
            oauthConfig = try? container.decode(OAuthConfig.self, forKey: .oauthConfig)
            
            googleSpreadsheetConfig = try? container.decode(GoogleSpreadSheetConfig.self, forKey: .googleSpreadsheetConfig)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(dbConfig, forKey: .dbConfig)
            
            try? container.encodeIfPresent(dbParamConfig, forKey: .dbParamConfig)
            
            try? container.encodeIfPresent(sftpConfig, forKey: .sftpConfig)
            
            try? container.encodeIfPresent(awsS3Config, forKey: .awsS3Config)
            
            try? container.encodeIfPresent(mongoDocConfig, forKey: .mongoDocConfig)
            
            try? container.encodeIfPresent(ftpConfig, forKey: .ftpConfig)
            
            try? container.encodeIfPresent(emailConfig, forKey: .emailConfig)
            
            try? container.encodeIfPresent(fileConfig, forKey: .fileConfig)
            
            try? container.encodeIfPresent(jsonDocConfig, forKey: .jsonDocConfig)
            
            try? container.encodeIfPresent(docMappingConfig, forKey: .docMappingConfig)
            
            try? container.encodeIfPresent(taskStepConfig, forKey: .taskStepConfig)
            
            try? container.encodeIfPresent(httpConfig, forKey: .httpConfig)
            
            try? container.encodeIfPresent(localFileConfig, forKey: .localFileConfig)
            
            try? container.encodeIfPresent(oauthConfig, forKey: .oauthConfig)
            
            try? container.encodeIfPresent(googleSpreadsheetConfig, forKey: .googleSpreadsheetConfig)
            
        }
        
    }
    
    /*
        Model: PropBeanConfig
    */

    struct PropBeanConfig: Codable {
        
        
        public var required: Bool?
        
        public var mapping: [String: Any]?
        
        public var optional: Bool?
        
        public var send: Send?
        
        public var fieldValidations: [FieldValidation]?
        
        public var validations: [Document]?
        
        public var values: [String]?
        
        public var include: Bool?
        
        public var sourceField: String?
        
        public var sourceFields: [String]?
        
        public var destinationField: String?
        
        public var dataType: String?
        
        public var defaultValue: [String: Any]?
        
        public var constValue: [String: Any]?
        
        public var concatStr: String?
        
        public var functionName: String?
        
        public var transformerName: String?
        
        public var allParamFunctionName: String?
        
        public var subSeparator: String?
        
        public var indexField: String?
        
        public var ignoreIfNotExists: Bool?
        
        public var identifierType: String?
        
        public var projectionQuery: Document?
        
        public var enrichFromMaster: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case required = "required"
            
            case mapping = "mapping"
            
            case optional = "optional"
            
            case send = "send"
            
            case fieldValidations = "fieldValidations"
            
            case validations = "validations"
            
            case values = "values"
            
            case include = "include"
            
            case sourceField = "source_field"
            
            case sourceFields = "source_fields"
            
            case destinationField = "destination_field"
            
            case dataType = "data_type"
            
            case defaultValue = "default_value"
            
            case constValue = "const_value"
            
            case concatStr = "concat_str"
            
            case functionName = "function_name"
            
            case transformerName = "transformer_name"
            
            case allParamFunctionName = "all_param_function_name"
            
            case subSeparator = "sub_separator"
            
            case indexField = "index_field"
            
            case ignoreIfNotExists = "ignore_if_not_exists"
            
            case identifierType = "identifier_type"
            
            case projectionQuery = "projection_query"
            
            case enrichFromMaster = "enrich_from_master"
            
        }

        public init(required: Bool?, mapping: [String: Any]?, optional: Bool?, send: Send?, fieldValidations: [FieldValidation]?, validations: [Document]?, values: [String]?, include: Bool?, sourceField: String?, sourceFields: [String]?, destinationField: String?, dataType: String?, defaultValue: [String: Any]?, constValue: [String: Any]?, concatStr: String?, functionName: String?, transformerName: String?, allParamFunctionName: String?, subSeparator: String?, indexField: String?, ignoreIfNotExists: Bool?, identifierType: String?, projectionQuery: Document?, enrichFromMaster: Bool?) {
            
            self.required = required
            
            self.mapping = mapping
            
            self.optional = optional
            
            self.send = send
            
            self.fieldValidations = fieldValidations
            
            self.validations = validations
            
            self.values = values
            
            self.include = include
            
            self.sourceField = sourceField
            
            self.sourceFields = sourceFields
            
            self.destinationField = destinationField
            
            self.dataType = dataType
            
            self.defaultValue = defaultValue
            
            self.constValue = constValue
            
            self.concatStr = concatStr
            
            self.functionName = functionName
            
            self.transformerName = transformerName
            
            self.allParamFunctionName = allParamFunctionName
            
            self.subSeparator = subSeparator
            
            self.indexField = indexField
            
            self.ignoreIfNotExists = ignoreIfNotExists
            
            self.identifierType = identifierType
            
            self.projectionQuery = projectionQuery
            
            self.enrichFromMaster = enrichFromMaster
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            required = try? container.decode(Bool.self, forKey: .required)
            
            mapping = try? container.decode([String: Any].self, forKey: .mapping)
            
            optional = try? container.decode(Bool.self, forKey: .optional)
            
            send = try? container.decode(Send.self, forKey: .send)
            
            fieldValidations = try? container.decode([FieldValidation].self, forKey: .fieldValidations)
            
            validations = try? container.decode([Document].self, forKey: .validations)
            
            values = try? container.decode([String].self, forKey: .values)
            
            include = try? container.decode(Bool.self, forKey: .include)
            
            sourceField = try? container.decode(String.self, forKey: .sourceField)
            
            sourceFields = try? container.decode([String].self, forKey: .sourceFields)
            
            destinationField = try? container.decode(String.self, forKey: .destinationField)
            
            dataType = try? container.decode(String.self, forKey: .dataType)
            
            defaultValue = try? container.decode([String: Any].self, forKey: .defaultValue)
            
            constValue = try? container.decode([String: Any].self, forKey: .constValue)
            
            concatStr = try? container.decode(String.self, forKey: .concatStr)
            
            functionName = try? container.decode(String.self, forKey: .functionName)
            
            transformerName = try? container.decode(String.self, forKey: .transformerName)
            
            allParamFunctionName = try? container.decode(String.self, forKey: .allParamFunctionName)
            
            subSeparator = try? container.decode(String.self, forKey: .subSeparator)
            
            indexField = try? container.decode(String.self, forKey: .indexField)
            
            ignoreIfNotExists = try? container.decode(Bool.self, forKey: .ignoreIfNotExists)
            
            identifierType = try? container.decode(String.self, forKey: .identifierType)
            
            projectionQuery = try? container.decode(Document.self, forKey: .projectionQuery)
            
            enrichFromMaster = try? container.decode(Bool.self, forKey: .enrichFromMaster)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(required, forKey: .required)
            
            try? container.encodeIfPresent(mapping, forKey: .mapping)
            
            try? container.encodeIfPresent(optional, forKey: .optional)
            
            try? container.encodeIfPresent(send, forKey: .send)
            
            try? container.encodeIfPresent(fieldValidations, forKey: .fieldValidations)
            
            try? container.encodeIfPresent(validations, forKey: .validations)
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            try? container.encodeIfPresent(include, forKey: .include)
            
            try? container.encodeIfPresent(sourceField, forKey: .sourceField)
            
            try? container.encodeIfPresent(sourceFields, forKey: .sourceFields)
            
            try? container.encodeIfPresent(destinationField, forKey: .destinationField)
            
            try? container.encodeIfPresent(dataType, forKey: .dataType)
            
            try? container.encodeIfPresent(defaultValue, forKey: .defaultValue)
            
            try? container.encodeIfPresent(constValue, forKey: .constValue)
            
            try? container.encodeIfPresent(concatStr, forKey: .concatStr)
            
            try? container.encodeIfPresent(functionName, forKey: .functionName)
            
            try? container.encodeIfPresent(transformerName, forKey: .transformerName)
            
            try? container.encodeIfPresent(allParamFunctionName, forKey: .allParamFunctionName)
            
            try? container.encodeIfPresent(subSeparator, forKey: .subSeparator)
            
            try? container.encodeIfPresent(indexField, forKey: .indexField)
            
            try? container.encodeIfPresent(ignoreIfNotExists, forKey: .ignoreIfNotExists)
            
            try? container.encodeIfPresent(identifierType, forKey: .identifierType)
            
            try? container.encodeIfPresent(projectionQuery, forKey: .projectionQuery)
            
            try? container.encodeIfPresent(enrichFromMaster, forKey: .enrichFromMaster)
            
        }
        
    }
    
    /*
        Model: PropBeanDTO
    */

    struct PropBeanDTO: Codable {
        
        
        public var required: Bool?
        
        public var optional: Bool?
        
        public var include: Bool?
        
        public var sourceField: String?
        
        public var sourceFields: [String]?
        
        public var destinationField: String?
        
        public var dataType: String?
        
        public var defaultValue: [String: Any]?
        
        public var constValue: [String: Any]?
        
        public var concatStr: String?
        
        public var functionName: String?
        
        public var transformerName: String?
        
        public var allParamFunctionName: String?
        
        public var subSeparator: String?
        
        public var indexField: String?
        
        public var ignoreIfNotExists: Bool?
        
        public var identifierType: String?
        
        public var projectionQuery: Document?
        
        public var enrichFromMaster: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case required = "required"
            
            case optional = "optional"
            
            case include = "include"
            
            case sourceField = "source_field"
            
            case sourceFields = "source_fields"
            
            case destinationField = "destination_field"
            
            case dataType = "data_type"
            
            case defaultValue = "default_value"
            
            case constValue = "const_value"
            
            case concatStr = "concat_str"
            
            case functionName = "function_name"
            
            case transformerName = "transformer_name"
            
            case allParamFunctionName = "all_param_function_name"
            
            case subSeparator = "sub_separator"
            
            case indexField = "index_field"
            
            case ignoreIfNotExists = "ignore_if_not_exists"
            
            case identifierType = "identifier_type"
            
            case projectionQuery = "projection_query"
            
            case enrichFromMaster = "enrich_from_master"
            
        }

        public init(required: Bool?, optional: Bool?, include: Bool?, sourceField: String?, sourceFields: [String]?, destinationField: String?, dataType: String?, defaultValue: [String: Any]?, constValue: [String: Any]?, concatStr: String?, functionName: String?, transformerName: String?, allParamFunctionName: String?, subSeparator: String?, indexField: String?, ignoreIfNotExists: Bool?, identifierType: String?, projectionQuery: Document?, enrichFromMaster: Bool?) {
            
            self.required = required
            
            self.optional = optional
            
            self.include = include
            
            self.sourceField = sourceField
            
            self.sourceFields = sourceFields
            
            self.destinationField = destinationField
            
            self.dataType = dataType
            
            self.defaultValue = defaultValue
            
            self.constValue = constValue
            
            self.concatStr = concatStr
            
            self.functionName = functionName
            
            self.transformerName = transformerName
            
            self.allParamFunctionName = allParamFunctionName
            
            self.subSeparator = subSeparator
            
            self.indexField = indexField
            
            self.ignoreIfNotExists = ignoreIfNotExists
            
            self.identifierType = identifierType
            
            self.projectionQuery = projectionQuery
            
            self.enrichFromMaster = enrichFromMaster
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            required = try? container.decode(Bool.self, forKey: .required)
            
            optional = try? container.decode(Bool.self, forKey: .optional)
            
            include = try? container.decode(Bool.self, forKey: .include)
            
            sourceField = try? container.decode(String.self, forKey: .sourceField)
            
            sourceFields = try? container.decode([String].self, forKey: .sourceFields)
            
            destinationField = try? container.decode(String.self, forKey: .destinationField)
            
            dataType = try? container.decode(String.self, forKey: .dataType)
            
            defaultValue = try? container.decode([String: Any].self, forKey: .defaultValue)
            
            constValue = try? container.decode([String: Any].self, forKey: .constValue)
            
            concatStr = try? container.decode(String.self, forKey: .concatStr)
            
            functionName = try? container.decode(String.self, forKey: .functionName)
            
            transformerName = try? container.decode(String.self, forKey: .transformerName)
            
            allParamFunctionName = try? container.decode(String.self, forKey: .allParamFunctionName)
            
            subSeparator = try? container.decode(String.self, forKey: .subSeparator)
            
            indexField = try? container.decode(String.self, forKey: .indexField)
            
            ignoreIfNotExists = try? container.decode(Bool.self, forKey: .ignoreIfNotExists)
            
            identifierType = try? container.decode(String.self, forKey: .identifierType)
            
            projectionQuery = try? container.decode(Document.self, forKey: .projectionQuery)
            
            enrichFromMaster = try? container.decode(Bool.self, forKey: .enrichFromMaster)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(required, forKey: .required)
            
            try? container.encodeIfPresent(optional, forKey: .optional)
            
            try? container.encodeIfPresent(include, forKey: .include)
            
            try? container.encodeIfPresent(sourceField, forKey: .sourceField)
            
            try? container.encodeIfPresent(sourceFields, forKey: .sourceFields)
            
            try? container.encodeIfPresent(destinationField, forKey: .destinationField)
            
            try? container.encodeIfPresent(dataType, forKey: .dataType)
            
            try? container.encodeIfPresent(defaultValue, forKey: .defaultValue)
            
            try? container.encodeIfPresent(constValue, forKey: .constValue)
            
            try? container.encodeIfPresent(concatStr, forKey: .concatStr)
            
            try? container.encodeIfPresent(functionName, forKey: .functionName)
            
            try? container.encodeIfPresent(transformerName, forKey: .transformerName)
            
            try? container.encodeIfPresent(allParamFunctionName, forKey: .allParamFunctionName)
            
            try? container.encodeIfPresent(subSeparator, forKey: .subSeparator)
            
            try? container.encodeIfPresent(indexField, forKey: .indexField)
            
            try? container.encodeIfPresent(ignoreIfNotExists, forKey: .ignoreIfNotExists)
            
            try? container.encodeIfPresent(identifierType, forKey: .identifierType)
            
            try? container.encodeIfPresent(projectionQuery, forKey: .projectionQuery)
            
            try? container.encodeIfPresent(enrichFromMaster, forKey: .enrichFromMaster)
            
        }
        
    }
    
    /*
        Model: ResponseEnvelopeListJobConfigRawDTO
    */

    struct ResponseEnvelopeListJobConfigRawDTO: Codable {
        
        
        public var timestamp: String?
        
        public var status: Int?
        
        public var error: String?
        
        public var exception: String?
        
        public var message: String?
        
        public var totalTimeTakenInMillis: Int?
        
        public var httpStatus: String?
        
        public var items: [JobConfigRawDTO]?
        
        public var payload: [JobConfigRawDTO]?
        
        public var traceId: String?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case timestamp = "timestamp"
            
            case status = "status"
            
            case error = "error"
            
            case exception = "exception"
            
            case message = "message"
            
            case totalTimeTakenInMillis = "total_time_taken_in_millis"
            
            case httpStatus = "http_status"
            
            case items = "items"
            
            case payload = "payload"
            
            case traceId = "trace_id"
            
            case page = "page"
            
        }

        public init(timestamp: String?, status: Int?, error: String?, exception: String?, message: String?, totalTimeTakenInMillis: Int?, httpStatus: String?, items: [JobConfigRawDTO]?, payload: [JobConfigRawDTO]?, traceId: String?, page: Page?) {
            
            self.timestamp = timestamp
            
            self.status = status
            
            self.error = error
            
            self.exception = exception
            
            self.message = message
            
            self.totalTimeTakenInMillis = totalTimeTakenInMillis
            
            self.httpStatus = httpStatus
            
            self.items = items
            
            self.payload = payload
            
            self.traceId = traceId
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            timestamp = try? container.decode(String.self, forKey: .timestamp)
            
            status = try? container.decode(Int.self, forKey: .status)
            
            error = try? container.decode(String.self, forKey: .error)
            
            exception = try? container.decode(String.self, forKey: .exception)
            
            message = try? container.decode(String.self, forKey: .message)
            
            totalTimeTakenInMillis = try? container.decode(Int.self, forKey: .totalTimeTakenInMillis)
            
            httpStatus = try? container.decode(String.self, forKey: .httpStatus)
            
            items = try? container.decode([JobConfigRawDTO].self, forKey: .items)
            
            payload = try? container.decode([JobConfigRawDTO].self, forKey: .payload)
            
            traceId = try? container.decode(String.self, forKey: .traceId)
            
            page = try? container.decode(Page.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(totalTimeTakenInMillis, forKey: .totalTimeTakenInMillis)
            
            try? container.encodeIfPresent(httpStatus, forKey: .httpStatus)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: SFTPConfig
    */

    struct SFTPConfig: Codable {
        
        
        public var host: String?
        
        public var port: Int?
        
        public var username: String?
        
        public var password: String?
        
        public var unzip: Bool?
        
        public var retries: Int?
        
        public var interval: Int?
        
        public var privateKeyPath: String?
        
        public var strictHostKeyChecking: Bool?
        
        public var localDir: String?
        
        public var remoteDir: String?
        
        public var passwordProtected: Bool?
        
        public var zipFileRegex: String?
        
        public var fileRegex: String?
        
        public var zipFormat: String?
        
        public var archiveConfig: ArchiveConfig?
        
        public var readAllFiles: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case host = "host"
            
            case port = "port"
            
            case username = "username"
            
            case password = "password"
            
            case unzip = "unzip"
            
            case retries = "retries"
            
            case interval = "interval"
            
            case privateKeyPath = "private_key_path"
            
            case strictHostKeyChecking = "strict_host_key_checking"
            
            case localDir = "local_dir"
            
            case remoteDir = "remote_dir"
            
            case passwordProtected = "password_protected"
            
            case zipFileRegex = "zip_file_regex"
            
            case fileRegex = "file_regex"
            
            case zipFormat = "zip_format"
            
            case archiveConfig = "archive_config"
            
            case readAllFiles = "read_all_files"
            
        }

        public init(host: String?, port: Int?, username: String?, password: String?, unzip: Bool?, retries: Int?, interval: Int?, privateKeyPath: String?, strictHostKeyChecking: Bool?, localDir: String?, remoteDir: String?, passwordProtected: Bool?, zipFileRegex: String?, fileRegex: String?, zipFormat: String?, archiveConfig: ArchiveConfig?, readAllFiles: Bool?) {
            
            self.host = host
            
            self.port = port
            
            self.username = username
            
            self.password = password
            
            self.unzip = unzip
            
            self.retries = retries
            
            self.interval = interval
            
            self.privateKeyPath = privateKeyPath
            
            self.strictHostKeyChecking = strictHostKeyChecking
            
            self.localDir = localDir
            
            self.remoteDir = remoteDir
            
            self.passwordProtected = passwordProtected
            
            self.zipFileRegex = zipFileRegex
            
            self.fileRegex = fileRegex
            
            self.zipFormat = zipFormat
            
            self.archiveConfig = archiveConfig
            
            self.readAllFiles = readAllFiles
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            host = try? container.decode(String.self, forKey: .host)
            
            port = try? container.decode(Int.self, forKey: .port)
            
            username = try? container.decode(String.self, forKey: .username)
            
            password = try? container.decode(String.self, forKey: .password)
            
            unzip = try? container.decode(Bool.self, forKey: .unzip)
            
            retries = try? container.decode(Int.self, forKey: .retries)
            
            interval = try? container.decode(Int.self, forKey: .interval)
            
            privateKeyPath = try? container.decode(String.self, forKey: .privateKeyPath)
            
            strictHostKeyChecking = try? container.decode(Bool.self, forKey: .strictHostKeyChecking)
            
            localDir = try? container.decode(String.self, forKey: .localDir)
            
            remoteDir = try? container.decode(String.self, forKey: .remoteDir)
            
            passwordProtected = try? container.decode(Bool.self, forKey: .passwordProtected)
            
            zipFileRegex = try? container.decode(String.self, forKey: .zipFileRegex)
            
            fileRegex = try? container.decode(String.self, forKey: .fileRegex)
            
            zipFormat = try? container.decode(String.self, forKey: .zipFormat)
            
            archiveConfig = try? container.decode(ArchiveConfig.self, forKey: .archiveConfig)
            
            readAllFiles = try? container.decode(Bool.self, forKey: .readAllFiles)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(host, forKey: .host)
            
            try? container.encodeIfPresent(port, forKey: .port)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(unzip, forKey: .unzip)
            
            try? container.encodeIfPresent(retries, forKey: .retries)
            
            try? container.encodeIfPresent(interval, forKey: .interval)
            
            try? container.encodeIfPresent(privateKeyPath, forKey: .privateKeyPath)
            
            try? container.encodeIfPresent(strictHostKeyChecking, forKey: .strictHostKeyChecking)
            
            try? container.encodeIfPresent(localDir, forKey: .localDir)
            
            try? container.encodeIfPresent(remoteDir, forKey: .remoteDir)
            
            try? container.encodeIfPresent(passwordProtected, forKey: .passwordProtected)
            
            try? container.encodeIfPresent(zipFileRegex, forKey: .zipFileRegex)
            
            try? container.encodeIfPresent(fileRegex, forKey: .fileRegex)
            
            try? container.encodeIfPresent(zipFormat, forKey: .zipFormat)
            
            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
            
            try? container.encodeIfPresent(readAllFiles, forKey: .readAllFiles)
            
        }
        
    }
    
    /*
        Model: Send
    */

    struct Send: Codable {
        
        
        public var raw: Bool?
        
        public var processed: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case raw = "raw"
            
            case processed = "processed"
            
        }

        public init(raw: Bool?, processed: Bool?) {
            
            self.raw = raw
            
            self.processed = processed
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            raw = try? container.decode(Bool.self, forKey: .raw)
            
            processed = try? container.decode(Bool.self, forKey: .processed)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(raw, forKey: .raw)
            
            try? container.encodeIfPresent(processed, forKey: .processed)
            
        }
        
    }
    
    /*
        Model: StoreConfig
    */

    struct StoreConfig: Codable {
        
        
        public var jobCode: String?
        
        public var storeid: String?
        
        public var storeAlias: String?
        
        public var storeFileRegex: String?
        
        public var storeFileName: String?
        
        public var processConfig: ProcessConfig?
        
        public var properties: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case jobCode = "job_code"
            
            case storeid = "storeid"
            
            case storeAlias = "store_alias"
            
            case storeFileRegex = "store_file_regex"
            
            case storeFileName = "store_file_name"
            
            case processConfig = "process_config"
            
            case properties = "properties"
            
        }

        public init(jobCode: String?, storeid: String?, storeAlias: String?, storeFileRegex: String?, storeFileName: String?, processConfig: ProcessConfig?, properties: [String: Any]?) {
            
            self.jobCode = jobCode
            
            self.storeid = storeid
            
            self.storeAlias = storeAlias
            
            self.storeFileRegex = storeFileRegex
            
            self.storeFileName = storeFileName
            
            self.processConfig = processConfig
            
            self.properties = properties
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            jobCode = try? container.decode(String.self, forKey: .jobCode)
            
            storeid = try? container.decode(String.self, forKey: .storeid)
            
            storeAlias = try? container.decode(String.self, forKey: .storeAlias)
            
            storeFileRegex = try? container.decode(String.self, forKey: .storeFileRegex)
            
            storeFileName = try? container.decode(String.self, forKey: .storeFileName)
            
            processConfig = try? container.decode(ProcessConfig.self, forKey: .processConfig)
            
            properties = try? container.decode([String: Any].self, forKey: .properties)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(jobCode, forKey: .jobCode)
            
            try? container.encodeIfPresent(storeid, forKey: .storeid)
            
            try? container.encodeIfPresent(storeAlias, forKey: .storeAlias)
            
            try? container.encodeIfPresent(storeFileRegex, forKey: .storeFileRegex)
            
            try? container.encodeIfPresent(storeFileName, forKey: .storeFileName)
            
            try? container.encodeIfPresent(processConfig, forKey: .processConfig)
            
            try? container.encodeIfPresent(properties, forKey: .properties)
            
        }
        
    }
    
    /*
        Model: StoreFilter
    */

    struct StoreFilter: Codable {
        
        
        public var includeTags: [String]?
        
        public var excludeTags: [String]?
        
        public var query: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case includeTags = "include_tags"
            
            case excludeTags = "exclude_tags"
            
            case query = "query"
            
        }

        public init(includeTags: [String]?, excludeTags: [String]?, query: [String: Any]?) {
            
            self.includeTags = includeTags
            
            self.excludeTags = excludeTags
            
            self.query = query
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            includeTags = try? container.decode([String].self, forKey: .includeTags)
            
            excludeTags = try? container.decode([String].self, forKey: .excludeTags)
            
            query = try? container.decode([String: Any].self, forKey: .query)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(includeTags, forKey: .includeTags)
            
            try? container.encodeIfPresent(excludeTags, forKey: .excludeTags)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
        }
        
    }
    
    /*
        Model: TaskConfig
    */

    struct TaskConfig: Codable {
        
        
        public var name: String?
        
        public var taskConfigId: Int?
        
        public var taskParams: [TaskParam]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case taskConfigId = "taskConfigId"
            
            case taskParams = "taskParams"
            
        }

        public init(name: String?, taskConfigId: Int?, taskParams: [TaskParam]?) {
            
            self.name = name
            
            self.taskConfigId = taskConfigId
            
            self.taskParams = taskParams
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            taskConfigId = try? container.decode(Int.self, forKey: .taskConfigId)
            
            taskParams = try? container.decode([TaskParam].self, forKey: .taskParams)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(taskConfigId, forKey: .taskConfigId)
            
            try? container.encodeIfPresent(taskParams, forKey: .taskParams)
            
        }
        
    }
    
    /*
        Model: TaskParam
    */

    struct TaskParam: Codable {
        
        
        public var name: String?
        
        public var value: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case value = "value"
            
        }

        public init(name: String?, value: [String: Any]?) {
            
            self.name = name
            
            self.value = value
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            value = try? container.decode([String: Any].self, forKey: .value)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
        }
        
    }
    
    /*
        Model: TaskStepConfig
    */

    struct TaskStepConfig: Codable {
        
        
        public var taskConfigs: [TaskConfig]?
        
        public var taskConfigIds: [Int]?
        
        public var taskConfigGroupIds: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case taskConfigs = "task_configs"
            
            case taskConfigIds = "task_config_ids"
            
            case taskConfigGroupIds = "task_config_group_ids"
            
        }

        public init(taskConfigs: [TaskConfig]?, taskConfigIds: [Int]?, taskConfigGroupIds: [Int]?) {
            
            self.taskConfigs = taskConfigs
            
            self.taskConfigIds = taskConfigIds
            
            self.taskConfigGroupIds = taskConfigGroupIds
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            taskConfigs = try? container.decode([TaskConfig].self, forKey: .taskConfigs)
            
            taskConfigIds = try? container.decode([Int].self, forKey: .taskConfigIds)
            
            taskConfigGroupIds = try? container.decode([Int].self, forKey: .taskConfigGroupIds)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(taskConfigs, forKey: .taskConfigs)
            
            try? container.encodeIfPresent(taskConfigIds, forKey: .taskConfigIds)
            
            try? container.encodeIfPresent(taskConfigGroupIds, forKey: .taskConfigGroupIds)
            
        }
        
    }
    
    /*
        Model: ResponseEnvelopeListJobConfigDTO
    */

    struct ResponseEnvelopeListJobConfigDTO: Codable {
        
        
        public var timestamp: String?
        
        public var status: Int?
        
        public var error: String?
        
        public var exception: String?
        
        public var message: String?
        
        public var totalTimeTakenInMillis: Int?
        
        public var httpStatus: String?
        
        public var items: [JobConfigDTO]?
        
        public var payload: [JobConfigDTO]?
        
        public var traceId: String?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case timestamp = "timestamp"
            
            case status = "status"
            
            case error = "error"
            
            case exception = "exception"
            
            case message = "message"
            
            case totalTimeTakenInMillis = "total_time_taken_in_millis"
            
            case httpStatus = "http_status"
            
            case items = "items"
            
            case payload = "payload"
            
            case traceId = "trace_id"
            
            case page = "page"
            
        }

        public init(timestamp: String?, status: Int?, error: String?, exception: String?, message: String?, totalTimeTakenInMillis: Int?, httpStatus: String?, items: [JobConfigDTO]?, payload: [JobConfigDTO]?, traceId: String?, page: Page?) {
            
            self.timestamp = timestamp
            
            self.status = status
            
            self.error = error
            
            self.exception = exception
            
            self.message = message
            
            self.totalTimeTakenInMillis = totalTimeTakenInMillis
            
            self.httpStatus = httpStatus
            
            self.items = items
            
            self.payload = payload
            
            self.traceId = traceId
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            timestamp = try? container.decode(String.self, forKey: .timestamp)
            
            status = try? container.decode(Int.self, forKey: .status)
            
            error = try? container.decode(String.self, forKey: .error)
            
            exception = try? container.decode(String.self, forKey: .exception)
            
            message = try? container.decode(String.self, forKey: .message)
            
            totalTimeTakenInMillis = try? container.decode(Int.self, forKey: .totalTimeTakenInMillis)
            
            httpStatus = try? container.decode(String.self, forKey: .httpStatus)
            
            items = try? container.decode([JobConfigDTO].self, forKey: .items)
            
            payload = try? container.decode([JobConfigDTO].self, forKey: .payload)
            
            traceId = try? container.decode(String.self, forKey: .traceId)
            
            page = try? container.decode(Page.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(totalTimeTakenInMillis, forKey: .totalTimeTakenInMillis)
            
            try? container.encodeIfPresent(httpStatus, forKey: .httpStatus)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: ResponseEnvelopeJobConfigDTO
    */

    struct ResponseEnvelopeJobConfigDTO: Codable {
        
        
        public var timestamp: String?
        
        public var status: Int?
        
        public var error: String?
        
        public var exception: String?
        
        public var message: String?
        
        public var totalTimeTakenInMillis: Int?
        
        public var httpStatus: String?
        
        public var items: JobConfigDTO?
        
        public var payload: JobConfigDTO?
        
        public var traceId: String?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case timestamp = "timestamp"
            
            case status = "status"
            
            case error = "error"
            
            case exception = "exception"
            
            case message = "message"
            
            case totalTimeTakenInMillis = "total_time_taken_in_millis"
            
            case httpStatus = "http_status"
            
            case items = "items"
            
            case payload = "payload"
            
            case traceId = "trace_id"
            
            case page = "page"
            
        }

        public init(timestamp: String?, status: Int?, error: String?, exception: String?, message: String?, totalTimeTakenInMillis: Int?, httpStatus: String?, items: JobConfigDTO?, payload: JobConfigDTO?, traceId: String?, page: Page?) {
            
            self.timestamp = timestamp
            
            self.status = status
            
            self.error = error
            
            self.exception = exception
            
            self.message = message
            
            self.totalTimeTakenInMillis = totalTimeTakenInMillis
            
            self.httpStatus = httpStatus
            
            self.items = items
            
            self.payload = payload
            
            self.traceId = traceId
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            timestamp = try? container.decode(String.self, forKey: .timestamp)
            
            status = try? container.decode(Int.self, forKey: .status)
            
            error = try? container.decode(String.self, forKey: .error)
            
            exception = try? container.decode(String.self, forKey: .exception)
            
            message = try? container.decode(String.self, forKey: .message)
            
            totalTimeTakenInMillis = try? container.decode(Int.self, forKey: .totalTimeTakenInMillis)
            
            httpStatus = try? container.decode(String.self, forKey: .httpStatus)
            
            items = try? container.decode(JobConfigDTO.self, forKey: .items)
            
            payload = try? container.decode(JobConfigDTO.self, forKey: .payload)
            
            traceId = try? container.decode(String.self, forKey: .traceId)
            
            page = try? container.decode(Page.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(totalTimeTakenInMillis, forKey: .totalTimeTakenInMillis)
            
            try? container.encodeIfPresent(httpStatus, forKey: .httpStatus)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: JobConfigListDTO
    */

    struct JobConfigListDTO: Codable {
        
        
        public var code: String?
        
        public var alias: String?
        
        public var modifiedBy: String?
        
        public var createdBy: String?
        
        public var modifiedOn: String?
        
        public var createdOn: String?
        
        public var active: Bool?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case alias = "alias"
            
            case modifiedBy = "modified_by"
            
            case createdBy = "created_by"
            
            case modifiedOn = "modified_on"
            
            case createdOn = "created_on"
            
            case active = "active"
            
            case type = "type"
            
        }

        public init(code: String?, alias: String?, modifiedBy: String?, createdBy: String?, modifiedOn: String?, createdOn: String?, active: Bool?, type: String?) {
            
            self.code = code
            
            self.alias = alias
            
            self.modifiedBy = modifiedBy
            
            self.createdBy = createdBy
            
            self.modifiedOn = modifiedOn
            
            self.createdOn = createdOn
            
            self.active = active
            
            self.type = type
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(String.self, forKey: .code)
            
            alias = try? container.decode(String.self, forKey: .alias)
            
            modifiedBy = try? container.decode(String.self, forKey: .modifiedBy)
            
            createdBy = try? container.decode(String.self, forKey: .createdBy)
            
            modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(alias, forKey: .alias)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: ResponseEnvelopeListJobConfigListDTO
    */

    struct ResponseEnvelopeListJobConfigListDTO: Codable {
        
        
        public var timestamp: String?
        
        public var status: Int?
        
        public var error: String?
        
        public var exception: String?
        
        public var message: String?
        
        public var totalTimeTakenInMillis: Int?
        
        public var httpStatus: String?
        
        public var items: [JobConfigListDTO]?
        
        public var payload: [JobConfigListDTO]?
        
        public var traceId: String?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case timestamp = "timestamp"
            
            case status = "status"
            
            case error = "error"
            
            case exception = "exception"
            
            case message = "message"
            
            case totalTimeTakenInMillis = "total_time_taken_in_millis"
            
            case httpStatus = "http_status"
            
            case items = "items"
            
            case payload = "payload"
            
            case traceId = "trace_id"
            
            case page = "page"
            
        }

        public init(timestamp: String?, status: Int?, error: String?, exception: String?, message: String?, totalTimeTakenInMillis: Int?, httpStatus: String?, items: [JobConfigListDTO]?, payload: [JobConfigListDTO]?, traceId: String?, page: Page?) {
            
            self.timestamp = timestamp
            
            self.status = status
            
            self.error = error
            
            self.exception = exception
            
            self.message = message
            
            self.totalTimeTakenInMillis = totalTimeTakenInMillis
            
            self.httpStatus = httpStatus
            
            self.items = items
            
            self.payload = payload
            
            self.traceId = traceId
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            timestamp = try? container.decode(String.self, forKey: .timestamp)
            
            status = try? container.decode(Int.self, forKey: .status)
            
            error = try? container.decode(String.self, forKey: .error)
            
            exception = try? container.decode(String.self, forKey: .exception)
            
            message = try? container.decode(String.self, forKey: .message)
            
            totalTimeTakenInMillis = try? container.decode(Int.self, forKey: .totalTimeTakenInMillis)
            
            httpStatus = try? container.decode(String.self, forKey: .httpStatus)
            
            items = try? container.decode([JobConfigListDTO].self, forKey: .items)
            
            payload = try? container.decode([JobConfigListDTO].self, forKey: .payload)
            
            traceId = try? container.decode(String.self, forKey: .traceId)
            
            page = try? container.decode(Page.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(totalTimeTakenInMillis, forKey: .totalTimeTakenInMillis)
            
            try? container.encodeIfPresent(httpStatus, forKey: .httpStatus)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    
}