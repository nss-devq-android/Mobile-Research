import yfinance as yf
import time
# input = input("w")
aapl = yf.Ticker("AAPL", session = None)
msft = yf.Ticker("MSFT", session = None)

#timestampsk
start_time = time.perf_counter()
news_articles = aapl.news
print(news_articles)
end_time = time.perf_counter()
final_time = end_time - start_time
print(final_time)

#Issue diagnose
if not news_articles:
    print("internet issue")
else:
    for news in news_articles:
        content = news.get("content", news) 
        print(content.get("title"))



for news in news_articles:
    title = news.get("title")
    if not title and "content" in news:
        title = news["content"].get("title")
    else:
        title = "Untitled"
    print(title)
# print(aapl.info['fiftyTwoWeekHighChange'])
# print(aapl.info['averageAnalystRating'])
# print()