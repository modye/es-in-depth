<!-- .slide: data-background="url(images/slides/serviceworker/serviceworker_l.svg) white no-repeat center" data-background-size="contain"-->


<pre class="language-js">
<code>
swPrecache.write(path.join(buildDir, 'service-worker.js'), {
    staticFileGlobs: [
      path.join(buildDir, '**.css'),
      path.join(buildDir, '**.html'),
      path.join(buildDir, 'img/**.*'),
      path.join(buildDir, '**.js')
    ],
    // ... options
});
</code>
</pre>