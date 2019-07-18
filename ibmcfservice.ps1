

Set-ExecutionPolicy Bypass -Scope Process

write 'Creating IBM Service Cloudant'
ibmcloud cf create-service cloudantnosqldb Lite Cloudant -c '{\"ram_gb\":4}'

write 'Pausing for 60 seconds to let IBM Cloud provision up the cloudantnosqldb name'
start-sleep -s 60

write 'creating a binding between server and Cloudant service'
ibmcloud cf bind-service Cloudant and server

write 'creating certificates to use Cloudant with server'
ibmcloud cf create-service-key Cloudant