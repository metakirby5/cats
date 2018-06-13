# cats

Scripts for taking care of cats.

## notify.sh, rotate.sh

Cron scripts for alerting users in rotations to feed the cats.
Allows rotating on-call and sending reminders to on-call.

Fill `./users.txt` in this directory with emails in the following format:

```
User1 <some@email.com>
User2 <another@email.com>
User3 <one_more@email.com>
```

Then set up cron as follows:

```
# Reminders at 9:50 am and 9:50 pm.
50 9 * * * /path/to/cats/notify.sh "Please feed cats in 10 mins!"
50 21 * * * /path/to/cats/notify.sh "Please feed cats in 10 mins!"

# Rotate users every 2nd calendar day.
0 0 */2 * * /path/to/cats/rotate.sh
```
