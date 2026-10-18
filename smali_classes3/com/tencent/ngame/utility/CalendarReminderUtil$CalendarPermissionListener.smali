.class Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;
.super Ljava/lang/Object;
.source "CalendarReminderUtil.java"

# interfaces
.implements Lcom/tencent/ngame/utility/SGameUtility$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ngame/utility/CalendarReminderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CalendarPermissionListener"
.end annotation


# instance fields
.field final activity:Landroid/app/Activity;

.field final alarmDate:Ljava/lang/String;

.field final color:Ljava/lang/String;

.field final description:Ljava/lang/String;

.field final endDate:Ljava/lang/String;

.field final isAllDay:Z

.field final listener:Lcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;

.field final name:Ljava/lang/String;

.field final startDate:Ljava/lang/String;

.field final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;)V
    .locals 0
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

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->activity:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->name:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->color:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->title:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->description:Ljava/lang/String;

    .line 65
    iput-object p6, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->startDate:Ljava/lang/String;

    .line 66
    iput-object p7, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->endDate:Ljava/lang/String;

    .line 67
    iput-object p8, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->alarmDate:Ljava/lang/String;

    .line 68
    iput-boolean p9, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->isAllDay:Z

    .line 69
    iput-object p10, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->listener:Lcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    const p2, 0x20220222

    if-ne p1, p2, :cond_2

    .line 77
    :try_start_0
    iget-object p1, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/tencent/ngame/utility/CalendarReminderUtil;->access$000()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/ngame/utility/CalendarReminderUtil;->access$100(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->color:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->description:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->startDate:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->endDate:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->alarmDate:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->isAllDay:Z

    iget-object v9, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->listener:Lcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;

    invoke-static/range {v0 .. v9}, Lcom/tencent/ngame/utility/CalendarReminderUtil;->addCalendarEvent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/tencent/ngame/utility/CalendarReminderUtil;->access$000()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/ngame/utility/CalendarReminderUtil;->access$200(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    iget-object p1, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->listener:Lcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;

    const-string p2, "denied permission."

    const/16 p3, 0xc

    invoke-interface {p1, p3, p2}, Lcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;->onResult(ILjava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->listener:Lcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;

    const-string p2, "cancel permission."

    const/16 p3, 0xb

    invoke-interface {p1, p3, p2}, Lcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;->onResult(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    iget-object p2, p0, Lcom/tencent/ngame/utility/CalendarReminderUtil$CalendarPermissionListener;->listener:Lcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;

    const/16 p3, -0x62

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;->onResult(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
