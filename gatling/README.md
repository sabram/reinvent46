# Gatling

[Gatling](https://gatling.io) is installed and configured via [Ansible](https://ansible.com).

In order to make changes to the Gatling configuration:

1. Edit `gatling/gatling.yml` and change the following variables:
* iterations: Total number of requests to send
* concurrency: How many "users" to send requests at once
* ramp_up_time: How many seconds to ramp up to `concurrency`
* base_url: The base of the URL, where the contents of `urls.csv` will be appended
* test_limiter: `iterations` or `duration`
* max_duration: Number of seconds to run, if duration is the test limiter.  Iterations has no effect in this scenario.
