draw_set_colour(c_black)

var yy;
yy = 0

for (var i = 0; i <= NEWS_COUNT; i++) {
    draw_text(1070, 170+yy, news_titles[i])
    yy += string_height(news_titles[i])
    draw_text(1075, 170+yy, news_messages[i])
    yy += string_height(news_messages[i]) + 5
}
