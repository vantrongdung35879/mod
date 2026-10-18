.class public Lcom/centauri/oversea/comm/MTimer;
.super Ljava/lang/Object;
.source "MTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/comm/MTimer$TimerEvent;
    }
.end annotation


# static fields
.field public static final GW_FIRST_SCREEN_SHOWDIALOG:Ljava/lang/String; = "gw_first_screen_showdialog"

.field public static final GW_PROCESS_INIT:Ljava/lang/String; = "gw_init"

.field public static final GW_PROCESS_PAY:Ljava/lang/String; = "gw_pay"

.field public static final GW_PROCESS_POSTPAY:Ljava/lang/String; = "gw_postpay"

.field public static final GW_PROCESS_PREPAY:Ljava/lang/String; = "gw_prepay"

.field public static final GW_PROCESS_SHOW_DIALOG:Ljava/lang/String; = "gw_showdialog"

.field public static final SDK_PROCESS_ACTIVITY:Ljava/lang/String; = "start_proxy_activity"

.field public static final SDK_PROCESS_SHOWLOADING:Ljava/lang/String; = "show_loading"

.field public static final SDK_WEBVIEW_DOM_LOAD:Ljava/lang/String; = "webview_dom_load"

.field public static final SDK_WEBVIEW_LOAD:Ljava/lang/String; = "webview_load"

.field public static final SDK_WEBVIEW_PAGE_LOAD:Ljava/lang/String; = "page_load"

.field public static final SDK_WEBVIEW_PROCESS_LOAD:Ljava/lang/String; = "process_load"

.field public static final TAG:Ljava/lang/String; = "MTimer"

.field private static tRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/centauri/oversea/comm/MTimer$TimerEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/centauri/oversea/comm/MTimer;->tRecords:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static duration(Ljava/lang/String;)J
    .locals 3

    .line 76
    sget-object v0, Lcom/centauri/oversea/comm/MTimer;->tRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/centauri/oversea/comm/MTimer$TimerEvent;

    if-eqz v0, :cond_0

    .line 78
    iget-wide v0, v0, Lcom/centauri/oversea/comm/MTimer$TimerEvent;->duration:J

    .line 79
    sget-object v2, Lcom/centauri/oversea/comm/MTimer;->tRecords:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 82
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " duration: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "MTimer"

    invoke-static {v2, p0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public static start(Ljava/lang/String;)V
    .locals 3

    .line 44
    new-instance v0, Lcom/centauri/oversea/comm/MTimer$TimerEvent;

    invoke-direct {v0}, Lcom/centauri/oversea/comm/MTimer$TimerEvent;-><init>()V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/centauri/oversea/comm/MTimer$TimerEvent;->startTime:J

    .line 46
    sget-object v1, Lcom/centauri/oversea/comm/MTimer;->tRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static stop(Ljava/lang/String;)J
    .locals 7

    .line 56
    sget-object v0, Lcom/centauri/oversea/comm/MTimer;->tRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/centauri/oversea/comm/MTimer$TimerEvent;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/centauri/oversea/comm/MTimer$TimerEvent;->startTime:J

    sub-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-lez p0, :cond_0

    move-wide v1, v3

    .line 59
    :cond_0
    iput-wide v1, v0, Lcom/centauri/oversea/comm/MTimer$TimerEvent;->duration:J

    .line 60
    iget-wide v0, v0, Lcom/centauri/oversea/comm/MTimer$TimerEvent;->duration:J

    return-wide v0

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is missing"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MTimer"

    invoke-static {v0, p0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method
