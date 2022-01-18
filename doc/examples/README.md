## Query Examples 

Before you can build indexes and index queries it is essential to understand the [structure of index tables](./table.md). Read this document before proceeding!
 
## Indexing and Querying by Example

### Basic Indexing

The following examples illustrate index specification and query JSON bodies which can be used to index and query model property data.

- [Get case insensitive Structural Material steel with a height > 0.5 ft](./basic/query-case-insensitive-steel-with-dimension.md)

- [Count the number of viewable objects in the index](./basic/query-count-viewable-objects.md)

- [Get viewable rows where Revit category, family and type are not null](./basic/query-get-viewable-revit-classification.md)

- [Get viewable rows](./basic/query-get-viewable-rows.md)

- [Determine the stats for Flange cut length](./basic/query-use-aggregate-functions.md)

- [Get rows where the Assembly Description is like '%Brick%'](./basic/query-where-assembly-description-like-brick.md)

### Diff Indexing

The following examples illustrate index specification and query JSON bodies which can be used to create and query diff indexes.

- [Get viewable rows](./diff/query-get-viewable-rows.md)

- [Get rows where the Assembly Description is like '%Brick%'](./diff/query-where-assembly-description-like-brick.md)

- [Get viewable elements where the element bounding box has changed](./diff/query-where-bounding-boxes-have-changed.md)

- [Get rows where Elevation from Level has changed](./diff/query-where-diff-props-not-equal.md)

- [Get changed objects where the object's geometry has changed](./diff/query-where-type-and-change-type.md)

---

### Contributing

If you want to add more examples, please follow the steps below:

1. Fork this repo on github
2. Add your sample(s) to the [basic](./basic) or [diff](./diff) sub-folders. You can use the [exampleTemplate.md](./exampleTemplate.md) to quickly format your example. Please base your examples on the sample models provided so that they can be verified by a maintainer.
3. DO NOT edit this README file by hand, use the [readmeBuild.ps1](./readmeBuild.ps1) script located in this folder to re-build `README.md`
4. Create a PR!

[back](../README.md)

