import "reveal.js/dist/reveal.css";
import "reveal.js/plugin/highlight/monokai.css";
import "./assets/black.css";
import "./assets/style.css";

import Reveal from "reveal.js";
import Markdown from "reveal.js/plugin/markdown/markdown.esm.js";
import Highlight from "reveal.js/plugin/highlight/highlight.esm.js";

const deck = new Reveal({
  plugins: [Markdown, Highlight],
});

deck.initialize();
