# TLDS vs. Trifid 

The following compares [TLDS](https://github.com/linked-solutions/tlds) with [Trifid](https://github.com/zazuko/trifid) by comparing this tlds demo with a Trifid app that uses the same SPARQL endpoint.

The chart only takes into account features visible to the client disregarding wether they are features of the (demo) app or of the underlying software. The reason for this is that we believe that concrete exempflifications of features like Wikimedia integration are more self-explanatory than the abstract features of the underlying software (e.g. documented templating mechanism, inclusion of external SPARQL Endpoint).

| | ld.geo.admin.ch | tlds-demo.factsmission.org |
| - | - | - |
| Software | [Trifid](https://github.com/zazuko/trifid) | [TLDS](https://github.com/linked-solutions/tlds) |
| Server-Side Runtime | NodeJS (JavaScript) | Java |
| Rendering | Client Side | Client Side with [LD2h](https://github.com/rdf2h/ld2h/) |
| <b>Score<sup>[1](#f1)</sup></b> |
| Performance | 85 🏅 | 58 |
| Accessibility | 92 | 100 🏅 |
| Best Practices | 77 | 100 🏅 |
| SEO | 82 | 100 🏅 |
| <b>Features</b> |
| Browsable Graph<sup>[2](#f2)</sup> | no | yes 🏅 |
| Wikipedia Descriptions | no | yes 🏅 |
| Wikimedia images | no | yes 🏅 |
| Neighborring Municipalities from Wikidata | no | yes 🏅 |
| Expanding versions of entities | no | yes 🏅 |
| <b>Supported Formats</b> (Content Negotiation) |
| application/rdf+xml | no (404) | yes 🏅 |
| text/turtle | yes | yes 🏅 |
| application/n-triples | no (404) | yes 🏅 |
| application/ld+json | no (404) | no (500) |
| text/html | yes | yes |

<sup id="f1">[1](#f1)</sup> According to [web.dev](https://web.dev/), a service provided by Google. We've tested the rescources https://ld.geo.admin.ch/boundaries/canton/2:2019 and https://tlds-demo.factsmission.org/boundaries/canton/2:2019 respectively.

<sup id="f2">[2](#f2)</sup> According to Tim Berners-Lee's definition on https://www.w3.org/DesignIssues/LinkedData.html.