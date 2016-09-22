<!-- .slide: data-background="url(images/slides/serviceworker/serviceworker_l.svg) white no-repeat center" data-background-size="contain"-->

<pre class="language-js current-visible code-with-highlight" >
<code>
this.addEventListener('install', event => {
  event.waitUntil(
    caches.open('v1')
    .then(cache => {
      return cache.addAll([
        '/index.html',
        '/index.js',
        // ...
      ]);
    })
  );
});
</code>
</pre>

<pre class="language-js fragment current-visible code-with-highlight" data-fragment-index="1" data-line="7-11" >
<code>
this.addEventListener('install', event => {
  event.waitUntil(
    caches.open('v1')
    .then(cache => {
      return cache.addAll([
        '/index.html',
        '/index.js',
        // ...
      ]);
    })
  );
});
</code>
</pre>