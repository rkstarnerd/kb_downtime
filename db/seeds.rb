# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.create(question: 'What do I do when there is no greeting associated with the VDN for compliance?', answer: 'Give the generic greeting, ask the caller for the Company name, phone number dialed, and type of report the caller is filing')
Article.create(question: 'What is the generic compliance greeting?', answer: 'Thank you for calling The Network, this is _____. What ompany are you calling in reference to?')
Article.create(vdn: '99999', question: 'What do I do when the VDN is invalid and there is no response from the caller?', answer: 'Enter 99999 in the VDN field and complete a GI for the call.')
Article.create(question: 'How do I complete a GI for an unknown client and there is no response?', answer: 'Choose Unknown Client in the Client drop-down, enter UNK in the appropriate fields, choose No Response for the call type, and enter your Description.')
Article.create(vdn: '225XXX', question: 'I received a call from VDN 225XXX but it does not have a greeting, what do I do?', answer: 'Calls with a VDN beginning with 225XXX that do not have a greeting are numbers that are reserved for future clients and have not yet been assigned.  Any calls you receive on this line will be a test call made by our vendor to ensure connection. The test calls may be made by an automated system, and most of the time you will not hear anyone on the other end.  However, occasionally a live person may answer and identify themselves with Gxxxxx Txxxxxx.  Please treat these as generic test calls and log them as GIs.')
Article.create(question: 'What do I do when a caller requests to send their report via fax, email, or US mail?', answer: 'First, look for specific instructions in the Greeting, TIPS, Product Help and/or Special Instructions.  If no instructions exist, we are to take the report via telephone.  We should only provide TNW\'s fax, email, or mailing address if system instructions allow us to provide the information.')
Article.create(client_name: 'Kxxxxxxx Cxxxx', vdn: '2528', question: 'Do I log a GI or take a report when receiving a test call for VDN 2528?', answer: 'You must complete an incident report if the caller advises that they are making a test call.')
Article.create(vdn: '2222987', question: 'A call came on VDN 2222987, but the caller stated they are with Rxxx Axx, what do I do?', answer: 'Change the VDN to 7507 if the caller wants to file a GL, PL, or CCQ.  Change the VDN to 4499 if the caller wants to file a WC.')
Article.create(question: 'This compliance report mentions guns, bombs, bomb threats, terrorism, 9/11, terrorist threats, threats to life. Should it be escalated?', answer: 'Reports mentioning those things should be escalated regardless of the client\'s escalation criteria.')
Article.create(question: 'Does a person have to fall from a certain height in order for the code cause to be elevation?', answer: 'There is no specific height or threshold for how high the elevation must be.  If the fall is from a different level, code it as such.')