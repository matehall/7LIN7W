postOffice := Object clone
postOffice packageSender := method(call sender)
postOffice messageTarget := method(call target)
postOffice messageArgs := method(call message arguments)
postOffice messageName := method(call message name)

mailer := Object clone
mailer deliver := method(postOffice packageSender)

mailer deliver println

postOffice messageTarget println
postOffice messageArgs("Arbas",0) println
postOffice messageName println

unless := method((call sender doMessage(call message argAt(0)))\
ifFalse(call sender doMessage(call message argAt(1)))\
ifTrue(call sender doMessage(call message argAt(2))))

unless(1 == 2, write("One is not two\n" ), write("one is two\n" ))
