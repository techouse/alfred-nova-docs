# Laravel Nova Docs Workflow for Alfred

![GitHub release](https://img.shields.io/github/release/techouse/alfred-nova-docs.svg)
![GitHub All Releases](https://img.shields.io/github/downloads/techouse/alfred-nova-docs/total.svg)
![GitHub](https://img.shields.io/github/license/techouse/alfred-nova-docs.svg)

Search the [Laravel Nova documentation](https://nova.laravel.com/docs) using [Alfred](https://www.alfredapp.com/).

![demo](demo.gif)

## Installation

1. [Download the latest version](https://github.com/techouse/alfred-nova-docs/releases/latest)
2. Install the workflow by double-clicking the `.alfredworkflow` file
3. You can add the workflow to a category, then click "Import" to finish importing. You'll now see the workflow listed in the left sidebar of your Workflows preferences pane.

## Usage

Just type `nova` followed by your search query.

```
nova resource
```

Either press `⌘Y` to Quick Look the result, or press `<enter>` to open it in your web browser.

### Note

Originally I wanted this to be a fork of [Bill Clark's Laravel Nova Documentation Search Workflow for Alfred](https://github.com/billrobclark/alfred-novadoc-search) which has a 
major issue that [inhibits a user from opening a web browser window once they press `<enter>`](https://github.com/billrobclark/alfred-novadoc-search/issues/1). And because I worked
a lot with Laravel Nova recently I figured it would be nice to still have a working Alfred workflow for Laravel Nova's docs. But since Bill's original Alfred workflow was written in 
PHP and I wrote mine in Python a pull request would not have made much sense. However a thing I did take from that repository is the [Algolia search index](https://github.com/billrobclark/alfred-novadoc-search/blob/master/nova-search.php#L11).
This means that both repositories use the __same__ Algolia indices and return the same results. This should leave the end user with the same experience.

Thank you for the Algolia indices [Bill](https://github.com/billrobclark) :innocent: :beers:

Built using [Alfred-Workflow](https://github.com/deanishe/alfred-workflow).
The search is powered by [Algolia search](https://www.algolia.com).