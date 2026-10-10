d=$(mktemp -d)
printf '%s' 'doppia-mandata-aggiornamento-v1
versione=0.2.32
target=darwin
arch=aarch64
formato=app
file=Doppia-Mandata-0.2.32-arm64-mac.zip
dimensione=129759267
sha256=dc50dc082c7c00b01a815c470fcbc4f6ddd0861514af9044790744e3a464a005
' > "$d/0"
printf '%s' 'doppia-mandata-aggiornamento-v1
versione=0.2.32
target=darwin
arch=x86_64
formato=app
file=Doppia-Mandata-0.2.32-mac.zip
dimensione=135434043
sha256=7360f9751366a5ebcafebf8957a8193128daf45cad8b5a75e9de1c05bae4ddaf
' > "$d/1"
printf '%s' 'doppia-mandata-aggiornamento-v1
versione=0.2.32
target=linux
arch=x86_64
formato=rpm
file=doppia-mandata-0.2.32.x86_64.rpm
dimensione=90075421
sha256=d4ac58bd7ca96db22356a5f74a90110c0b584d665b3756c6bda1637e7d21c4e3
' > "$d/2"
for i in 0 1 2; do openssl pkeyutl -sign -inkey ~/dm-firma-aggiornamenti.pem -rawin -in "$d/$i" | base64 -w0; echo; done; rm -rf "$d"
