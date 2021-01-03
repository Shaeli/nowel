# Nowel

This is our team repository for hashicorp contest: https://www.hashicorp.com/blog/announcing-the-hashicraft-holidays-hackstravaganza

Team is composed of the 3 following persons:
- Corentin Mors
- Cyril Leclerc
- Eleonore Carpentier

This repository is a terraform module using our [home-assistant](https://registry.terraform.io/providers/Mikescops/homeassistant/latest/docs/resources/ha_mediaplayer) terraform provider created for the contest.

Use this module to transform your home with a holiday theme.
The module will set your light, TV display and speakers to the desired theme.


### Requirements:
- Have at least of the following devices:
    - Smart lights connected to home assistant
    - Smart TV connected to home assistant
    - A speaker connected to home assistant
- A vault running with your home assistant API key.



4 themes are possibles:
- "christmas" : Will switch your lights to red, display a fire place on your TV and play Mariah Carey song.
- "halloween" : Will switch your lights to orange, display a pumpkin filed on your TV and play a scary song.
- "summer" : Will switch your lights to blue, display a beach  on your TV and play "Vamos a la playa" song.
- "easter": Will switch your lights to purple, display a kid easter animation moovie and play bell song.


### Usage:

    - Replace in the main.tf file your vault path containing your home assistant URL and API KEY 
    - Change your devices names in the main.tf file (tv_name, google_home_name and lamps_name variable).
    - Chose your favourite holiday in the "desired_holiday_mood" variable (between christmas, summer, easter and halloween)
    - run `terraform apply`
    
If you don't have all the devices, you can disable desired ones using the "enable_lamps", "enable_tv", "enable_google_home" booleans variable.


The module documentation is in the README.md in the "holiday_mood" folder.
