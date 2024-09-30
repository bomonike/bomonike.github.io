oee.md

OEE (Overall Equipment Effectiveness) is commonly used as a manufacturing best practice key performance indicator (KPI).

OEE is used to measure <strong>full potential</strong> --
how well a manufacturing operation is utilizing its facilities, time, and material.

HISTORY: The term OEE was coined by Seiichi Nakajima (in Japan) based on the Harrington Emerson way of thinking regarding labor efficiency.

<strong>"Fully Productive Time"</strong> is another way of saying an OEE of 100% when
   * only good parts are produced (100% quality),
   * at the maximum speed (100% performance), and
   * without interruption (100% availability).

<strong>"Schedule Loss"</strong> is not part of OEE but is part of <a target="_blank" href="https://www.oee.com/teep/">TEEP (Total Effective Equipment Performance)</a>, a closely related measure which quantifies OEE against <strong>calendar hours</strong> rather than only against scheduled operating hours. So a TEEP of 100% loading means unrelenting runs during all 24 hours each day and 365 days each year. This is used for mechanical robots.

OEE is used to track progress over time in <strong>eliminating waste</strong> from a given production asset. See https://www.oee.com/calculating-oee/

OEE is used as a benchmark to compare the performance of a given production asset to industry standards, to similar in-house assets, or to results for different shifts working on the same asset:

   * 85% OEE is considered world class for discrete manufacturers. For many companies, it is a suitable long-term goal.
   * 60% OEE is fairly typical for discrete manufacturers, but indicates there is substantial room for improvement.
   * 40% OEE is not uncommon for manufacturing companies that are just starting to track and improve their manufacturing performance. It is a low score and in most cases can be easily improved through straightforward measures (e.g., by tracking stop time reasons and addressing the largest sources of downtime – one at a time).

By measuring OEE and the underlying losses, important insights can be gained on how to systematically improve the manufacturing process. OEE is an effective metric for identifying losses, bench-marking progress, and improving the productivity of manufacturing equipment (i.e., eliminating waste). The best way for reliable OEE monitoring is to automatically collect all data directly from the machines.

That's the job of MES to collect, calculate, and display them over time.
<a target="_blank" href="https://www.youtube.com/watch?v=QhO5Df1GdHY">VIDEO</a>: Show OEE gaps in data by filling in.

What's keeping that valuable operating time down are these loss-related factors:

<ul>Availability  x  Performance  x Quality</ul>

<table border="1" cellpadding="4" cellspacing="0">
<tr align="left"><th>Loss Factor</th><th>Recommended Six Big Losses</th><th>Example</th></tr>
<tr valign="top"><td rowspan="2">Availability Loss
   </td><td>Unplanned stops</td><td>Equipment failure</td></tr>
   <tr valign="top"><td>Planned Stops</td><td>Setup and Adjustments</td></tr>
<tr valign="top"><td rowspan="2">Performance Loss
   </td><td>Small stops</td><td>Idling and Minor stops</td></tr>
   <tr valign="top"><td>Slow Cycles</td><td>Reduced speed</td></tr>
<tr valign="top"><td rowspan="2">Quality Loss
   </td><td>Startup Rejects</td><td>Process Defects</td></tr>
   <tr valign="top"><td>Production Rejects</td><td>Reduced Yield</td></tr>
</table>

<a target="_blank" href="https://www.automationworld.com/factory/plant-maintenance/article/13309925/how-to-calculate-overall-equipment-effectiveness-a-practical-guide?o_eid=1439J4846112E7F&oly_enc_id=1439J4846112E7F&rdx.ident[pull]=omeda|1439J4846112E7F"><img alt="plc-oee-744x582.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1727284795/plc-oee-744x582_talbao.png"></a>

Because it exposes what actions to take against the underlying causes of lost productivity, the calculation above is preferred over calculation of OEE using the ratio of Fully Productive Time to <strong>Planned Production Time</strong>:

   <ul>(Good Count × Ideal Cycle Time) / Planned Production Time</ul>

OEE definitions may seem abstract for plant floor employees. Since plant floor employees tend to perform best when they given goals that are real-time, easily interpreted, consider the acronymn TAED plus Quality, as visualized here:

<a target="_blank" href="https://www.leanproduction.com/oee/"><img alt="oee-vorne.png" width="300" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726862021/oee-vorne_hb6wu2.webp"></a>

   * Target: a real-time production rate target driven by the planned rate of production
   * Actual: the production rate actually achieved

   * Efficiency: the ratio of Target to Actual; how far ahead or behind production is running in terms of a percentage

   * Downtime (Availability Loss): accumulated unplanned stop time for the shift updated in real-time; this keeps a strong focus on a key actionable improvement area

   * Quality?
