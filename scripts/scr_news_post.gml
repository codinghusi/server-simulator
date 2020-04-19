///scr_news_post(title, message)

for (var i = NEWS_COUNT; i > 0; i--) {
    news_titles[i] = news_titles[i-1]
    news_messages[i] = news_messages[i-1]
}
news_titles[0] = argument0
news_messages[0] = argument1
