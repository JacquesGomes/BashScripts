https://www.geeksforgeeks.org/unified-modeling-language-uml-sequence-diagrams/

Sequence diagram, using GitHub Markdown-file with the Mermaid-syntax, as follows:

sequenceDiagram
    participant browser
    participant server

    browser->>server: GET https://studies.cs.helsinki.fi/exampleapp/notes
    activate server
    server-->>browser: HTML document
    deactivate server

    browser->>server: GET https://studies.cs.helsinki.fi/exampleapp/main.css
    activate server
    server-->>browser: the css file
    deactivate server

    browser->>server: GET https://studies.cs.helsinki.fi/exampleapp/main.js
    activate server
    server-->>browser: the JavaScript file
    deactivate server

    Note right of browser: The browser starts executing the JavaScript code that fetches the JSON from the server

    browser->>server: GET https://studies.cs.helsinki.fi/exampleapp/data.json
    activate server
    server-->>browser: [{ "content": "HTML is easy", "date": "2023-1-1" }, ... ]
    deactivate server

    Note right of browser: The browser executes the callback function that renders the notes

    https://github.com/oppia/oppia/wiki/Writing-design-docs

    https://github.com/unixorn/chocolate-factory-engineering-docs/blob/main/Engineering_Design_Document.md

    # <Feature/Service name>
## Status: [Draft|Final]
### Authors: <...>

## Objective

_What is this document meant to accomplish?_

## Background

_What’s the context of the project? What are you solving and why? What constraints informed this design?_

## Benefits

_If your proposal is implemented, how does it benefit the company?_

## Goals

_What exactly are you trying to do? Why? These should be measurable and specific._

## Non-goals

_What are you explicitly not trying to do? Why?_

## Alternatives Considered

_Optional. What else did you consider? Why were they rejected as a solution?_

## Design Overview

_At a high level, how is your service put together? What’s the block-level diagram for the service?_

### Detailed Design

_Another level of detail beyond the design overview, if needed._

## Performance Implications

_What should we know about performance?_

## Security Implications

_Are there known or potential security issues that should be pointed out? How are, or will they be, addressed?_

## Privacy/GDPR Implications

_Are there known or potential privacy or GDPR issues that should be pointed out? How are, or will they be, addressed?_

## Logging Impacts

_What kind of logs are you generating? At what volume? How long do will we expect to keep them?_

## Engineering Asks

_What does the rest of engineering have to do if this project is implemented?_

## Sign-off List
