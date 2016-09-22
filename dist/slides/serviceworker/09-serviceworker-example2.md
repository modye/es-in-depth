<!-- .slide: data-background="url(images/slides/serviceworker/serviceworker_l.svg) white no-repeat center" data-background-size="contain"-->

<pre class="language-js current-visible code-with-highlight" >
<code>
this.addEventListener('fetch', event => {
  event.respondWith(getResponse);
});

function getResponse() {
    return caches.match(event.request)
    .catch(() => {
        return fetch(event.request)
        .then(response => {
            caches.open('v1')
            .then(cache => {
                cache.put(event.request, response);
            });
            return response;
        });
    })
}
</code>
</pre>

<pre class="language-js fragment current-visible code-with-highlight" data-line="3-5" data-fragment-index="1" >
<code>
this.addEventListener('fetch', event => {
  event.respondWith(getResponse);
});

function getResponse() {
    return caches.match(event.request)
    .catch(() => {
        return fetch(event.request)
        .then(response => {
            caches.open('v1')
            .then(cache => {
                cache.put(event.request, response);
            });
            return response;
        });
    })
}
</code>
</pre>

<pre class="language-js fragment current-visible code-with-highlight" data-line="8" data-fragment-index="2" >
<code>
this.addEventListener('fetch', event => {
  event.respondWith(getResponse);
});

function getResponse() {
    return caches.match(event.request)
    .catch(() => {
        return fetch(event.request)
        .then(response => {
            caches.open('v1')
            .then(cache => {
                cache.put(event.request, response);
            });
            return response;
        });
    })
}
</code>
</pre>

<pre class="language-js fragment current-visible code-with-highlight" data-line="11-17" data-fragment-index="3" >
<code>
this.addEventListener('fetch', event => {
  event.respondWith(getResponse);
});

function getResponse() {
    return caches.match(event.request)
    .catch(() => {
        return fetch(event.request)
        .then(response => {
            caches.open('v1')
            .then(cache => {
                cache.put(event.request, response);
            });
            return response;
        });
    })
}
</code>
</pre>