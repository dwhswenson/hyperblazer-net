---
categories: ['i-made-a-thing', 'conda-rc-check']
layout: page
title: A GitHub action to check for release candidates on conda
teaser: >
  I've written and published a GitHub action that makes it easy to run a
  workflow (such as a test suite) when a conda-installed package publishes a
  release candidate.
---

I wrote a [GitHub action](https://github.com/marketplace/actions/check-conda-for-release-candidates) that can be used to launch a workflow if a recent release candidate for a certain package has been released in a conda channel.
This allows packages to automatically test against release candidates of dependencies when a release candidate has recently been published via conda.

### Motivation

Open source software often builds on other open source software.
In the specific case of [OpenPathSampling](http://openpathsampling.org), we depend on heavily other tools such as [OpenMM](https://openmm.org) to handle important and complex tasks such as running the underlying dynamics.
Because we know that our integration with these tools is extremely important, we have extensive tests to ensure that we still integrate properly with these tools.
Those tests are run every night, so we are immediately alerted if a new release breaks something for our users.

Some packages, such as OpenMM, create a "release candidate" (RC) prior to doing a formal release.
This is intended to allow advanced users and downstream packages (such as OpenPathSampling) to test out the new release before it becomes official.
Although I'd often noticed when OpenMM announced an RC, it always seemed enough of a hassle to install and test manually that I never did it.

Then OpenMM 7.5.1 was released.
This should have been a tiny change to OpenMM 7.5.0, but a small mistake snuck into the code, and [it caused our integration tests to fail](https://github.com/openmm/openmm/issues/3098). 
While this change would only affect our users at edge cases, it is still enough that OpenMM 7.5.1 should not be used for production runs of OpenPathSampling.
And it's the sort of thing that testing against the release candidate would have prevented.

### Solution

This problem led to me writing a GitHub action that checks for release candidates, and if there is a release candidate, its return value can be used to launch another workflow to run tests against the RC.

In its first release, the action searches for packages based on web scraping.
This isn't necessarily the best way to do this, because I doubt the web page layout is considered an officially-pinned API,
However I don't think the web pages for conda releases have changed in many years, and this will be valid until they do.
Future versions of this action may use other mechanisms to identify release canidates (and contributions are welcome).

In terms of implementation, it's currently just a [relatively simple Python script](https://github.com/dwhswenson/conda-rc-check/blob/9b6f3f612626d6bcf66eb4ab94ffc3e385d36fae/check_conda_for_rc.py) that runs in a Docker container.

### Usage

Here's how it works in practice (for the `v1` API: this page may become out of date; the official description in the repository should always be up to date).
The basic idea is that you'll have two GitHub actions workflows: one to check whether there is a release candidate, and a second that is launched if the first finds a release candidate.
That second would be similar to your standard test suite, except it would install the RC instead of the release.
In order to launch the second workflow, I've been using the [Workflow Dispatch](https://github.com/marketplace/actions/workflow-dispatch) action.

{% raw %}
```yaml
# in: check-for-openmm-rc.yml
# boilerplate stuff skipped
jobs:
  check-rc:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: dwhswenson/conda-rc-check@v1
        id: checkrc
        with:
          channel: conda-forge
          package: openmm
          ndays: 3
          labels: openmm_rc
      - uses: benc-uk/workflow-dispatch@v1
        with:
          workflow: Test OpenMM RC
          token: ${{ secrets.DISPATCH_TOKEN }}
        if: ${{ steps.checkrc.outputs.hasrc == "True" }}
```
{% endraw %}

Here we use the label where the RC can be found; note that this can also be a list of labels.
The Workflow Dispatch action is only run if we find an RC that has been released within the last 3 days.
Typically this workflow is set up to run on scheduled (daily or every other day) basis.
Note that the Workflow Dispatch does require authentication through a repository secret.

Next, we need a second workflow, named `Test OpenMM RC`, that actually runs your tests:

{% raw %}
```yaml
# in: test-openmm-rc.yml
name: Test OpenMM RC
on:
  workflow_dispatch:

# the rest is just your test workflow
```
{% endraw %}

And that's all there is to it -- with this, you can automatically run tests against recent release candidates.
