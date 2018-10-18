#!/bin/sh
cat create.sql trigger_meetings_clash.sql trigger_meeting.sql trigger_space.sql trigger_invite.sql trigger_holidays.sql trigger_booking.sql trigger_delete.sql trigger_stay_productive.sql insert.sql | psql -h nestor2.csc.kth.se -U $1 -v user=$1
echo "*** The database has successfully been built. Connect to nestor to continue... ***"
psql rb_$1 -h nestor2.csc.kth.se -U $1