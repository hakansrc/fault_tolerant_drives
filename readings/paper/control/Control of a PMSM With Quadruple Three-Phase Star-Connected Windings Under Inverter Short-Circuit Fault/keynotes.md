#### Control of a PMSM With Quadruple Three-Phase Star-Connected Windings Under Inverter Short-Circuit Fault
#### Authors: Oliver Dieterle, Thomas Greiner, Peter Heidrich
## Overview
In this paper control algorithm for a "Quadruple Three-Phase Star-Connected PMSM" is proposed.

First the machine model is introduced for each three phase. While doing that the coupling effects between the windings are also taken into consideration. 
Apart from the investigating the short circuit faults and its effects, this paper also provides nice points for implementation of the control algorithm. Adapted current control is  a nice way of utilizing the faulty phase group. Even though there is torque ripple at the output due to the fault, the contribution of the faulty phase can be crucial.

Other important points and comments are in mendeley.




## - Key points taken from this reading

This paper provides nice keypoints for control side. However there were no information about the dclink of the system. I assume they are either fed parallelly from the same source or independently. We still have to deal with the dc-link balancing problem in the case of a serially connected inverters.