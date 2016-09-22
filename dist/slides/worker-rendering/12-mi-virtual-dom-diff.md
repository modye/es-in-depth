### Virtual DOM

Diff
<pre class="language-js" >
<code>
const rootNode = document.getElementById('app');

// ...

// ... Get a virtual DOM tree
let patches = diff(currentTree, newTree);
rootNode = patch(rootNode, patches);
currentTree = newTree;
</code>
</pre>