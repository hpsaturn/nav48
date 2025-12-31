---
layout: post
title:  "Nav48 - Rally Terratrip"
imghead: nav48_collage.jpg
date:   2004-01-01
excerpt: "Rally computer implementation on a Hp48 calculator and Motorola microcontroller."
project: true
tag:
- Assembler
- C++
- IoT
- Hp48
- Hardware
- Motorola
comments: false
---

## Technologies

* `Motorola 68HC908`: Firmware developed in assembler on a Motorola `MC68HC908GP32` with a few code on `C`.<br/>
* `CodeWarrior`: IDE, compiler, debugger and in-circuit programming.
* `Hp48`: Navigation software using a `Hewlett Packard Hp48` interfaced via Serial connection.<br/>
* `Jazz library`: Low level IDE, compiler and debugger for `SysRPL` and `Hp48 Saturn CPU assembler`.
   
## Target

Rally computer for amateur and professional rally teams. Using a Hp48 calculator, the rally team enter the race variables and the software give the next information:

 - `Current position`, from odometer interfaced from car to hardware device with a switch sensor or hall effect sensor.
 - `Target position`, calculated for keep car synced.
 - `Distance offset`, calculated from current position and race data.
 - `Current track`, from race information.
 - `Multiple time mode`, track time, race time, start and end time, etc.
 
---

## Nav48 app

{% capture images %}
  {{ site.url }}/assets/img/nav48_00.jpg
  {{ site.url }}/assets/img/nav48_01.jpg
  {{ site.url }}/assets/img/nav48_02.jpg
  {{ site.url }}/assets/img/nav48_03.jpg
  {{ site.url }}/assets/img/nav48_04.jpg
  {{ site.url }}/assets/img/nav48_05.jpg
{% endcapture %}
{% include gallery images=images caption="Hewlett Packard Hp48 application Nav48 screenshots" cols=3 %}

## Nav48 Hardware

{% capture images %}
  {{ site.url }}/assets/img/nav48_hardware00.jpg
  {{ site.url }}/assets/img/nav48_hardware02.jpg
  {{ site.url }}/assets/img/nav48_hardware05.jpg
  {{ site.url }}/assets/img/nav48_hardware07.jpg
{% endcapture %}
{% include gallery images=images caption="Nav48 hardware photos" cols=3 %}

## Awards

With this hardware and software that I did, my team won around 8 trophies and two championship on Bogotá on three years in two modalities, 4x4 and regularity.

{% capture images %}
  {{ site.url }}/assets/img/nav48_1280_collage.jpg
{% endcapture %}
{% include gallery images=images cols=1 %}
