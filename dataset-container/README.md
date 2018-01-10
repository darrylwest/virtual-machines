# Dataset Container

## Introduction

A dataset container is a pre-configured docker container that serves data when requested from a test framework.  Each container has a pre-allocated URL with all data required for integration tests, usually targeted for UI tests.  Data includes request and responses to simulate a set of real backend services.

The container is designed to be used for a single test then reset.  This enables tests to run in parallel without one test affecting another.

## Operation

### URL Routing

_need to determine request patterns from client UI; single host URL? multiple?_

### HTTP Server

### Responses to known requests

_the mock library has some raw responses; this is a starting point_

#### Creating and Maintaining Test Data

* data scraped from current function test request and responses
* need an interceptor to store requests / responses; this could be done through a proxy that intercepts then writes to disk or database the request, headers and responses. 


## Proof of Concept

* how many containers are required?  one per test?
* how many containers are able to run concurrently?
* what is the performance when run in a VM?
* how to allocate unique URL for each container
* how to signal when tests are complete and reset is required


###### darryl.west | 2017.11.09