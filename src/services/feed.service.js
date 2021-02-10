import xml2json from 'xml2js'

const getFeed = async () => {
  const response = await fetch('https://dev.to/feed/felipe0liveira.dev')
  const xml = await response.text()
  const rss = await xml2json.parseStringPromise(xml)
  let postsDevTo = rss['rss']['channel'][0]['item']

  postsDevTo = postsDevTo.map((item, index) => ({
    id: index,
    title: item.title[0],
    author: item.author[0],
    pubDate: item.pubDate[0],
    url: item.link[0],
    description: item.description[0],
    category: item.category,
  }))

  return postsDevTo
}

export default { getFeed }
