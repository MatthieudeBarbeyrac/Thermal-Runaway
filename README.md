Description:

The model represents one 27 Ah lithium‑ion cell as a Battery Equivalent Circuit (BEC) with electrical behaviour and lumped thermal mass.

The BEC thermal port is connected to a Heat Flow Rate Sensor and a Convective Heat Transfer block to an ambient temperature source.

The Heat Flow Rate Sensor output (convective heat rate in W) is used as the thermal input to the multi‑cell thermal‑runaway stack.

A CC‑CV charger/discharger cycles the cell while keeping the state of charge (SOC) between 0.3 and 0.9, with configurable charge/discharge current.
The BEC cell is intended to represent normal operation only up to moderate temperatures.

The model with this current battery becomes invalid after the cell temperature reaches 90 °C, because in a real cell a short circuit and thermal‑runaway reaction would be expected to occur at that point.
Beyond 90 °C, the simple equivalent‑circuit representation no longer captures the physics (internal short, rapid exothermic reactions, etc.).
Any results for the BEC cell above 90 °C should not be interpreted as realistic.

You should replace this battery with your own model or data if you have it

This signal is fed into the first cell of the thermal‑runaway stack.

That heat input raises the temperature of the first cell in the stack.

When that first cell reaches its own abuse threshold, the thermal‑runaway reaction starts and can propagate to neighbouring cells.

The BEC cell itself is only valid up to ~90 °C; the detailed runaway physics are represented in the separate thermal‑runaway stack, not in the BEC block.

Configured the CC‑CV block so that charging current is applied only while:
SOC<0.9.

Configured the CC‑CV block so that discharging current is applied only while:
SOC>0.3.

This keeps the cell cycling within a realistic SOC window and avoids extreme low/high SOC conditions that would require additional modelling fidelity.

**TO RUN**:

Put the three files in the same MATLAB folder (two .slx files, one .m file.)

Run the Battery CCCV and MTR files before running the MTRNI file.

Open the simulation.

To access the BEC from the simulation:

Click on the Controls subsystem.

Then click on the Battery subsystem.

