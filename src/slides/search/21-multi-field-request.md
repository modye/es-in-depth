#### Full text search
```
GET music/album/_search
{
    "query": {
        "match": {
           "artist": "Mac Miller"
        }
    }
}
```

#### Exact search (filter)
```
GET music/album/_search
{
    "query": {
        "term": {
           "artist.raw": {
              "value": "Mac Miller"
           }
        }
    }
}
```