<!-- .slide: data-background="url(images/slides/sync/pouchdb_l.svg) #EEEAE7 no-repeat center" data-background-size="contain"-->

<pre class="language-js">
<code>
const localDB = new PouchDB('pwtc-state');
const remoteDB = new PouchDB('https://pennarun-demo.io/couchdb/pwtc-state');

localDB.sync(remoteDB, {
  live: true,
  retry: true
})
.on('change', updatedWatedTime)
.on('complete', updatedWatedTime);
</code>
</pre>