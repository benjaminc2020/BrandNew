## Brand New Project Review


* Site publication: <http://brandnew.newtfire.org>
* GitHub: <https://github.com/benjaminc2020/BrandNew/tree/master/Website>
* Developers: Bryant Boylen, Benjamin Crawford, and Bobby Pernell
* Date of Evaluation: 2020-05-03
* Evaluated by: @BMT45 @ebeshero

### General  
Overall, the design of the website is attractive and easy to navigate, progressively moving from the general to the detailed. We particularly like how the navigation works to get us from a gallery of the albums into song lyrics, and perhaps something similar could be organized for the distinct portions of the analysis. Color-coordinating info about each album was a terrific design strategy  making the graphs easy to follow. This is very professional and visually pleasing—well done!  

### Research questions

The “About the Project” section provides a good opening description of your research goals, to investigate lyric and instrumental style, and that you are interested in “wording patterns, lyrical techniques, references, and song structures.” What is less clear to us are the details and each of these areas could use some further explanation either here or as they accompany your graphs. It would help if this “About” page also featured a discussion of your findings, not just what you were looking for. What were the most important things that you discovered about pace, about word patterns, and references? Summarize the most significant findings here and lead us into the details on the Analysis page.

### Data Visualization Technologies
#### Documentation
You provide a brief explanation for the contents of each visual you supply, and we like that you explained how the word clouds exclude particularly repeated words (called “stop words” in natural language processing). For accuracy you should always include a complete list of the words you excluded because you want to provide a way for others to replicate your analysis to verify it.) Futher, the explanations of this and other graphs should also include an explanation of what patterns you noted, or what new perspective the visualization offers you. It is best not to leave all of this to be inferred by your site visitors, but point out something that matters to be learned from each infographic. 

#### Tableau: an issue
One issue we note for future work with Tableau-generated graphics is with the Chrome browser and its communication with them. In Chrome developer tools as we view your Analysis page, we are shown a warning message: 
```
A cookie associated with a cross-site resource at
http://tableau.com/ was set without the `SameSite` attribute.
A future release of Chrome will only deliver cookies with
cross-site requests if they are set with `SameSite=None` and
`Secure`. You can review cookies in developer tools under
Application>Storage>Cookies and see more details at
https://www.chromestatus.com/feature/5088147346030592 and
https://www.chromestatus.com/feature/5633521622188032..
```
Based on this, we infer that you are relying on an interaction with Tableau to render these images, and that may be a brittle reliance. We are not sure whether, a year from now, Chrome will be able to render the visualizations you generated in Tableau, so we advise that you find a way to export these images from Tableau to have more control over their display.

Each of these Tableau renderings (most easily the box and whisker plot, but also the pie chart and word cloud) could be generated yourself with SVG. (Think of what you would need to control here: the size of the font for an SVG `<text>` element corresponding with the numerical count of its use in the song or album or entire collection, *not* put in sort order if you like randomness, or sorted if you want to see them from most to least frequent. Don't put them on separate lines, but calculate placement based on position...or *do* put them on separate lines, but you see what we mean by rolling your own SVG: *you* get to experiment and not be directed by someone else’s sense of what is generically appropriate.) 

There are good reasons to program your own SVG, the most significant of which is to be able to expose the data with the visualizations: for long-range project sustainability you want to at least be sharing the data on your website that generates these visualizations. That is one reason we like SVG, or even the CSV / TSV files that generated the plots. The data itself should be able to outlast the rendering software and be available for processing in other ways. Think of this as contributing to the web of data, not just an attractive “black box” visualization. (That term “black box” is used in the web developer community for software that obscures the source data.) 

There is at the very least no reason this project team cannot produce SVG with tooltips (use the @title attribute on the `<g>` element) to produce the same effects you are getting on the box and whisker and circle plots in Tableau.

#### SVG
All that said, you are doing some complex work with stacking a bar blot on the Lyrical References graph, and we are very impressed with what you have done here! You could offer a second rendering that organizes these with the largest bars at the bottom and sort from large to small. What this graph needs is an explanation of each category: what qualifies as a reference to “Religion” for example? 
 
### GitHub
From what we can tell, we find no link to GitHub from the project website, which seems problematic especially given the distance of the data from the visualizations on “Analysis” page. Yet your GitHub is well organized and curated, and you should be featuring it on the website, especially to show us the tagging of your source data in XML and the schema you used to manage the project.

We especially admire the activity of each of you on this project (see https://github.com/benjaminc2020/BrandNew/graphs/contributors ) kept by GitHub, that this was remarkably even and impressive sustained effort over the course of this unusually disruptive semester!  

###  “UX”: User Experience and Site Interface
Alas, there is no JavaScript interactivity on the Lyrics pages: When we click the checkboxes nothing is highlighted, and there is a very simple reason for that. The only JavaScript provided in that page is the sticky.js, which does not manage checkboxes. 

```
 <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
      <title>Mix Tape</title>
      <link rel="shortcut icon" href="../../images/fox.png" />
      <link rel="stylesheet" href="../../css/styles.css" />
      <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville&amp;display=swap"
         rel="stylesheet" />
      <link href="https://fonts.googleapis.com/css?family=Josefin+Sans&amp;display=swap"
         rel="stylesheet" />
      <script src="../../javascript/sticky.js"></script>
   </head>

```

This is a problem because the only way we can access your markup or gain any sense of it from the HTML is by viewing the page source and looking for the `<span>` elements, which are there. This is one of several ways in which the website publication is burying the project data source. We would like you to fix this, and also consider including a link to a source XML file for each song. Share your markup openly.

As we scroll through the analysis page, the graphs generated by Tableau sit on top of the site menu, blocking access to the “Albums” menu option, but the other graphs do not so block it. This is probably connected with the `<div class='tableauPlaceholder'>` surrounding these images, since there is not such a `<div>` surrounding the other `<img>` elements. We suspect this is something to be fixed with CSS, (since on inspection it does not seem to have much to do with the JS for the sticky menu). You have been able to control positioning of other images on the page with CSS but have not written any styling for these. See our comments above for other probably more serious issues with long-range reliance on Tableau renderings for web browser compability. They may not be visible from Chrome next year without some adjustment on your part, or on Tableau's part.


### Closing Comments
You all did an impressive job “under the hood” with preparing and querying your data, but that hard work is not all readily apparent for us to see on this site. More documentation and even direct links into the GitHub repo would be helpful. A section showing us the markup of one or two songs would be helpful too to show us your data modeling. We have provided lots of comments here because we think of this as a site with a long life ahead of it, a contribution to musicians and analysts. As such, we see this as something beyond just a semester project and as part of your portfolios, too. Even if you add no more data to the project, stepping back to document more of your work and reflect on the most significant findings, and taking long-range care of the visualizations can really boost this well-launched project. 
