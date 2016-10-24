- Full text search : does a document match for token "mac" or "miller" ? **analyzed**

```
GET _search
{
    "query": {
        "match": {
           "artist": "Mac Miller"
        }
    }
}
```

- Exact term search : does a document match for token "Mac Miller" ? **not_analyzed**

```
GET _search : 
{
    "query": {
        "term": {
           "artist": {
              "value": "Mac Miller"
           }
        }
    }
}
```