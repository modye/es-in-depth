## Document oriented : JSON

```json
curl -POST http://localhost:9200/music/album
{
	"artist" : "Mac Miller",
	"name" : "The Divine Feminine",
	"release_date": "01-09-2016",
	"tracks": 10,
	"total_duration": 52,
	"description": "Another Mac Miller creation bla bla"
}
```