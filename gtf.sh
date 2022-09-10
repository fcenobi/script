#!/bin/bash --
# Encrypted shell script. https://github.com/pts/encrypt-script-bash
function die() {
  echo "fatal: $*" >&2
  exit 1
}
unset GPG_AGENT_INFO
if ! type -p gpg 2>/dev/null >&2; then
  echo 'info: gpg not found for bash-script, installing' >&2
  command sudo apt-get install gnupg
  type -p gpg 2>/dev/null >&2 || die 'gpg: command not found'
fi
unset PP EP D D1 C
unset GPGNUA
builtin setopt shwordsplit 2>/dev/null
PP='-----BEGIN PGP MESSAGE-----
 
 jA0EAwMC+Gv+j4hMGX5g0joB7u8WLHTg0eLf3Rl1IvUkIXvsYGIDLvdN3M6m0sBgvXLFHby5D+CjaTtfW7t8OdQT+ljyJgQSVjyB=6nE9
------END PGP MESSAGE-----'
D="$(GPG_AGENT_INFO= command gpg -d -q --batch --passphrase a 2>&1 <<<"$PP")"
GPGNUA='gpg -q --batch'
if test "${D##*gpg-agent is not available*
unencumbered}" = ""; then
  GPGNUA='gpg --no-use-agent -q --batch'
  D="$(command $GPGNUA -d --passphrase a <<<"$PP")"
fi
if test "$D" != unencumbered; then
  echo "$D" >&2
  die 'gpg -d --passphrase a is broken'
fi
echo -n "enter bash-script passphrase: " >&2
read -s PP </dev/tty
echo >&2
test "$PP" || exit 1
D=
for EP in \
'jA0ECQMCNkJZU/MiLhz/0oMBj7IQX66beAqMYdTcgCRMgZaJzekxBx2TBggcHd8C9KEpM9E46XllIeRmrhamBoUBaxLpgfR4SfakdXY8B+F+aP6suf8l5NqQ8j6NM8bwVQH+hgoDwojGRpQIUhvMzkxoEhLdH24p4RYPYhdzXSPRxlDlRFD8WjJm0PFs6VowXppapA===WsgN' \
; do
  read D < <(command $GPGNUA -d --passphrase-file <(echo -n "$PP") 2>/dev/null <<<"-----BEGIN PGP MESSAGE-----

$EP
-----END PGP MESSAGE-----")
  test "$?" = 0 && test "${D%.}" != "$D" && D="${D%.}" && break
  D=
done
test "$D" || die 'incorrect bash-script passphrase'
C="unset C;$(command $GPGNUA -d --passphrase-file <(echo -n "$D") <<'HEREND'
-----BEGIN PGP MESSAGE-----

jAwECQECoRkIVd8N7TLS6QF1HdM4e7n04e5fc5OvwaTXRUe23Z3JTrHKMxAwL9xx
TNlOL0zTbkCqlUmBOEJXCb2kr19wYoDkSUhwcxfLaOLQz0pqjiey3fNWKdcbXwHk
0egsIoxevI5BSHZTvcKALSByjkYE3BmI5UFPJFPNxltUiDGWTmv5O03H51d8VTnq
qMM31a2M71N5DR354nnpkFETct5Y9uh86vYuOgSBgjW0p9arKlDt3J3gLu66v2tQ
J3bYF2ZCof1XLsQZ4UAyLF3GFyXDuidlocN1I9dZMXWihODVNBZR9DQmu6bU6FKs
7eUUj4igj1EHjoiXEiPZuFreoooR5dqvvD98V47I/RmGBYk1HXoI6qJINakKyJFQ
zFUsptHWGX7PpTLvdZO3Oydbv8nJs4JrHmGcXbh8ITUFiWBsLuFkNbF4xrvLj6iK
2SymGMhEkknuIqPtqDdI86YsJliJ57OEQxnKhARXkJ1Kv9slRt2vtdgc38NBklgj
O9SbtS6LerF1Lwo1sXjlfUKx35PB1h8YA76Qk3Yei58u6fmQTKwqPZ4Ym0QCFx9o
7UnUSetvUpR7ppa8UkFH1buuz6E8fmB8hWwdBNqRsc/uJAb4Ooh/OGdBV93ciy7F
LK+6JlPMy/2D8dyLp9dAcPFtKvNBxOhhQs3Zq6iJxPNs4mkD8ClzK3lhfKhoiT/L
wKSdocAteKl+YmTHTpBkVpVUDKIisEE302lKYR67jep3zb5X8t5pEM3V+ltb3HLz
JHNbxgTwfmrtuBirWJKo6qh8DEoGooQkDzS4ICcNLCbAGugESQe4a/h0Hd0alJVR
f4n4DBAOTpk46wfu66Q4J4KpKkRbt6vlxbNKFWxL6CwxhleJha9y8ACmVldUEL/p
tZZuePGVUaoLSpQstKznvfRh3RYdFPntSJSXteVGE7et5CkQTi+31a3MAFusgp/n
uwG9Gyz74eqfPPMJ1NhoeS6RAQmQdKCNLYjkfiRZfGLgLUk9GqKqYo6e7lYqv///
6XYmIFnjrc8JlDyA+p6RpE9Pz5hPzPNbFQ/gM4sD7+Suu15frwU/BpMWo/E4R+nu
uaCZMGTMjCddc+qHyg0aZTC2hu5uDNvz0dYUqL0VM/R62Q2zh12x1/DA0+9mQjMy
tfM/vhbJjUHFqfktAZR5zLptUM1EIw==
=uQfb
-----END PGP MESSAGE-----
HEREND
)"
test "$?" = 0 || die 'decrypt failed'
unset PP EP D D1
unset -f die
eval "$C"
