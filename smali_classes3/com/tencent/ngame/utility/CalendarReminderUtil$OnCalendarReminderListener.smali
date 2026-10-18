.class public interface abstract Lcom/tencent/ngame/utility/CalendarReminderUtil$OnCalendarReminderListener;
.super Ljava/lang/Object;
.source "CalendarReminderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ngame/utility/CalendarReminderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCalendarReminderListener"
.end annotation


# virtual methods
.method public abstract onResult(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "message"
        }
    .end annotation
.end method
