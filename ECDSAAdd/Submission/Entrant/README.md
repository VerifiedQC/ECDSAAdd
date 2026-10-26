# Editable entrant directory

Supply `Main.lean` with declarations in namespace `ECDSAAdd.Entrant`:

- `entry : ECDSAAdd.Challenge.Entry`
- `bounds : ECDSAAdd.Challenge.Bounds`
- `certificate : ECDSAAdd.Challenge.Certificate entry bounds`

Import the protected `ECDSAAdd.Challenge.Contract`. Do not import Judge.
There is deliberately no placeholder certificate: baseline migration is separate.
Missing Main/certificate is rejected. All classical addends including infinity
are covered; the encoding and every non-I/O zero bit are fixed by the contract.
