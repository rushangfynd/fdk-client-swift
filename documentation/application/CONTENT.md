



##### [Back to Application docs](./README.md)

## Content Methods
Content System
* [getAnnouncements](#getannouncements)
* [getBlog](#getblog)
* [getBlogs](#getblogs)
* [getFaqs](#getfaqs)
* [getFaqCategories](#getfaqcategories)
* [getFaqBySlug](#getfaqbyslug)
* [getFaqCategoryBySlug](#getfaqcategorybyslug)
* [getFaqsByCategorySlug](#getfaqsbycategoryslug)
* [getLandingPage](#getlandingpage)
* [getLegalInformation](#getlegalinformation)
* [getNavigations](#getnavigations)
* [getPage](#getpage)
* [getPages](#getpages)
* [getSEOConfiguration](#getseoconfiguration)
* [getSlideshows](#getslideshows)
* [getSlideshow](#getslideshow)
* [getSupportInformation](#getsupportinformation)
* [getTags](#gettags)



## Methods with example and description


#### getAnnouncements
Get live announcements




```swift
content.getAnnouncements() { (response, error) in
    // Use response
}
```






Announcements are useful to highlight a message or information on top of a webpage. Use this API to retrieve live announcements. Get announcements on individual pages or for all pages.

*Returned Response:*




[AnnouncementsResponseSchema](#AnnouncementsResponseSchema)

Success. Returns a JSON object with the details of the announcement shown on an individual page. `$all` is a special slug to indicate that an announcement is being shown on all the pages. Check the example shown below or refer `AnnouncementsResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Announcements enabled</i></summary>

```json
{
  "$ref": "#/components/examples/AnnouncementEnabledExample"
}
```
</details>

<details>
<summary><i>&nbsp; No Announcement enabled</i></summary>

```json
{
  "value": {
    "announcements": {},
    "refresh_rate": 900,
    "refresh_pages": []
  }
}
```
</details>

</details>









---


#### getBlog
Get a blog




```swift
content.getBlog(slug: slug, rootId: rootId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A short, human-readable, URL-friendly identifier of a blog. You can get slug value from the endpoint /service/application/content/v1.0/blogs/. |   
| rootId | String? | no | ID given to the HTML element |  



Use this API to get the details of a blog using its slug. Details include the title, reading time, publish status, feature image, tags, author, etc.

*Returned Response:*




[BlogSchema](#BlogSchema)

Success. Returns a JSON object with blog details. Check the example shown below or refer `BlogSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "$ref": "#/components/examples/BlogResponse"
}
```
</details>

</details>









---


#### getBlogs
Get a list of blogs




```swift
content.getBlogs(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1.  |   
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to get all the blogs.

*Returned Response:*




[BlogGetResponse](#BlogGetResponse)

Success. Check the example shown below or refer `BlogGetResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "$ref": "#/components/examples/BlogGetResponse"
}
```
</details>

</details>









---


#### getFaqs
Get a list of FAQs




```swift
content.getFaqs() { (response, error) in
    // Use response
}
```






Use this API to get a list of frequently asked questions. Users will benefit from it when facing any issue with the website.

*Returned Response:*




[FaqResponseSchema](#FaqResponseSchema)

Success. Returns a JSON object with question and answers. Check the example shown below or refer `FaqResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "$ref": "#/components/examples/AppFaqs"
}
```
</details>

</details>









---


#### getFaqCategories
Get a list of FAQ categories




```swift
content.getFaqCategories() { (response, error) in
    // Use response
}
```






FAQs can be divided into categories. Use this API to get a list of FAQ categories.

*Returned Response:*




[GetFaqCategoriesSchema](#GetFaqCategoriesSchema)

Success. Returns a JSON object with categories of FAQ. Check the example shown below or refer `GetFaqCategoriesSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "categories": [
    {
      "index": 0,
      "children": [
        "6026426ae507768b168dee4b"
      ],
      "title": "Test",
      "_id": "60263f80c83c1f89f2863a8a",
      "slug": "test",
      "application": "000000000000000000000001"
    }
  ]
}
```
</details>









---


#### getFaqBySlug
Get an FAQ




```swift
content.getFaqBySlug(slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A short, human-readable, URL-friendly identifier of an FAQ. You can get slug value from the endpoint /service/application/content/v1.0/faq. |  



Use this API to get a particular FAQ by its slug.

*Returned Response:*




[FaqSchema](#FaqSchema)

Success. Returns a question and answer by its slug. Check the example shown below or refer `FaqSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "5eb2db750a8ebf497e315028",
  "question": "how to refer my friend",
  "answer": "1. Click on refer and earn image in fynd app\n2. Click on share the code\n3. Use any method for sharing\n4. Once the user activates the app with your code, both of you will get the refereal credits.",
  "slug": "how to refer",
  "application": "000000000000000000000001"
}
```
</details>









---


#### getFaqCategoryBySlug
Get the FAQ category




```swift
content.getFaqCategoryBySlug(slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A short, human-readable, URL-friendly identifier of an FAQ category. You can get slug value from the endpoint /service/application/content/v1.0/faq/categories. |  



FAQs can be divided into categories. Use this API to get the category to which an FAQ belongs.

*Returned Response:*




[GetFaqCategoryBySlugSchema](#GetFaqCategoryBySlugSchema)

Success. Returns a FAQ category with its slug. Check the example shown below or refer `GetFaqCategoryBySlugSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "category": {
    "index": 0,
    "children": [
      {
        "_id": "6026426ae507768b168dee4b",
        "question": "question 1",
        "answer": "answer 1",
        "slug": "question-1",
        "application": "000000000000000000000001"
      }
    ],
    "_id": "60263f80c83c1f89f2863a8a",
    "slug": "test",
    "title": "Test",
    "application": "000000000000000000000001"
  }
}
```
</details>









---


#### getFaqsByCategorySlug
Get FAQs using the slug of FAQ category




```swift
content.getFaqsByCategorySlug(slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A short, human-readable, URL-friendly identifier of an FAQ category. You can get slug value from the endpoint /service/application/content/v1.0/faq/categories. |  



FAQs can be divided into categories. Use this API to get all the FAQs belonging to a category by using the category slug.

*Returned Response:*




[GetFaqSchema](#GetFaqSchema)

Success. Returns a categorized list of question and answers using its slug. Check the example shown below or refer `GetFaqSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "faqs": [
    {
      "_id": "60265b64e507768b168dee4d",
      "question": "question 1",
      "answer": "answer 1",
      "slug": "question-1",
      "application": "000000000000000000000001"
    }
  ]
}
```
</details>









---


#### getLandingPage
Get the landing page




```swift
content.getLandingPage() { (response, error) in
    // Use response
}
```






Landing page is the first page that a prospect lands upon while visiting a website. Use this API to fetch the details of a landing page.

*Returned Response:*




[LandingPageSchema](#LandingPageSchema)

Success. Returns the landing page details. Check the example shown below or refer `LandingPageSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "$ref": "#/components/examples/LandingPageResponse"
}
```
</details>

</details>









---


#### getLegalInformation
Get legal information




```swift
content.getLegalInformation() { (response, error) in
    // Use response
}
```






Use this API to get the legal information of an application, which includes Privacy Policy, Terms and Conditions, Shipping Policy and FAQs regarding the usage of the application.

*Returned Response:*




[ApplicationLegal](#ApplicationLegal)

Success. Returns the T&C, Shipping Policy, Privacy Policy and Return Policy. Check the example shown below or refer `ApplicationLegal` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "$ref": "#/components/examples/Legal"
}
```
</details>

</details>









---


#### getNavigations
Get the navigation




```swift
content.getNavigations(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1.  |   
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to fetch the navigations details which includes the items of the navigation pane. It also shows the links and sub-navigations.

*Returned Response:*




[NavigationGetResponse](#NavigationGetResponse)

Success. Returns a JSON object with navigation details. Check the example shown below or refer `NavigationGetResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "$ref": "#/components/examples/NavigationGetResponse"
}
```
</details>

</details>









---


#### getPage
Get a page




```swift
content.getPage(slug: slug, rootId: rootId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A short, human-readable, URL-friendly identifier of a page. You can get slug value from the endpoint /service/application/content/v1.0/pages/. |   
| rootId | String? | no | ID given to the HTML element |  



Use this API to get the details of a page using its slug. Details include the title, seo, publish status, feature image, tags, meta, etc.

*Returned Response:*




[PageSchema](#PageSchema)

Success. Returns a JSON object with page details. Check the example shown below or refer `CustomPageSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "$ref": "#/components/examples/PageResponse"
}
```
</details>

</details>









---


#### getPages
Get all pages




```swift
content.getPages(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1.  |   
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to get a list of pages.

*Returned Response:*




[PageGetResponse](#PageGetResponse)

Success. Returns a list of pages along with their details. Check the example shown below or refer `PageGetResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "$ref": "#/components/examples/PageGetResponse"
}
```
</details>

</details>









---


#### getSEOConfiguration
Get the SEO of an application




```swift
content.getSEOConfiguration() { (response, error) in
    // Use response
}
```






Use this API to get the SEO details of an application, which includes a robot.txt, meta-tags and sitemap.

*Returned Response:*




[SeoComponent](#SeoComponent)

Success. Returns a JSON object SEO details such as robots.txt, meta-tags, and sitemap. Check the example shown below or refer `SeoComponent` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "$ref": "#/components/examples/Seo"
}
```
</details>

</details>









---


#### getSlideshows
Get the slideshows




```swift
content.getSlideshows(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1.  |   
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to get a list of slideshows along with their details.

*Returned Response:*




[SlideshowGetResponse](#SlideshowGetResponse)

Success. Check the example shown below or refer `SlideshowGetResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "$ref": "#/components/examples/SlideshowGetResponse"
}
```
</details>

</details>









---


#### getSlideshow
Get a slideshow




```swift
content.getSlideshow(slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A short, human-readable, URL-friendly identifier of a slideshow. You can get slug value from the endpoint /service/application/content/v1.0/slideshow/. |  



A slideshow is a group of images, videos or a combination of both that are shown on the website in the form of slides. Use this API to fetch a slideshow using its `slug`.

*Returned Response:*




[SlideshowSchema](#SlideshowSchema)

Success. Returns the details of how a slideshow is configured. Check the example shown below or refer `SlideshowSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "$ref": "#/components/examples/SlideshowResponse"
}
```
</details>

</details>









---


#### getSupportInformation
Get the support information




```swift
content.getSupportInformation() { (response, error) in
    // Use response
}
```






Use this API to get contact details for customer support including emails and phone numbers.

*Returned Response:*




[Support](#Support)

Success. Returns all support information including email and phone number. Check the example shown below or refer `Support` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "$ref": "#/components/examples/Support"
}
```
</details>

</details>









---


#### getTags
Get the tags associated with an application




```swift
content.getTags() { (response, error) in
    // Use response
}
```






Use this API to get all the CSS and JS injected in the application in the form of tags.

*Returned Response:*




[TagsSchema](#TagsSchema)

Success. Returns a JSON object containing all the tags injected in the application. Check the example shown below or refer `TagsSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "application": "000000000000000000000001",
  "_id": "5f7c37b2dd0144bb3a353c5f",
  "tags": [
    {
      "name": "Tapfiliate JS",
      "sub_type": "external",
      "_id": "5f7c37b2dd0144f1f8353c60",
      "type": "js",
      "url": "https://script.tapfiliate.com/tapfiliate.js",
      "position": "body-bottom",
      "attributes": {
        "async": true
      }
    }
  ]
}
```
</details>









---



### Schemas

 
 
 #### [ApplicationLegal](#ApplicationLegal)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  |  |
 | tnc | String? |  yes  |  |
 | policy | String? |  yes  |  |
 | shipping | String? |  yes  |  |
 | faq | [[ApplicationLegalFAQ](#ApplicationLegalFAQ)]? |  yes  |  |
 | id | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | createdAt | String? |  yes  |  |

---


 
 
 #### [ApplicationLegalFAQ](#ApplicationLegalFAQ)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | question | String? |  yes  |  |
 | answer | String? |  yes  |  |

---


 
 
 #### [PathMappingSchema](#PathMappingSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  |  |
 | redirections | [[RedirectionSchema](#RedirectionSchema)]? |  yes  |  |
 | id | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | createdAt | String? |  yes  |  |

---


 
 
 #### [RedirectionSchema](#RedirectionSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | redirectFrom | String? |  yes  |  |
 | redirectTo | String? |  yes  |  |

---


 
 
 #### [SeoComponent](#SeoComponent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | seo | [SeoSchema](#SeoSchema)? |  yes  |  |

---


 
 
 #### [SeoSchema](#SeoSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | String? |  yes  |  |
 | id | String? |  yes  |  |
 | robotsTxt | String? |  yes  |  |
 | sitemapEnabled | Bool? |  yes  |  |
 | customMetaTags | [[CustomMetaTag](#CustomMetaTag)]? |  yes  |  |
 | details | [Detail](#Detail)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [CustomMetaTag](#CustomMetaTag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | content | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [Detail](#Detail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |

---


 
 
 #### [AnnouncementPageSchema](#AnnouncementPageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageSlug | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [EditorMeta](#EditorMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | foregroundColor | String? |  yes  |  |
 | backgroundColor | String? |  yes  |  |
 | contentType | String? |  yes  |  |
 | content | String? |  yes  |  |

---


 
 
 #### [AnnouncementAuthorSchema](#AnnouncementAuthorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdBy | String? |  yes  |  |
 | modifiedBy | String? |  yes  |  |

---


 
 
 #### [AdminAnnouncementSchema](#AdminAnnouncementSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | platforms | [String]? |  yes  |  |
 | title | String? |  yes  |  |
 | announcement | String? |  yes  |  |
 | pages | [[AnnouncementPageSchema](#AnnouncementPageSchema)]? |  yes  |  |
 | editorMeta | [EditorMeta](#EditorMeta)? |  yes  |  |
 | author | [AnnouncementAuthorSchema](#AnnouncementAuthorSchema)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | app | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | schedule | [ScheduleSchema](#ScheduleSchema)? |  yes  |  |

---


 
 
 #### [ScheduleSchema](#ScheduleSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cron | String? |  yes  |  |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |
 | duration | Double? |  yes  |  |
 | nextSchedule | [[NextSchedule](#NextSchedule)]? |  yes  |  |

---


 
 
 #### [NextSchedule](#NextSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [AnnouncementSchema](#AnnouncementSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | announcement | String? |  yes  |  |
 | schedule | [ScheduleStartSchema](#ScheduleStartSchema)? |  yes  |  |

---


 
 
 #### [ScheduleStartSchema](#ScheduleStartSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [BlogGetResponse](#BlogGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[BlogSchema](#BlogSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [ResourceContent](#ResourceContent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [Asset](#Asset)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | id | String? |  yes  |  |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [Author](#Author)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | designation | String? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [BlogSchema](#BlogSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | application | String? |  yes  |  |
 | archived | Bool? |  yes  |  |
 | author | [Author](#Author)? |  yes  |  |
 | content | [[ResourceContent](#ResourceContent)]? |  yes  |  |
 | featureImage | [Asset](#Asset)? |  yes  |  |
 | published | Bool? |  yes  |  |
 | readingTime | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | seo | [SEO](#SEO)? |  yes  |  |
 | schedule | [CronSchedule](#CronSchedule)? |  yes  |  |
 | title | String? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |

---


 
 
 #### [SEO](#SEO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | image | [SEOImage](#SEOImage)? |  yes  |  |
 | title | String? |  yes  |  |

---


 
 
 #### [SEOImage](#SEOImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |

---


 
 
 #### [DateMeta](#DateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdOn | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [BlogRequest](#BlogRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | author | [Author](#Author)? |  yes  |  |
 | content | [[ResourceContent](#ResourceContent)]? |  yes  |  |
 | featureImage | [Asset](#Asset)? |  yes  |  |
 | published | Bool? |  yes  |  |
 | readingTime | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | title | String? |  yes  |  |
 | seo | [SEO](#SEO)? |  yes  |  |
 | schedule | [CronSchedule](#CronSchedule)? |  yes  |  |

---


 
 
 #### [GetAnnouncementListSchema](#GetAnnouncementListSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[AdminAnnouncementSchema](#AdminAnnouncementSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [CreateAnnouncementSchema](#CreateAnnouncementSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | data | [AdminAnnouncementSchema](#AdminAnnouncementSchema)? |  yes  |  |

---


 
 
 #### [Navigation](#Navigation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | orientation | String? |  yes  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema)? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | id | String? |  yes  |  |
 | position | String? |  yes  |  |
 | application | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | navigation | [NavigationReference](#NavigationReference)? |  yes  |  |

---


 
 
 #### [LocaleLanguage](#LocaleLanguage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hi | [Language](#Language)? |  yes  |  |
 | ar | [Language](#Language)? |  yes  |  |
 | enUs | [Language](#Language)? |  yes  |  |

---


 
 
 #### [Language](#Language)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |

---


 
 
 #### [Action](#Action)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [ActionPage](#ActionPage)? |  yes  |  |
 | popup | [ActionPage](#ActionPage)? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ActionPage](#ActionPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | params | [String: [String]]? |  yes  |  |
 | query | [String: [String]]? |  yes  |  |
 | url | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [NavigationReference](#NavigationReference)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | acl | [String]? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | localeLanguage | [LocaleLanguage](#LocaleLanguage)? |  yes  |  |
 | image | String? |  yes  |  |
 | type | String? |  yes  |  |
 | action | [Action](#Action)? |  yes  |  |
 | active | Bool? |  yes  |  |
 | display | String? |  yes  |  |
 | sortOrder | Int? |  yes  |  |
 | subNavigation | [[NavigationReference](#NavigationReference)]? |  yes  |  |

---


 
 
 #### [LandingPage](#LandingPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [LandingPageSchema](#LandingPageSchema)? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [ConfigurationSchema](#ConfigurationSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sleepTime | Int? |  yes  |  |
 | startOnLaunch | Bool? |  yes  |  |
 | duration | Int? |  yes  |  |
 | slideDirection | String? |  yes  |  |

---


 
 
 #### [SlideshowMedia](#SlideshowMedia)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | url | String? |  yes  |  |
 | bgColor | String? |  yes  |  |
 | duration | Int? |  yes  |  |
 | autoDecideDuration | Bool? |  yes  |  |
 | action | [Action](#Action)? |  yes  |  |

---


 
 
 #### [Slideshow](#Slideshow)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [SlideshowSchema](#SlideshowSchema)? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [AnnouncementsResponseSchema](#AnnouncementsResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | announcements | [String: [[AnnouncementSchema](#AnnouncementSchema)]]? |  yes  |  |
 | refreshRate | Int? |  yes  | number of seconds after which api should hit again to fetch new announcements |
 | refreshPages | [String]? |  yes  | list of page slugs on which announcement should be fetched as soon as they are loaded |

---


 
 
 #### [FaqResponseSchema](#FaqResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | faqs | [[FaqSchema](#FaqSchema)]? |  yes  |  |

---


 
 
 #### [UpdateHandpickedSchema](#UpdateHandpickedSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tag | [HandpickedTagSchema](#HandpickedTagSchema)? |  yes  |  |

---


 
 
 #### [HandpickedTagSchema](#HandpickedTagSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | position | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | name | String? |  yes  |  |
 | url | String? |  yes  |  |
 | type | String? |  yes  |  |
 | subType | String? |  yes  |  |
 | content | String? |  yes  |  |

---


 
 
 #### [RemoveHandpickedSchema](#RemoveHandpickedSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String]? |  yes  |  |

---


 
 
 #### [CreateTagSchema](#CreateTagSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | subType | String? |  yes  |  |
 | id | String? |  yes  |  |
 | type | String? |  yes  |  |
 | url | String? |  yes  |  |
 | position | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | content | String? |  yes  |  |

---


 
 
 #### [CreateTagRequestSchema](#CreateTagRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [[CreateTagSchema](#CreateTagSchema)]? |  yes  |  |

---


 
 
 #### [TagDeleteSuccessResponse](#TagDeleteSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [APIError](#APIError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | status | Double? |  yes  |  |
 | code | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | info | String? |  yes  |  |
 | requestId | String? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [CategorySchema](#CategorySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | index | Int? |  yes  |  |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |
 | children | [String]? |  yes  |  |
 | id | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | application | String? |  yes  |  |
 | iconUrl | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |

---


 
 
 #### [ChildrenSchema](#ChildrenSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | question | String? |  yes  |  |
 | answer | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | application | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [CategoryRequestSchema](#CategoryRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | title | String? |  yes  |  |

---


 
 
 #### [FAQCategorySchema](#FAQCategorySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | index | Int? |  yes  |  |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |
 | children | [[ChildrenSchema](#ChildrenSchema)]? |  yes  |  |
 | id | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | application | String? |  yes  |  |
 | iconUrl | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |

---


 
 
 #### [FaqSchema](#FaqSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | application | String? |  yes  |  |
 | id | String? |  yes  |  |
 | question | String? |  yes  |  |
 | answer | String? |  yes  |  |

---


 
 
 #### [FAQ](#FAQ)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | question | String? |  yes  |  |
 | answer | String? |  yes  |  |

---


 
 
 #### [CreateFaqResponseSchema](#CreateFaqResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | faq | [FaqSchema](#FaqSchema)? |  yes  |  |

---


 
 
 #### [CreateFaqSchema](#CreateFaqSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | faq | [FAQ](#FAQ)? |  yes  |  |

---


 
 
 #### [GetFaqSchema](#GetFaqSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | faqs | [[FaqSchema](#FaqSchema)]? |  yes  |  |

---


 
 
 #### [UpdateFaqCategoryRequestSchema](#UpdateFaqCategoryRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [CategorySchema](#CategorySchema)? |  yes  |  |

---


 
 
 #### [CreateFaqCategoryRequestSchema](#CreateFaqCategoryRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [CategoryRequestSchema](#CategoryRequestSchema)? |  yes  |  |

---


 
 
 #### [CreateFaqCategorySchema](#CreateFaqCategorySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [CategorySchema](#CategorySchema)? |  yes  |  |

---


 
 
 #### [GetFaqCategoriesSchema](#GetFaqCategoriesSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | categories | [[CategorySchema](#CategorySchema)]? |  yes  |  |

---


 
 
 #### [GetFaqCategoryBySlugSchema](#GetFaqCategoryBySlugSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [FAQCategorySchema](#FAQCategorySchema)? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int? |  yes  |  |
 | nextId | String? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | current | Int? |  yes  |  |
 | type | String |  no  |  |
 | size | Int? |  yes  |  |

---


 
 
 #### [LandingPageGetResponse](#LandingPageGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[LandingPageSchema](#LandingPageSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [LandingPageSchema](#LandingPageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | action | [Action](#Action)? |  yes  |  |
 | platform | [String]? |  yes  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema)? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | archived | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |

---


 
 
 #### [DefaultNavigationResponse](#DefaultNavigationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[NavigationSchema](#NavigationSchema)]? |  yes  |  |

---


 
 
 #### [NavigationGetResponse](#NavigationGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[NavigationSchema](#NavigationSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [Orientation](#Orientation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | portrait | [String]? |  yes  |  |
 | landscape | [String]? |  yes  |  |

---


 
 
 #### [NavigationSchema](#NavigationSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | archived | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | platform | [String]? |  yes  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema)? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | orientation | [Orientation](#Orientation)? |  yes  |  |
 | version | Double? |  yes  |  |
 | navigation | [[NavigationReference](#NavigationReference)]? |  yes  |  |

---


 
 
 #### [NavigationRequest](#NavigationRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | platform | [String]? |  yes  |  |
 | orientation | [Orientation](#Orientation)? |  yes  |  |
 | navigation | [[NavigationReference](#NavigationReference)]? |  yes  |  |

---


 
 
 #### [CustomPageSchema](#CustomPageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | title | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | type | String? |  yes  |  |
 | orientation | String? |  yes  |  |
 | application | String? |  yes  |  |
 | description | String? |  yes  |  |
 | published | Bool? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | content | [[String: Any]]? |  yes  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema)? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | schedule | [ScheduleSchema](#ScheduleSchema)? |  yes  |  |

---


 
 
 #### [ContentSchema](#ContentSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | value | [String: Any]? |  yes  |  |

---


 
 
 #### [CustomPage](#CustomPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [CustomPageSchema](#CustomPageSchema)? |  yes  |  |

---


 
 
 #### [FeatureImage](#FeatureImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [PageGetResponse](#PageGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[PageSchema](#PageSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [PageSpec](#PageSpec)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | specifications | [[PageSpecItem](#PageSpecItem)]? |  yes  |  |

---


 
 
 #### [PageSpecParam](#PageSpecParam)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | required | Bool? |  yes  |  |

---


 
 
 #### [PageSpecItem](#PageSpecItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageType | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | params | [[PageSpecParam](#PageSpecParam)]? |  yes  |  |
 | query | [[PageSpecParam](#PageSpecParam)]? |  yes  |  |

---


 
 
 #### [PageSchema](#PageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | componentIds | [String]? |  yes  | Components can be used to store multiple components |
 | content | [[String: Any]]? |  yes  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema)? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | description | String? |  yes  |  |
 | featureImage | [Asset](#Asset)? |  yes  |  |
 | pageMeta | [[String: Any]]? |  yes  |  |
 | schedule | [ScheduleSchema](#ScheduleSchema)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | orientation | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | published | Bool? |  yes  |  |
 | slug | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | title | String? |  yes  |  |
 | type | String? |  yes  |  |
 | seo | [SEO](#SEO)? |  yes  |  |
 | visibility | [String: Any]? |  yes  |  |
 | archived | Bool? |  yes  |  |

---


 
 
 #### [CreatedBySchema](#CreatedBySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |

---


 
 
 #### [PageContent](#PageContent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | value | [String: Any]? |  yes  |  |

---


 
 
 #### [PageMeta](#PageMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | value | [String: Any]? |  yes  |  |

---


 
 
 #### [PageRequest](#PageRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | schedule | [CronSchedule](#CronSchedule)? |  yes  |  |
 | application | String? |  yes  |  |
 | author | [Author](#Author)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | orientation | String? |  yes  |  |
 | content | [[String: Any]]? |  yes  |  |
 | featureImage | [Asset](#Asset)? |  yes  |  |
 | published | Bool? |  yes  |  |
 | readingTime | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | seo | [SEO](#SEO)? |  yes  |  |
 | title | String? |  yes  |  |

---


 
 
 #### [CronSchedule](#CronSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cron | String? |  yes  |  |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |
 | duration | Double? |  yes  |  |

---


 
 
 #### [PagePublishRequest](#PagePublishRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | publish | Bool? |  yes  |  |

---


 
 
 #### [PageMetaSchema](#PageMetaSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | systemPages | [[NavigationSchema](#NavigationSchema)]? |  yes  |  |
 | customPages | [[PageSchema](#PageSchema)]? |  yes  |  |
 | applicationId | String? |  yes  |  |

---


 
 
 #### [SlideshowGetResponse](#SlideshowGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SlideshowSchema](#SlideshowSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SlideshowSchema](#SlideshowSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | application | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | configuration | [ConfigurationSchema](#ConfigurationSchema)? |  yes  |  |
 | media | [[SlideshowMedia](#SlideshowMedia)]? |  yes  |  |
 | active | Bool? |  yes  |  |
 | archived | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |

---


 
 
 #### [SlideshowRequest](#SlideshowRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | configuration | [ConfigurationSchema](#ConfigurationSchema)? |  yes  |  |
 | media | [SlideshowMedia](#SlideshowMedia)? |  yes  |  |
 | active | Bool? |  yes  |  |

---


 
 
 #### [Support](#Support)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | created | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | configType | String? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | contact | [ContactSchema](#ContactSchema)? |  yes  |  |

---


 
 
 #### [PhoneProperties](#PhoneProperties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | code | String? |  yes  |  |
 | number | String? |  yes  |  |

---


 
 
 #### [PhoneSchema](#PhoneSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | phone | [[PhoneProperties](#PhoneProperties)]? |  yes  |  |

---


 
 
 #### [EmailProperties](#EmailProperties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [EmailSchema](#EmailSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | email | [[EmailProperties](#EmailProperties)]? |  yes  |  |

---


 
 
 #### [ContactSchema](#ContactSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [PhoneSchema](#PhoneSchema)? |  yes  |  |
 | email | [EmailSchema](#EmailSchema)? |  yes  |  |

---


 
 
 #### [TagsSchema](#TagsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  |  |
 | id | String? |  yes  |  |
 | tags | [[TagSchema](#TagSchema)]? |  yes  |  |

---


 
 
 #### [TagSchema](#TagSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | url | String? |  yes  |  |
 | type | String? |  yes  |  |
 | subType | String? |  yes  |  |
 | id | String? |  yes  |  |
 | position | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | content | String? |  yes  |  |

---




### Enums





 #### [PageType](#PageType)
 Type : string

 | Name | Value | Description |
 | ---- | ----- | ----------- |
 | aboutUs | about-us | Symbolic link for About Us: /about-us |
 | addresses | addresses | Symbolic link for Saved Addresses: /profile/address |
 | blog | blog | Symbolic link for Blog: /blog/:slug |
 | brands | brands | Symbolic link for Brands: /brands/:department |
 | cards | cards | Symbolic link for Saved Cards: /profile/my-cards |
 | cart | cart | Symbolic link for Cart: /cart/bag/ |
 | categories | categories | Symbolic link for Categories: /categories/:department |
 | brand | brand | Symbolic link for Brand: /brand/:slug |
 | category | category | Symbolic link for Category: /category/:slug |
 | collection | collection | Symbolic link for Collection: /collection/:slug |
 | collections | collections | Symbolic link for Collections: /collections/ |
 | contactUs | contact-us | Symbolic link for Contact Us: /contact-us/ |
 | externalLink | external | Symbolic link for External Link: /external/:url |
 | faq | faq | Symbolic link for FAQ: /faq/:category |
 | freshchat | freshchat | Symbolic link for Chat by Freshchat: /freshchat |
 | home | home | Symbolic link for Home: / |
 | notificationSettings | notification-settings | Symbolic link for Notification Settings: /notification-settings |
 | orders | orders | Symbolic link for Orders: /profile/orders |
 | page | page | Symbolic link for Page: /page/:slug |
 | policy | policy | Symbolic link for Privacy Policy: /privacy-policy |
 | product | product | Symbolic link for Product: /product/:slug |
 | productReviews | product-reviews | Symbolic link for Product Reviews: /product/:slug/reviews |
 | addProductReview | add-product-review | Symbolic link for Add Product review: /product/:slug/add-review |
 | productRequest | product-request | Symbolic link for Product Request: /product-request/ |
 | products | products | Symbolic link for Products: /products/ |
 | profile | profile | Symbolic link for Profile: /profile |
 | profileBasic | profile-basic | Symbolic link for Basic Profile: /profile/details |
 | profileCompany | profile-company | Symbolic link for Profile Company: /profile/company |
 | profileEmails | profile-emails | Symbolic link for Profile Emails: /profile/email |
 | profilePhones | profile-phones | Symbolic link for Profile Phones: /profile/phone |
 | rateUs | rate-us | Symbolic link for Rate Us: /rate-us |
 | referEarn | refer-earn | Symbolic link for Refer & Earn: /profile/refer-earn |
 | settings | settings | Symbolic link for Settings: /setting/currency |
 | sharedCart | shared-cart | Symbolic link for Shared Cart: /shared-cart/:token |
 | tnc | tnc | Symbolic link for Terms and Conditions: /terms-and-conditions |
 | trackOrder | track-order | Symbolic link for Track Order: /order-tracking/:orderId |
 | wishlist | wishlist | Symbolic link for Wishlist: /wishlist/ |
 | sections | sections | Symbolic link for Sections: /sections/:group |
 | form | form | Symbolic link for Form: /form/:slug |
 | cartDelivery | cart-delivery | Symbolic link for Cart Delivery: /cart/delivery |
 | cartPayment | cart-payment | Symbolic link for Cart Payment Information: /cart/payment-info |
 | cartReview | cart-review | Symbolic link for Cart Order Review: /cart/order-review |

---




