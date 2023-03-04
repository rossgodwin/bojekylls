---
layout: theme-site/blog/post
author-id: 1
title: Small Office Network Update
description: Some simple things that can be done to upgrade a small office or home network.
include-seo: true
image-path: assets/this-site/images/blog/posts/small-office-network-update/banner.png
image-by-name: 200 Degrees
image-credit-url: https://pixabay.com/users/200degrees-2051452/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=1989339
categories: [information-technology]
tags: [information technology, networking, small office]
date: 2019-10-1
thumbnail-gallery-width: 450px
galleries:
  - id: office-it-update-photos
    type: thumbnails
    images:
      - thumbnail_url: assets/this-site/images/blog/posts/small-office-network-update/001-th.jpg
        url: assets/this-site/images/blog/posts/small-office-network-update/001.jpg
        alt: "network room 1"
        html_content: "This is a before photo of the network room. What a mess!"
      - thumbnail_url: assets/this-site/images/blog/posts/small-office-network-update/002-th.jpg
        url: assets/this-site/images/blog/posts/small-office-network-update/002.jpg
        alt: "network room 2"
        html_content: "New server rack is up and 4 offices hard wired."
      - thumbnail_url: assets/this-site/images/blog/posts/small-office-network-update/003-th.jpg
        url: assets/this-site/images/blog/posts/small-office-network-update/003.jpg
        alt: "network room 3"
        html_content: "Close up of the rack in progress. Still a ways to go."
      - thumbnail_url: assets/this-site/images/blog/posts/small-office-network-update/004-th.jpg
        url: assets/this-site/images/blog/posts/small-office-network-update/004.jpg
        alt: "network room 4"
        html_content: "Finished!"
      - thumbnail_url: assets/this-site/images/blog/posts/small-office-network-update/005-th.jpg
        url: assets/this-site/images/blog/posts/small-office-network-update/005.jpg
        alt: "network room 5"
        html_content: "Finished! For now."
      - thumbnail_url: assets/this-site/images/blog/posts/small-office-network-update/006-th.jpg
        url: assets/this-site/images/blog/posts/small-office-network-update/006.jpg
        alt: "network room 6"
        html_content: "Close up of the new rack."
        class: custom-mfp-horizontal
---

Here are a few things that I did to do upgrade a small office network for a company that I worked for. The goal was to improve the performance, reliability, scalability and security of the network at an affordable cost.

{:toc}

### Internet Service Provider

The office was located in a small office park and was using shared internet access with several other businesses in surrounding office suites. Internet download speeds would slow as neighboring businesses began arriving to work in the mornings and continue to degrade throughout the day as the load increased. Download speeds would not come close to reaching the speeds advertised that  not close to reaching the 100Mbps that the company was paying for. This office complex was fortunate, in that, a local ISP provider was expanding their services to the area and offering dedicate fiber. This was a simple way to improve the office internet experience and being a local provider the customer service was much better.

### Connectivity

The desktop workstations were using wireless connectivity connecting to 2 UniFi AP-AC-Pro wireless access points. This opened the door for bottlenecking and latency issues and other potentially unreliabilities that can come with Wifi. Updating desktop wireless card drivers helped performance but was not a long-term fixed. To address this, I hard wired each office and access point. I chose a Cat6a ethernet product by <a href="https://www.monoprice.com/product?c_id=301&cp_id=30103&cs_id=3010303&p_id=18593&seq=1&format=2" target="_blank">Monoprice</a> that was rated F/UTP which wraps the 23AWG wire in a foil shield that acts as a barrier preventing interference and data signal leaks.

To organize the cable feeds coming in to the server closet from the access points, I went with a <a href="https://www.cablematters.com/pc-445-162-rackmount-or-wallmount-24-port-cat6a-shielded-rj45-patch-panel-with-jack-shutter.aspx" target="_blank">24-port Cable Matters rackmount Cat6a patch panel</a>. <a href="https://cat5ecableguy.com/inc/sdetail/238566" target="_blank">Surface mount boxes</a> were used at each access point to provide ethernet ports. These are an option if the cabling is not fished through the walls. Not the ideal solution but if your office is not wired ...

This was a more timely and labor intensive upgrade, but one that I think was worth it for a office environment.

### Consolidate, Organize and Upgrade Networking Equipment

The closet containing the computer and networking equipment was a mess with components laying on the floor. This was unsightly, hard environment to work in and identify problems and put the network at risk should someone go in there, trip and break a critical component. As part of a comprehensive cleanup and reorganizing, I upgraded and consolidated hardware where possible and organized equipment in a server rack.

For the wall mounted rack, I chose the <a href="https://www.startech.com/Server-Management/Racks/6U-14in-Deep-Wall-Mounting-Bracket-for-Patch-Panel~WALLMOUNT6" target="_blank">StarTech.com 6U wall mount network equipment rack</a>. This meant that any network components that I purchased from here out would need to be compatible with a 19 inch rack.

There were a couple of network switches that were daisy-chained together. While there is nothing wrong with doing this, I wanted to consolidate switches and organize equipment in a rack. I purchased a <a href="https://www.cisco.com/c/en/us/products/switches/110-series-unmanaged-switches/index.html" target="_blank">Cisco SG110 24-Port unmanaged PoE network switch</a>, which provided 12 PoE ports and 12 non-PoE ports.

I purchased a new power supply by <a href="https://www.cyberpowersystems.com/product/ups/smart-app-lcd/or500lcdrm1u/" target="_blank">CypberPower</a> that would fit in the new wall rack.

Another upgrade I made was purchasing a <a href="https://www.ui.com/unifi-routing/usg" target="_blank">UniFi Security Gateway</a> by Ubiquiti Networks to replace a Cisco Meraki MX60 4 port router.

### Data Storage

The "file server" was a old Windows desktop that had shared folders enabled where project files resided and access by employees in the office. Backup was done using an external hard drive and Carbonite. I purchased a <a href="https://www.qnap.com/en-us/product/tr-002" target="_blank">QNAP TR-002</a> to serve as the network access storage for company files. I configured RAID 1 on this device so that should one of drives fail, the controller could use either the data drive or the mirror drive for data recovery and continuous operation. For additional data redundancy and offsite data backup, I repurposed a Windows workstation we had to pull data from the NAS device periodically throughout the day (using <a href="https://www.2brightsparks.com/" target="_blank">SyncBack</a>) and had Carbonite installed on this machine offsite cloud backup.

