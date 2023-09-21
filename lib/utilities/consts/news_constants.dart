import '../models/newz_model.dart';

class CommunityConstants {
  static const List<NewsModel> communities = [
    NewsModel(
        image:
        'https://phantom-marca.unidadeditorial.es/5263e9249710ee51e14b0ae6f6fd743c/resize/660/f/webp/assets/multimedia/imagenes/2022/03/05/16464909295961.jpg',
        title: "Day Trading",
        description:
        "Day traders aim to profit from short-term price movements within a single trading day. They make multiple trades throughout the day and often use technical analysis to identify entry and exit points. Challenges include: high-pressure environment with quick decision-making,Constant monitoring of the markets, leading to stress and burnout, Transaction costs can eat into profits due to frequent trading.",
        date: "9.20.2023"),
    NewsModel(
        image:
        'https://d1e00ek4ebabms.cloudfront.net/production/5b6adf89-45c7-46ea-a466-fe8616f32b16.jpg',
        title: "Swing Trading",
        description:
        "Swing traders hold positions for several days to weeks, aiming to capture larger price movements. They rely on technical and fundamental analysis to identify potential trends. Challenges include: balancing patience with timing, as swing trades require waiting for the right entry and exit points, holding positions overnight exposes traders to overnight risk, such as market gaps.",
        date: "9.20.2023"),
    NewsModel(
        image:
        'https://penntoday.upenn.edu/sites/default/files/2023-07/biotech-commons-space.jpg',
        title: "Trend Following",
        description:
        "Trend followers identify and ride established market trends. They use technical indicators to confirm trends and determine entry and exit points. Challenges include: false signals and whipsaws can lead to losses if trends reverse unexpectedly, missed opportunities during sideways or range-bound markets.",
        date: "9.20.2023" ),
    NewsModel(
        image:
        'https://www.simplilearn.com/ice9/free_resources_article_thumb/cryptocurrency_explained.jpg',
        title: "Arbitrage",
        description:
        """Arbitrageurs exploit price discrepancies of the same asset across different markets or exchanges. They buy low in one market and sell high in another to lock in risk-free profits. Challenges include:

- Fast execution is crucial, as price discrepancies can close rapidly.
- Transaction costs and fees can reduce or eliminate potential profits.
- Arbitrage opportunities are becoming scarcer due to advanced trading technology.""",
        date: "9.20.2023"),
    NewsModel(
        image:
        'https://cdn2.etrade.net/1/21072818500.0/aempros/content/dam/etrade/retail/en_US/images/what-we-offer/investment-choices/cryptocurrency-coins.jpg',
        title: "Algorithmic Trading",
        description:
        """Algorithmic traders use computer programs to execute trades based on predefined rules and strategies. Challenges include:

- Developing and maintaining effective algorithms requires programming skills and constant refinement.
- Technical glitches or "flash crashes" can lead to significant losses.
- Over-optimization can result in algorithms that perform well historically but fail in real-time markets.""",
        date: "9.20.2023"),
    NewsModel(
        image:
        'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1500w,f_auto,q_auto:best/newscms/2018_33/2363946/180315-cryptocurrency-al-1338.jpg',
        title: "Mean Reversion",
        description:
        """Mean reversion traders assume that prices will revert to their historical average over time. They look for overbought or oversold conditions to enter trades. Challenges include:

- Identifying the true mean in volatile markets can be difficult.
- Prices can stay in overbought or oversold territories for extended periods.""",
        date: "9.20.2023"),
    NewsModel(
        image:
        'https://c.files.bbci.co.uk/1D8C/production/_123646570_gettyimages-945312872.jpg',
        title: "Scalping",
        description:
        """Scalpers make numerous quick trades to profit from small price movements. They aim to capture tiny price differentials. Challenges include:

- High-frequency trading requires advanced technology and low-latency connections.
- Transaction costs can significantly impact profitability.
- Scalping can be stressful and emotionally taxing.""",
        date: "9.20.2023"),

  ];
}


class NewsList {
  static const List<NewsMList> stats = [
    NewsMList(
      title: "Santander creates two new global businesses for retail, consumer areas",
      description:
          "MADRID, Sept 18 (Reuters) - Spain's Santander (SAN.MC) is consolidating its retail, commercial and consumer activities across all markets under two new global businesses to help it improve performance and add customers, it said on Monday.\n\nThe new Retail and Commercial unit and Digital Consumer Bank will join Santander's other global operations in Corporate and Investment Banking, Wealth Management and Insurance and Payments, it said in a statement.\n\nPotential cost savings were not disclosed, but the bank said the restructuring will help it achieve strategic goals outlined at its Investor Day in February, such as adding 40 million customers by 2025 and increasing its return on tangible equity (ROTE) to 15-17%.\n\nThe bank is benefiting from higher interest rates in Europe as it seeks to expand its investment banking business.\n\nGlobal heads will define the common business and operating model based on global platforms, said the bank, with all operations aligned under five global business areas\n\nCorporate & Investment Banking will continue to be led by Jose M. Linares. Wealth Management and Insurance will remain headed by Victor Matarranz.",
      imageUrl:
          "https://www.reuters.com/resizer/xnoHRCkJhU3luyO93EfkHtageSY=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/C5EOKWIGVRK4NAFTBGV37PRVEY.jpg",
    ),
    NewsMList(
      title: "Swiss financial regulator increasing staff supervising UBS",
      description:
          "ZURICH, Sept 19 (Reuters) - Swiss financial regulator FINMA is increasing the number of specialists overseeing UBS (UBSG.S) following its takeover of Credit Suisse, FINMA Chair Marlene Amstad said.\n\nFINMA, which has come under fire for failing to act swifter or more effectively during the Credit Suisse crisis, is increasing its focus on Switzerland's remaining globally systemically important bank.",
      imageUrl:
          "https://www.reuters.com/resizer/q3s_xkip9Mp5JxSuhp2UUXEoHTM=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/YFO5YJFBVBJXDIWKAPD6TX7VPM.jpg",
    ),
     NewsMList(
      title: "In the Market: Fed beware the banking crisis of March",
      description:
          "Sept 18 (Reuters) - Cadence Bank (CADE.N) CEO Dan Rollins calls the regional banking crisis from earlier this year March madness.We don't want an asset that doesn't come with a full wallet, Rollins said, referring to a trend since the crisis where banks want customers who want loans to also bring them their deposits. \n\n We know that we are going to continue to be fighting for the dollars Six months on, the craziness has abated, but the industry is scarred and still dealing with its consequences.\n\n",
      imageUrl:
          "https://www.reuters.com/resizer/BcX2Ef-0DJ_5Wa51zghg2VfcYpU=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/WS3IID6MM5I7JMCU3G5ZJAFRNA.jpg",
    ),
    NewsMList(
      title: "HSBC can still grow revenues even after rates peak - CFO",
      description:
          "LONDON, Sept 19 (Reuters) - HSBC can still grow its global revenues even as central banks look to dial down interest rate rises in their battle against inflation, the bank's chief financial officer Georges Elhedery told a conference on Tuesday.\n\nSpeaking at an event hosted by Bank of America, Elhedery said balance sheet growth would be difficult in 2023 due to lower client appetite for loans but he expected this to change sometime in 2024, with the bank targeting growth in areas including wealth management in Asia.",
      imageUrl:
          "https://www.reuters.com/resizer/FVMn8muLjwjFffbQKml3eK7CfZM=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/YLFKU2EK3FOKXCGS2MDHTMXBRY.jpg",
    ),
     NewsMList(
      title: "Russia's Sovcombank files lawsuit seeking to recover debt from HSBC",
      description:
          "MOSCOW, Sept 18 (Reuters) - Russian private lender Sovcombank has filed a lawsuit with a Russian court against British bank HSBC (HSBA.L), seeking to recover debt in roubles equivalent to 12,958 ounces of gold, court filings showed.",
      imageUrl:
          "https://www.reuters.com/resizer/3MHT6rlWC23_FK-LWMpsaO677zc=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/EWTGUPX5RFMU3OE3EGSWOHQFVY.jpg",
    ),

     NewsMList(
      title: "Top Mediobanca investor set to file own list for new board-sources",
      description:
          "MILAN, Sept 18 (Reuters) - Delfin, the holding company of late billionaire Leonardo Del Vecchio and the main investor in Mediobanca (MDBI.MI), is set to file its own slate of nominees for the Italian bank's new board, two people close to the matter said.\n\nMediobanca shareholders vote on Oct. 28 to pick new directors and the outgoing board is expected to propose another three-year mandate for Chief Executive Alberto Nagel and Chairman Renato Pagliaro.",
      imageUrl:
          "https://www.reuters.com/resizer/ohaQKED7k0N5i4YxBMbJyZqB3OA=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/4LM3RVWDSBN57PT2VY2VKDLDVI.jpg",
    ),
    NewsMList(
      title: "U.S. Treasury: Banks' 'net zero' pledges must align with temperature limits",
      description:
          "NEW YORK, Sept 19 (Reuters) - Net-zero financing commitments from banks and asset managers should align with goals to limit the global average temperature increase to 1.5 degrees Celsius and be backed by credible metrics and targets, the U.S. Treasury said on Tuesday.\n\nThe Treasury released a document setting out new principles as world leaders, celebrities and business moguls, converged on Manhattan to focus attention on the climate crisis during the U.N. General Assembly week.",
      imageUrl:
          "https://www.reuters.com/resizer/v3aRALJKIJO6F1w_Pge0RmrLCZA=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/SLFJXDEEKNI7NNXU7RTVHIG4H4.jpg",
    ),
  ];
}

class NewsMList {
  final String title;
  final String description;
  final String imageUrl;

  const NewsMList({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}
