{
    "layer": "top",
    "position": "top",
    "mod": "dock",
    "exclusive": true,
    "passthrough": false,
    "gtk-layer-shell": true,
    "height": 30,
    
    "modules-left": ["hyprland/workspaces"],
    "modules-center": ["clock"],
    "modules-right": ["network","bluetooth","battery","backlight","pulseaudio","pulseaudio#microphone","custom/power","tray"],
    "hyprland/workspaces": {
        "disable-scroll": true,
        "all-outputs": true,
        "on-click": "activate",
        "persistent_workspaces": {
            "1": [],
            "2": [],
            "3": [],
            "4": []
        },
        "format": "{1: {icon} {window}}  {2: {icon} {window}}  {3: {icon} {window}}  {4: {icon} {window}}",
        "format-icons": {
            "active": "󰮯",
            "default": "󰮞"
        }
    },
    "hyprland/window": {
        "format": "{}"
    },
    "tray": {
        "icon-size": 15,
        "spacing": 10
    },
    "custom/power": {
        "format": "",
        "on-click": "wlogout"
    },
    "clock": {
        "locale": "C", 
        "format": " {:%I:%M %p}",
        "format-alt": " {:%a,%b %d}"
    },
    "backlight": {
        "device": "intel_backlight",
        "format": "{icon} {percent}%",
        "format-icons": ["󰃞", "󰃟", "󰃠"],
        "on-scroll-up": "brightnessctl set 1%+",
        "on-scroll-down": "brightnessctl set 1%-",
        "min-length": 6
    },
    "battery": {
        "states": {
            "good": 95,
            "warning": 30,
            "critical": 20
        },
        "format": "{icon} {capacity}%",
        "format-charging": " {capacity}%",
        "format-plugged": " {capacity}%",
        "format-alt": "{time} {icon}",
        "format-icons": ["󰂎", "󰁺", "󰁻", "󰁼", "󰁽", "󰁾", "󰁿", "󰂀", "󰂁", "󰂂", "󰁹"]
    },
    "pulseaudio": {
        "format": "{icon} {volume}%",
        "tooltip": false,
        "format-muted": " Muted",
        "on-click": "pamixer -t",
        "on-scroll-up": "pamixer -i 5",
        "on-scroll-down": "pamixer -d 5",
        "scroll-step": 5,
        "format-icons": {
            "headphone": "",
            "hands-free": "",
            "headset": "",
            "phone": "",
            "portable": "",
            "car": "",
            "default": ["", "", ""]
        }
    },
    "pulseaudio#microphone": {
        "format": "{format_source}",
        "format-source": "Mic: {volume}%",
        "format-source-muted": "Mic: Muted",
        "on-click": "pamixer --default-source -t",
        "on-scroll-up": "pamixer --default-source -i 5",
        "on-scroll-down": "pamixer --default-source -d 5",
        "scroll-step": 5
    },
    "network": {
        "format-wifi": "  {signalStrength}%",
        "format-ethernet": "{ipaddr}/{cidr} ",
        "tooltip-format": "{essid} - {ifname} via {gwaddr} ",
        "format-linked": "{ifname} (No IP) ",
        "format-disconnected": "Disconnected ⚠",
        "format-alt": "{ifname}:{essid} {ipaddr}/{cidr}",
        "on-click": "nm-connection-editor"
    },
    "bluetooth": {
        "format": " {status}",
        "format-disabled": "",
        "format-connected": " {num_connections}",
        "tooltip-format": "{device_alias}",
        "tooltip-format-connected": " {device_enumerate}",
        "tooltip-format-enumerate-connected": "{device_alias}",
        "on-click": "blueman-manager"
    }
}
