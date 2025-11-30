
#!/bin/bash

# Forzar desmuteo del sink
pactl set-sink-mute @DEFAULT_SINK@ 0

# Asegurar volumen decente (si está en 0%)
current_vol=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '\d+%' | head -1 | tr -d '%')
if [ "$current_vol" -le 5 ]; then
  pactl set-sink-volume @DEFAULT_SINK@ 50%
fi

# Reasignar salida por si se desvió
pactl set-default-sink alsa_output.pci-0000_03_00.6.analog-stereo