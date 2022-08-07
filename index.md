---
layout: default
---

Hi there!

I’m Alan, a Data Engineer at an Ocean Institute responsible for the sustainability and protection of our oceans.The Shark Control department recently approached me as they want to analyze the evolution of shark attacks over the last century. They believe that a better understanding of attack factors will improve the prevention of incidents during aquatic activities while being respectful of the oceanic biodiversity.

The problem is twofold. First, I need to make sur the data is accessible by the Shark Control department whenever they want to run their analysis. I have seen too many colleagues struggling with the configuration of their data warehouse, and I therefore want to avoid this trap in which I would find myself in undifferentiated infrastructure work. Also, I need to provide insightful and user-friendly visualizations for my colleagues to act upon. I have seen enough complex and non user centric dashboards in my life, and I do not want to go down this road myself.

How can I build an available, fully managed, and cost-efficient data warehousing solution? And after that, how can I build an application that provides my non-technical users the information they need to take meaningful decisions ? 

I have been scratching my head for a while, until I read this blog post (link to blog post). I gave it a try and set up a Redshift Serverless endpoint in my AWS account. I then connected this new serverless data warehouse to Toucan Toco, and voilà! 

I used this set up to provide the Shark Control department a data story telling application, and they absolutely love it !

Want to see the outcome? Look at the following charts

<div>
<script async src="https://presales.toucantoco.com/scripts/embedLauncher.js?id=836c27fc-5902-45a8-b746-3c77e24facfc&panel=true&title=true" type="text/javascript"></script>
test
</div>
test3

<script async src="https://presales.toucantoco.com/scripts/embedLauncher.js?id=aa2959be-9bba-4710-9bc9-44e2adef3f12&panel=true&title=true" type="text/javascript"></script>
test2
<script async src="https://presales.toucantoco.com/scripts/embedLauncher.js?id=2787b2b6-ddd6-4f52-9f11-9d9fb559e579&panel=true&title=true" type="text/javascript"></script>
<script async src="https://presales.toucantoco.com/scripts/embedLauncher.js?id=016a338c-8c5f-448b-a65b-51f0392b59e6&panel=true&title=true" type="text/javascript"></script>