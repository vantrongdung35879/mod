.class public Lcom/tencent/ngame/utility/CalendarReminderUtil;
.super Ljava/lang/Object;
.source "CalendarReminderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;,
        Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;
    }
.end annotation


# static fields
.field private static final CALENDER_EVENT_URL:Ljava/lang/String; = "content://com.android.calendar/events"

.field private static final CALENDER_REMINDER_URL:Ljava/lang/String; = "content://com.android.calendar/reminders"

.field private static final CALENDER_URL:Ljava/lang/String; = "content://com.android.calendar/calendars"

.field private static final CODE_CALENDAR_REMINDER_ACTIVITY_NULL:I = 0x14

.field private static final CODE_CALENDAR_REMINDER_CALENDER_EVENT:I = 0x16

.field private static final CODE_CALENDAR_REMINDER_CALENDER_REMINDER:I = 0x17

.field private static final CODE_CALENDAR_REMINDER_CHECK_AND_ADD_CALENDAR_ACCOUNT:I = 0x15

.field private static final CODE_CALENDAR_REMINDER_PERMISSION_CANCEL:I = 0xb

.field private static final CODE_CALENDAR_REMINDER_PERMISSION_DENIED:I = 0xc

.field private static final PERMS:[Ljava/lang/String;

.field private static final REQUEST_PERMISSION_CODE:I = 0x20220222

.field private static final TAG:Ljava/lang/String; = "CalendarReminderUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-string v0, "android.permission.READ_CALENDAR"

    const-string v1, "android.permission.WRITE_CALENDAR"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/ngame/utility/CalendarReminderUtil;->PERMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/tencent/ngame/utility/CalendarReminderUtil;->PERMS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/tencent/ngame/utility/CalendarReminderUtil;->isGrantedPermission(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/tencent/ngame/utility/CalendarReminderUtil;->isDeniedPermission(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static addCalendarAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "name",
            "color"
        }
    .end annotation

    .line 252
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 253
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 254
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v2, "account_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v3, "account_type"

    const-string v4, "com.android.exchange"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v5, "calendar_displayName"

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 258
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "visible"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v6, "calendar_color"

    invoke-virtual {v1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 p2, 0x2bc

    .line 260
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v6, "calendar_access_level"

    invoke-virtual {v1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    const-string/jumbo p2, "sync_events"

    invoke-virtual {v1, p2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string p2, "calendar_timezone"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string p2, "ownerAccount"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 264
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "canOrganizerRespond"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    const-string p2, "content://com.android.calendar/calendars"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 267
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "caller_is_syncadapter"

    const-string/jumbo v5, "true"

    .line 268
    invoke-virtual {p2, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 269
    invoke-virtual {p2, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 270
    invoke-virtual {p1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, -0x1

    goto :goto_0

    .line 274
    :cond_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static addCalendarEvent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "name",
            "color",
            "title",
            "description",
            "startDate",
            "endDate",
            "alarmDate",
            "isAllDay",
            "listener"
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v9, p8

    move-object/from16 v10, p9

    .line 111
    sget-object v12, Lcom/tencent/ngame/utility/CalendarReminderUtil;->PERMS:[Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/tencent/ngame/utility/CalendarReminderUtil;->isGrantedPermission(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x17

    if-nez v0, :cond_0

    .line 112
    const-string v0, "CalendarReminderUtils"

    const-string v2, "addCalendarEvent: request permission."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 115
    new-instance v13, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;)V

    invoke-static {v13}, Lcom/tencent/ngame/utility/SGameUtility;->setPermissionListener(Lcom/tencent/ngame/utility/SGameUtility$PermissionListener;)V

    const v0, 0x20220222

    .line 118
    invoke-static {v11, v12, v0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 123
    :cond_0
    invoke-static/range {p0 .. p2}, Lcom/tencent/ngame/utility/CalendarReminderUtil;->checkAndAddCalendarAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x15

    .line 126
    const-string v1, "add account fail."

    invoke-interface {v10, v0, v1}, Lcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;->onResult(ILjava/lang/String;)V

    return-void

    :cond_1
    move-object/from16 v2, p5

    .line 134
    invoke-static {v2, v9}, Lcom/tencent/ngame/utility/CalendarReminderUtil;->getTime(Ljava/lang/String;Z)J

    move-result-wide v2

    move-object/from16 v4, p6

    .line 135
    invoke-static {v4, v9}, Lcom/tencent/ngame/utility/CalendarReminderUtil;->getTime(Ljava/lang/String;Z)J

    move-result-wide v4

    .line 136
    invoke-static/range {p7 .. p8}, Lcom/tencent/ngame/utility/CalendarReminderUtil;->getTime(Ljava/lang/String;Z)J

    move-result-wide v6

    const/4 v8, 0x1

    const/4 v12, 0x0

    if-eqz v9, :cond_2

    .line 142
    const-string v13, "UTC"

    invoke-static {v13}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v14

    .line 143
    invoke-virtual {v14, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xb

    .line 144
    invoke-virtual {v14, v2, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 145
    invoke-virtual {v14, v3, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0xd

    .line 146
    invoke-virtual {v14, v15, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 147
    invoke-virtual {v14, v1, v12}, Ljava/util/Calendar;->set(II)V

    .line 149
    invoke-static {v13}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v13

    .line 150
    invoke-virtual {v13, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 151
    invoke-virtual {v13, v2, v12}, Ljava/util/Calendar;->set(II)V

    .line 152
    invoke-virtual {v13, v3, v12}, Ljava/util/Calendar;->set(II)V

    .line 153
    invoke-virtual {v13, v15, v12}, Ljava/util/Calendar;->set(II)V

    .line 154
    invoke-virtual {v13, v1, v12}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    .line 155
    invoke-virtual {v13, v1, v8}, Ljava/util/Calendar;->add(II)V

    .line 157
    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 158
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 161
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 162
    const-string/jumbo v13, "title"

    move-object/from16 v14, p3

    invoke-virtual {v1, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v13, "description"

    move-object/from16 v14, p4

    invoke-virtual {v1, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v13, "calendar_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v9, "allDay"

    invoke-virtual {v1, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v0, "dtstart"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    const-string v0, "dtend"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v0, "hasAlarm"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v4, "eventTimezone"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "content://com.android.calendar/events"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    const/16 v0, 0x16

    .line 178
    const-string v1, "add calender event fail."

    invoke-interface {v10, v0, v1}, Lcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;->onResult(ILjava/lang/String;)V

    return-void

    :cond_3
    sub-long/2addr v2, v6

    const-wide/16 v4, 0x3e8

    .line 184
    div-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    .line 186
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 187
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v4, "event_id"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    const-string v0, "minutes"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    const-string v0, "method"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://com.android.calendar/reminders"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_4

    .line 196
    const-string v0, "add calender reminder fail."

    const/16 v1, 0x17

    invoke-interface {v10, v1, v0}, Lcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;->onResult(ILjava/lang/String;)V

    return-void

    .line 200
    :cond_4
    const-string/jumbo v0, "success"

    invoke-interface {v10, v12, v0}, Lcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;->onResult(ILjava/lang/String;)V

    return-void
.end method

.method private static checkAndAddCalendarAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "name",
            "color"
        }
    .end annotation

    .line 208
    invoke-static {p0, p1}, Lcom/tencent/ngame/utility/CalendarReminderUtil;->checkCalendarAccount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 212
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/tencent/ngame/utility/CalendarReminderUtil;->addCalendarAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_1

    .line 214
    invoke-static {p0, p1}, Lcom/tencent/ngame/utility/CalendarReminderUtil;->checkCalendarAccount(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static checkCalendarAccount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "name"
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "content://com.android.calendar/calendars"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_5

    .line 229
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 231
    :cond_0
    const-string v1, "name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    const-string p1, "_id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 242
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return p1

    .line 235
    :cond_2
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 239
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    .line 242
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0

    :goto_0
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_4
    throw p1

    :cond_5
    :goto_1
    if-eqz p0, :cond_6

    .line 242
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    return v0
.end method

.method public static getStrTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cc_time"
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 283
    new-instance p0, Ljava/util/Date;

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTime(Ljava/lang/String;Z)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "user_time",
            "useUTC"
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 293
    const-string p1, "UTC"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    const-wide/16 v1, 0x0

    .line 298
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 299
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-wide v1

    :catch_0
    move-exception p0

    .line 301
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    return-wide v1
.end method

.method private static varargs isDeniedPermission(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "perms"
        }
    .end annotation

    .line 333
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 334
    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static varargs isGrantedPermission(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "perms"
        }
    .end annotation

    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 317
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    .line 318
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
