- Full text search

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

- Exact term search

```
GET _search
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