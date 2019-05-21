(() => {
    console.log('Welcome to felipe0liveira.dev');

    function RSS2Json() {
        const host = "https://api.rss2json.com/v1/api.json?rss_url=https://medium.com/feed/@felpd3v";
        $.get(host, (res) => {
            if (res.items) {
                res.items = res.items.filter((value) => {
                    return value.categories.length !== 0;
                });
                console.log(res.items);
                let postsListTemplate = '';
                res.items.forEach(post => {
                    postsListTemplate +=
                        `
                    <article class="col-6 col-12-xsmall work-item">
                        <a data-gtm-category="Artigos" data-gtm-value="thumbnail/${post.title}" href="${post.thumbnail}" class="google-tag-manager image fit thumb" style="background-image: url(${post.thumbnail})"></a>
                        <h3><a data-gtm-category="Artigos" data-gtm-value="link/${post.title}" href="${post.link}" class="google-tag-manager" target="_blank">${post.title}</a></h3>
                        <p>${post.pubDate}</p>
				    </article>`;
                });

                $('#postsList').html(postsListTemplate);
            }
        });
    }

    RSS2Json();
})()