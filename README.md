# Twitter sentiment analysis for price and transaction volume changes in the cryptocurrency market

B.D.P. See & M. Ulpah
University of Indonesia, Jakarta, Indonesia

## Table of Contents
1. [Abstract](#Abstract)
1. [Introduction](#Introduction)
1. [Literature Review](#Literature-Review)
1. [Methodology](#Methodology)
1. [Analysis and Discussion](#Analysis-and-Discussion)
1. [Conclusion](#Conclusion)
1. [References](#References)

## Abstract
Cryptocurrencies are rising in importance as an investment option and alternative currency. Thus, investors are keen on finding timely market movement insights. One such source is Twitter due to its live feed of information on cryptocurrencies and emotional information from investors expressing their sentiments. This article examines the extent to which Twitter sentiments can be used to predict price and transaction volume changes for the nine largest cryptocurrencies for the period of June 2021 to September 2021. This study was conducted using a lexicon-based approach through the VADER algorithm for sentiment analysis, while applying the Granger causality method to analyze the two-way predictive capabilities of each cryptocurrency’s sentiments toward their respective price and transaction volume changes. Past studies have shown that sentiment analysis may work for several cryptocurrencies, while this study only found predictive capabilities in transaction volume changes and not in price movement.

## Introduction
Cryptocurrencies are digital currencies that utilize blockchain technology (Nakamoto, 2008). There are numerous coins available in the market with the largest one being Bitcoin (CoinMarketCap, 2021). Due to its fairly young age, the cryptocurrency market lacks regulation to govern it (Alexander & Heck, 2020). Lack of regulation, news, and information found on social media is considered the main cause of volatility in the cryptocurrency market (Mai et al., 2018). 

A social media platform most commonly used by the investors is Twitter due to its rapid nature and emphasis on the microblogs dissemination, or tweets, which can capture investors' fleeting sentiments (Kraaijeveld & De Smedt, 2020). Coincidentally, previous research has discussed the usage of Twitter, specifically from sentiments found in users’ tweets, to be a method of prediction in the stock market (Bollen et al., 2011; Kraaijeveld & De Smedt, 2020; Li et al., 2018).

## Literature Review
Past studies have explored the usage of algorithms to determine sentiments found in texts. Hutto and Gilbert (2014)  tested several sentiment analysis algorithms on social media and found that the best algorithm for sentiment analysis in social media is the VADER algorithm. Unlike other similar lexicon-based algorithms, VADER was created specifically with social media in mind. 

A similar study investigating Twitter sentiments using VADER and its effect on the cryptocurrency market was conducted by Kraaijeveld and De Smedt (2020), but it used data from 2018. At the time, the cryptocurrency market capitalization was USD 813 Bn, while the market cap in mid-2021 was USD 1,493 Bn (CoinMarketCap, 2021). The significant increase in capital flow into the cryptocurrency market can be credited to its rising popularity among retail investors, but more importantly, institutional investors have started adding cryptocurrencies into their balance sheets as early as 2019 (Sun et al., 2021). The entry of institutional investors into the cryptocurrency market and the corresponding increase in market size indicate the market has a vastly different landscape today than in 2018. Hence, this necessitates an updated study on Twitter sentiment analysis for investors in the cryptocurrency market. 

Based on the aforementioned introduction, there are two objectives to this study, i.e., firstly, it is to investigate whether Twitter sentiments can predict price and transaction volume changes. Secondly, to investigate whether price and transaction volume changes can predict Twitter sentiments.

## Methodology
This study was conducted using daily data from 1st June 2021 until 30th September 30th, 2021. During the study period, up to 1,000 tweets mentioning the nine largest cryptocurrency tokens by market capitalizationwere collected. Daily prices and the trading volume for each cryptocurrency were collected from CoinMarketCap, a platform for financial information regarding cryptocurrencies. The list of tokens used in this study were Bitcoin (BTC), Ethereum (ETH), Binance Coin (BNB), Cardano (ADA), Dogecoin (DOGE), Rip-ple (XRP), Polkadot (DOT), Uniswap (UNI), and Chainlink (LINK).

In order to make the tweets suitable for use with the VADER algorithm, each raw tweet data obtained was cleaned to remove retweets, hyperlinks, mentions, hashtags, and other symbols. Tweets with terms such as “giveaways” and “giving” were also removed because a previous study by Kraaijeveld and De Smedt (2020) mentioned that cryptocurrency-related tweets generally have a number of bot-made tweets in them, using those exact terms.

Afterward, the cleaned tweet data was fed into the VADER algorithm to measure their polarity and compound score. The tweet was categorized as positive if the compound score was over 0, negative if the compound score was under 0, or neutral if the compound score was 0. The price and transaction volume changes were calculated using a simple return formula. 

Three methods were employed for further analysis. First, the Augmented Dickey-Fuller (ADF) test was used to determine the stationarity of the time-series data used in this research. (Dickey & Fuller, 1979). Second, the Johansen Cointegration test was employed to determine if the time-series used in this research were cointegrated, showing whether there exists a long-term connection between them (Johansen, 1988). Lastly, the Granger causality was utilized to see a two-way relationship between two variables, showing whether a certain factor was capable of predicting another factor, or vice versa (Engle & Granger, 1987).

## Analysis and Discussion
Table 1 shows the result of the raw data collection and cleaning. “Before” and "After” columns indicate the total number of tweets obtained before and after the data cleaning. The differences are assumed to be due to bot-made tweets, in accordance with the previous study (Kraaijeveld & De Smedt, 2020). Overall, 786,819 usable tweets were obtained for further analysis.

Table 1. Descriptive analytics summary

| Token | Before | After | Changes | Changes % |  
|-----------|:-----------:|:-----------:|:-----------:|:-----------:|  
| ADA | 114,876 | 104,574 | 10,302 | 8.97% |  
| BNB | 121,670	| 97,365	| 24,305 | 19.98% | 
| BTC | 120,486	| 108,888	| 11,598 | 9.63% |
| DOGE | 121,000 | 103,973 | 17,027 |	14.07% |
| DOT | 51,076 | 50,605 |	471	| 0.92% |
| ETH | 121,450 |	96,756 | 24,694	| 20.33% | 
| LINK | 119,854 | 64,534	| 55,320 | 46.16% |
| UNI | 46,754 | 44,372	| 2,382	| 5.09% |
| XRP | 119,130	| 115,752	| 3,378 | 2.84% |

Table 2 shows the results of the ADF and the Johansen Cointegration test. If the ADF statistic was lower than the critical value, the conclusion was that the time-series was stationary. As seen in Table 2, all sentiments were stationary. Next, the Johansen Cointegration test was done using the time-series of daily sentiments, price changes, and transaction volume changes. The results suggested that ADA, BNB, DOT, LINK, and UNI might have long-term relationships with one of the other time-series. Meanwhile, the rest of the tokens did not have long-term or short-term relationships with their price and transaction volume changes.

Table 2. ADF and Johansen Cointegration test summary

| Token | ADF Stat | Critical Value (5%) | Hypothesized Number of <br> Cointegration Equation | Number of <br> Cointegration |  
|-----------|:-----------:|:-----------:|:-----------:|:-----------:|  
| ADA | -7.520970* | -2.885450 | None*, At most 1, At most 2 | 1 |  
| BNB | -5.554652*	| -2.885654	| None*, At most 1, At most 2* | 1 | 
| BTC | -8.357328*	| -2.885450	| None*, At most 1*, At most 2* | 3 |
| DOGE | -9.243754* | -2.885450 | None, At most 1, At most 2* |	0 |
| DOT | -4.938653* | -2.885450 |	None*, At most 1, At most 2	| 1 |
| ETH | -9.880896* |	-2.885450 | None*, At most 1*, At most 2*	| 3 | 
| LINK | -7.265064* | -2.885450	| None*, At most 1, At most 2* | 1 |
| UNI | -5.017657* | -2.885654	| None*, At most 1, At most 2*	| 1 |
| XRP | -9.318135*	| -2.885450	| None*, At most 1*, At most 2* | 3 |

Lastly, Table 3 shows the results of the Granger causality method, which investigates the predictive relationship between two variables. The three variables used were sentiment (St), price (Pt), and volume (Vt). Each of them was tested using the Granger causality test at a 1 to 5-period lag. As presented in Table 3, there was not a causal or predictive relationship between price and sentiment or sentiment and price in all cryptocurrencies. Simultaneously, there might be a causal or predictive relationship between sentiment and volume in ADA, BTC, DOGE, DOT, and XRP.

Table 3. Granger causality test summary

| Token | Pt -> St | St -> Pt | Vt -> St | St -> Vt |  
|-----------|:-----------:|:-----------:|:-----------:|:-----------:|
| ADA | No | No | Yes, lag (5) | No |  
| BNB | No	| No	| No | No | 
| BTC | No	| No	| No | Yes, lag (5) |
| DOGE | No | No | Yes, lag (1-5) |	Yes, lag (2) |
| DOT | No | No |	No	| Yes, lag (4-5) |
| ETH | No |	No | No	| No | 
| LINK | No | No	| No | No |
| UNI | No | No	| No	| No |
| XRP | No	| No	| No | Yes, lag (3-4) |

## Conclusion
In conclusion, the results of the study do not show any significant relationships between Twitter sentiments and price changes. However, a significant result was observed in the predictive capability of sentiment to predict transaction volume changes for BTC, DOGE, DOT, and XRP. Conversely, the results indicate that volume changes have the capabilities of predicting sentiment changes for ADA and DOGE.

These results differ from the previous study on Twitter sentiment analysis and the cryptocurrency market. The discrepancy could be caused by the different market conditions, indicating that retail investors in Twitter no longer have significant influence over price changes in the cryptocurrency market. Furthermore, this could be due to the significant presence of institutional investors, who can be regarded as more rational than retail investors, as they tend to hold their investment positions despite the price and volume fluctuations (Sun et al., 2021).

The results of this study might benefit traders and institutional investors for research focused on the latest analysis of trading strategies using Twitter sentiment analysis. Future research might benefit from implementing supervised machine learning to enhance predictive capabilities for more advanced trading strategies. 

## References
- Alexander, C., & Heck, D. F. (2020). Price discovery in Bitcoin: The impact of unregulated markets. Journal of Financial Stability, 50, 100776. https://doi.org/10.1016/j.jfs.2020.100776
- Bollen, J., Mao, H., & Zeng, X. (2011). Twitter mood predicts the stock market. Journal of Computational Science, 2(1), 1–8. https://doi.org/10.1016/j.jocs.2010.12.007
- CoinMarketCap. (2021). Cryptocurrency prices, charts and market capitalizations. https://coinmarketcap.com/
- Dickey, D. A., & Fuller, W. A. (1979). Distribution of the estimators for autoregressive time series with a unit root. Journal of the American Statistical Association, 74(366), 427. https://doi.org/10.2307/2286348
- Engle, R. F., & Granger, C. W. J. (1987). Co-integration and error correction: Representation, estimation, and testing. Econometrica, 55(2), 251–276. https://doi.org/10.2307/1913236
- Hutto, C., & Gilbert, E. (2014). VADER: A parsimonious rule-based model for sentiment analysis of social media text. Proceedings of the International AAAI Conference on Web and Social Media, 216–225. https://ojs.aaai.org/index.php/ICWSM/article/view/14550
- Johansen, S. (1988). Statistical analysis of cointegration vectors. Journal of Economic Dynamics and Control, 12(2–3), 231–254. https://doi.org/10.1016/0165-1889(88)90041-3
- Kraaijeveld, O., & De Smedt, J. (2020). The predictive power of public Twitter sentiment for forecasting cryptocurrency prices. Journal of International Financial Markets, Institutions and Money, 65, 101188. https://doi.org/10.1016/j.intfin.2020.101188
- Li, T., Van Dalen, J., & Van Rees, P. J. (2018). More than just noise? Examining the information content of stock microblogs on financial markets. Journal of Information Technology, 33(1), 50–69. https://doi.org/10.1057/s41265-016-0034-2
- Mai, F., Bai, Q., Shan, Z., Wang, X. (Shane), & Chiang, R. H. L. (2018). How does social media impact bitcoin value? A test of the silent majority hypothesis. Journal of Management Information Systems, 35(1), 19–52. https://doi.org/10.2139/ssrn.2545957
- Nakamoto, S. (2008). Bitcoin: A peer-to-peer electronic cash system. www.bitcoin.org
- Sun, W., Dedahanov, A. T., Shin, H. Y., & Li, W. P. (2021). Factors affecting institutional investors to add crypto-currency to asset portfolios. The North American Journal of Economics and Finance, 58, 101499. https://doi.org/10.1016/j.najef.2021.101499
