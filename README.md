# api_corrector
Runtime API response validator for Dart &amp; Flutter. Protects apps from malformed or unexpected JSON—even with HTTP 200.
A small, lightweight Dart / Flutter package that helps you **safely validate API
JSON responses at runtime** — before they crash your app.

It focuses on **what your app expects from the API**, not just HTTP status codes.
## Why use api_corrector?

Because APIs don’t always behave 😅
Even when the server responds with **HTTP 200 OK**, the JSON might:
- contain an error payload
- be missing required fields
- return unexpected data types
- partially break due to backend issues
This package lets you clearly define **what a “valid” response looks like**
and verifies that the API response actually matches it before your UI touches
the data.

If the response doesn’t match your expectations, it fails early and safely.
## Clone the repository
git clone https://github.com/zenithstar1/api_corrector.git

