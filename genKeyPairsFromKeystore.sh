## keytool -list -keystore madv360.keystore 
keystore=$1
alias=$2
keytool -export -keystore $keystore -alias $alias -file public.cer
keytool -importkeystore -srckeystore $keystore -destkeystore private.pkcs -srcstoretype JKS -deststoretype PKCS12 -alias $alias 
openssl pkcs12 -in private.pkcs -out private.pem
