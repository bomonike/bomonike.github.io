This is at <a target="_blank" href="https://bomonike.github.io/plc">https://bomonike.github.io/pid</a> from code at <a target="_blank" href="https://github.com/bomonike/bomonike.github.io/blob/master/pid.md">https://github.com/bomonike/bomonike.github.io/blob/master/pid.md</a>

To maintain a process variable such as ambiant temperature at a target <strong>Setpoint</strong>, a PLC controller activates a heater or cooler based on sensor readings, in a feedback control loop. Other variables include regulating pressure and flow rate.

<a target="_blank" href="https://www.youtube.com/watch?v=IAhxYsMi4e8&t=1m47s">VIDEO</a> by <a target="_blank" href="https://www.realpars.com/">realpars.com</a>:
<img alt="plc-pid-feedback.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726664501/plc-pid-feedback_a5kvtj.png">

<a target="_blank" href="https://www.youtube.com/watch?v=fv6dLTEvl74">VIDEO</a>:
To dampen wild swings in actions and values, PLCs use the <a target="_blank" href="https://www.youtube.com/watch?v=sFqFrmMJ-sg&list=PLln3BHg93SQ_Ejn6godXbxromegXSMYOl">PID (Proportional Integral Derivative)</a> approach to use keep the Setpoint Value (SV) at a desired temperature, pressure, battery or fuel level, etc. The difference between the SV and current observed PV (Process Variables) is the Error/Deviation. To keep that low, Control actions such changing the flow rate, varying voltage levels, etc. are applied to MV (Manipulated Variables) such as the position of values and voltage levels set.
   * <a target="_blank" href="https://www.youtube.com/watch?v=lRZ4NT5DRk8&list=PLln3BHg93SQ_Ejn6godXbxromegXSMYOl&index=7&t=53s">VIDEO</a>:
   * <a target="_blank" href="https://www.youtube.com/watch?v=_VzHpLjKeZ8">VIDEO</a>
   * https://blog.novus.com.br/basic-pid-control/?lang=en
   * https://www.yokogawa.com/us/library/resources/media-publications/pid-tuning-improves-process-efficiency/

<a target="_blank" href="https://www.youtube.com/watch?v=KyZNsQBMkGE">VIDEO</a>:
PID Control and Tuning by Rob Sink at Yokogawa 2016
covers the topic fully in 1 hour.

<a target="_blank" href="https://youtube.com/shorts/kHxsWbcxplk?si=CVrCpRAKy-zzCOto">VIDEO</a>:
PID (Proportional Integral Derivative) controllers are <a target="_blank" href="https://www.youtube.com/watch?v=sFqFrmMJ-sg&list=PLln3BHg93SQ_Ejn6godXbxromegXSMYOl">tuned</a> using three K Controller Gain settings to reduce errors with minimal oscillations:

* Kp "Proportional" correction to errors increase in proportion to the magnitude of historical error between the current and the desired value.

* Ki "Integral" correction counters small errors accumulated over time (with an integral meaning an area under the graph) require more intensive correction to keep exactly at the SV.

* Kd "Derivative" correction dampens (slows) the speed (rate of error) to avoid oscillations in the future.

<a target="_blank" href="https://www.youtube.com/watch?v=tFVAaUcOm4I">DigiKey's</a> <a target="_blank" href="https://www.digikey.com/en/maker/projects/introduction-to-pid-controllers/763a6dca352b4f2ba00adde46445ddeb">math:<br />
<img alt="plc-pid-math.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1726939202/plc-pid-math_dflwcd.png"></a>

<img alt="pid-formula-1909x819.png" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1727045229/pid-formula-1909x819_yulipx.png"></a>

HANDS-ON: Manually adjust kp, ki, kd in real time on the PID simulator Excel sheet from https://www.engineers-excel.com/Apps/PID_Simulator/Description.htm


Alternately, use web pages at
* https://pidtuner.com/#/
* <a target="_blank" href="https://www.youtube.com/watch?v=_S_nYlPieP0">VIDEO</a>: https://pidtuningireland.com/
* https://tools.softinery.com/PIDSIM/ and
* https://tech-uofm.info/pid/pid.html
* https://smartmfg.me.wisc.edu/pages/resources/PIDMotorPositionControl.html
* <a target="_blank" href="https://www.youtube.com/watch?v=6sQeWE-mIFM" title="Jul 16, 2024">VIDEO</a> of <a target="_blank" href="https://apps.microsoft.com/detail/9nbcz6qq5djs?hl=en-mt&gl=US">Manual PID Simulator from Microsoft Store</a>
* https://instrumentationtools.com/pid-controller-simulator/

They're an improvement over the original https://grauonline.de/alexwww/ardumower/pid/pid.html
provides a PID simulator you can adjust in real time by changing JavaScript code
(ported in 2004 from the <a target="_blank" href="https://github.com/br3ttb/Arduino-PID-Library">Arduino PID library</a> and <a target="_blank" href="https://github.com/br3ttb/Arduino-PID-AutoTune-Library">Arduino AutoTune Library</a> with <a target="_blank" href="https://github.com/br3ttb/arduino-pid-library-tester/blob/master/pid-tester/pid-tester.ino">tests</a>, as <a target="_blank" href="http://brettbeauregard.com/blog/2011/04/improving-the-beginners-pid-introduction/">explained by Brett</a>). Learnings: Auto tune.

   * If it overshoots a lot and oscillates, either the integral gain (I) needs to be increased or all gains (P,I,D) should be reduced
   * If it ramps up quickly to a value below target value and then slows down as it approaches target value? Try increasing the I constant.
   * Too much overshoot? Increase D, decrease P.
   * Response too damped? Increase P.

<a target="_blank" href="https://www.youtube.com/watch?v=v4F-cGDGiEw">this video</a>
https://www.aaedmusa.com/projects/project-three-sng7y-gaslp

References about PID:
   * <a target="_blank" href="https://www.youtube.com/watch?v=6OH-wOsVVjg">SieeFPV</a>
   * https://blog.novus.com.br/basic-pid-control/?lang=en
   * <a target="_blank" href="https://www.youtube.com/watch?v=wkfEZmsQqiA">interval path of the past and derivative rate to predict future error</a> with <a target="_blank" href="https://www.mathworks.com/campaigns/offers/pid-tuning-code-examples.html?s_eid=PSM_15028">MATLAB code</a>


## Other approaches:

* Fuzzy Logic Control (FLC)

* <a target="_blank" href="https://www.youtube.com/watch?v=lRZ4NT5DRk8&list=PLln3BHg93SQ_Ejn6godXbxromegXSMYOl&index=7&t=7m10s">Model Predictive Control (MPC)</a> works by using an algorithm based on a mathematical model to predict the behavior of process variables.

* Adaptive Control

* Neural Network Control

