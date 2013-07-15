MediaPlayer.destroy_all
HelpDesk.destroy_all
Service.destroy_all
HourlyService.destroy_all


puts "Destroyed existion information"

# Create Help Desk
puts ""
puts "Creating Help Desk...."

basic = HelpDesk.create price: "?", name: "Basic", description: "Basic Help Desk provides a call-in number and troubleshooting of the node end point (screen, speakers, media player, player software, content delivery issues, and cabling back to the telecommunications device) from 8-8 EST. Once a problem is confirmed, the call is escalated to the systems integrator or network operator. There is no connectivity support, technician dispatch, or ticket tracking (other than incident number creation) with Basic Help Desk."
puts "Created Help Desk #{basic.name}"

advanced = HelpDesk.create price: "?", name: "Advanced", description: "Advanced Help Desk provides everything in the Basic Help Desk as well as 7 X 24 X 365 availability, extensive problem troubleshooting and resolution, ticket creation and tracking, standardized web-based reporting, issue escalation, and technician dispatch. Telecommunication support is included but not the telecommunication service."
puts "Created Help Desk #{advanced.name}"

premium = HelpDesk.create price: "?", name: "Premium", description: "Premium Help Desk provides everything in the Basic Help Desk and the Advanced Help Desk as well as proactive ticket management, knowledgebase article creation, vendor communication, and ad-hoc reporting."
puts "Created Help Desk #{premium.name}"

# Create Media player

android = MediaPlayer.create price: "?", name: "Android", description: "Description goes here."
puts "Created Media Player #{android.name}"

video_wall = MediaPlayer.create price: "?", name: "Video Wall", description: "Description goes here."
puts "Created Media Player #{video_wall.name}"

de7000 = MediaPlayer.create price: "?", name: "De7000", description: "Description goes here."
puts "Created Media Player #{de7000.name}"

# Create Service

edge_device_monitoring = Service.create price: "?", name: "Edge Device Monitoring", description: "Edge device monitoring provides 7 x 24 x 365 monitoring of the health of your devices. Edge devices can be monitored for CPU utilization, RAM usage, disk I/O, disk capacity, service status, process status, file size, directory size, event logs, log keywords, etc. Alerts can be provided via email and/or text messaging."
puts "Created service #{edge_device_monitoring.name}"

rma = Service.create price: "?", name: "RMA", description: "RMA services include a centralized, secure storage location for your replacement inventory. The RMA offering includes physical packaging, receiving, tracking and hardware testing of returned devices. *Cost of shipping not included."
puts "Created service #{rma.name}"

device_imaging = Service.create price: "?", name: "Device Imaging", description: "Imaging services provide master image archiving and updating, device imaging and testing after imaging is complete. Imaging does not include device specific configuration requiring a technician to log into each device, such as adding individual licenses or users. However, we will be able to add a MAC address printed on the outside of a device (or provided in a spreadsheet) to an application for provisioning included at the rate below. Allowing the device to download base media content after provisioning is also included."
puts "Created service #{device_imaging.name}"

# Create Hourly Service

content_creation = HourlyService.create price: "?", name: "Content Creation", description: "Creative services are offered for production quality digital menu boards, promotional displays, video, animation, 3D and more. We can work as autonomously or as closely as you need with internal marketing departments and agencies."
puts "Created service #{content_creation.name}"

project_management = HourlyService.create price: "?", name: "Project Management", description: "Description goes here."
puts "Created service #{project_management.name}"

content_management = HourlyService.create price: "?", name: "Content Management", description: "Content management services may have wide variations in scope. Requirements are needed to provide a more accurate price."
puts "Created service #{content_management.name}"