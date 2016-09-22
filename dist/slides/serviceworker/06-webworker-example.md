<!-- .slide: data-background="url(images/slides/serviceworker/webworker_l.svg) white no-repeat center" data-background-size="contain"-->

<pre class="language-js current-visible code-with-highlight" >
<code>
/*  *** MAIN *** */
    var worker = new Worker('path/to/worker.js');
    worker.addEventListener('message', event => {
        const message = event.data;
        // Handle message
    });
    worker.postMessage({action: 'do-this', data: actionData});


/*  *** WORKER *** */
    self.addEventListener('message', message => {
        const {action, data} = message;
        // Heavy computing
        self.postMessage({action: 'your-response', data: computedData});
    });
</code>
</pre>

<pre class="language-js fragment current-visible code-with-highlight"  data-line="4" data-fragment-index="2">
<code>
/*  *** MAIN *** */
    var worker = new Worker('path/to/worker.js');
    worker.addEventListener('message', event => {
        const message = event.data;
        // Handle message
    });
    worker.postMessage({action: 'do-this', data: actionData});


/*  *** WORKER *** */
    self.addEventListener('message', message => {
        const {action, data} = message;
        // Heavy computing
        self.postMessage({action: 'your-response', data: computedData});
    });
</code>
</pre>

<pre class="language-js fragment current-visible code-with-highlight" data-line="9, 14" data-fragment-index="3">
<code>
/*  *** MAIN *** */
    var worker = new Worker('path/to/worker.js');
    worker.addEventListener('message', event => {
        const message = event.data;
        // Handle message
    });
    worker.postMessage({action: 'do-this', data: actionData});


/*  *** WORKER *** */
    self.addEventListener('message', message => {
        const {action, data} = message;
        // Heavy computing
        self.postMessage({action: 'your-response', data: computedData});
    });
</code>
</pre>


<pre class="language-js fragment current-visible code-with-highlight" data-line="6, 16" data-fragment-index="4">
<code>
/*  *** MAIN *** */
    var worker = new Worker('path/to/worker.js');
    worker.addEventListener('message', event => {
        const message = event.data;
        // Handle message
    });
    worker.postMessage({action: 'do-this', data: actionData});


/*  *** WORKER *** */
    self.addEventListener('message', message => {
        const {action, data} = message;
        // Heavy computing
        self.postMessage({action: 'your-response', data: computedData});
    });
</code>
</pre>