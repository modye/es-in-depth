## Analyze API

#### English

```
GET _analyze
{
  "analyzer" : "english",
  "text" : "Hi BreizhJug, What's up ?"
}
```

#### Custom
```
GET /_analyze
{
  "tokenizer" : "whitespace",
  "filter" : ["lowercase"],
  "text" : "Hi BreizhJug ! What's up ?"
}
```